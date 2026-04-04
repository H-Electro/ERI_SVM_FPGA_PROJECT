import argparse
import json
import pickle
from pathlib import Path

import pandas as pd

from python.rf_fpga.crop_config import CROP_CODE_TO_NAME, get_crop_name_from_code

FRAC_BITS = 16
SCALE = 1 << FRAC_BITS


def saturate_signed(value, bits):
    min_val = -(1 << (bits - 1))
    max_val = (1 << (bits - 1)) - 1
    return max(min(value, max_val), min_val)


def float_to_fixed_q16_16(value):
    q = int(round(float(value) * SCALE))
    return saturate_signed(q, 32)


def signed_to_twos_hex(value, bits):
    mask = (1 << bits) - 1
    return format(value & mask, f"0{bits // 4}X")


def preprocess_row(row_df, feature_names, encoders, scaler):
    x = row_df[feature_names].copy()

    for col, enc in encoders.items():
        x[col] = enc.transform(x[col])

    x_values = x.values
    if scaler is not None:
        x_values = scaler.transform(x_values)

    x_values = x_values[0]
    return [float_to_fixed_q16_16(v) for v in x_values]


def simulate_quantized_forest(q_features, forest_dump):
    acc = 0
    nodes = forest_dump["nodes"]
    tree_bases = forest_dump["tree_bases"]
    num_trees = forest_dump["num_trees"]

    for tree_base in tree_bases:
        node_idx = tree_base

        while True:
            node = nodes[node_idx]
            if node["is_leaf"] == 1:
                acc += int(node["leaf_value_q"])
                break

            feat_idx = int(node["feature_idx"])
            threshold_q = int(node["threshold_q"])
            left_idx = int(node["left_idx"])
            right_idx = int(node["right_idx"])

            if int(q_features[feat_idx]) <= threshold_q:
                node_idx = left_idx
            else:
                node_idx = right_idx

    return int(acc / num_trees)


def generate_crop_tb(dataset, crop_name: str, crop_dir: Path) -> int:
    crop_dataset = dataset[dataset["Crop_Type"] == crop_name].copy().reset_index(drop=True)

    with open(crop_dir / "feature_names.json", "r", encoding="utf-8") as f:
        feature_names = json.load(f)

    with open(crop_dir / "encoders.pkl", "rb") as f:
        encoders = pickle.load(f)

    scaler = None
    scaler_path = crop_dir / "scaler.pkl"
    if scaler_path.exists():
        with open(scaler_path, "rb") as f:
            scaler = pickle.load(f)

    with open(crop_dir / "forest_dump.json", "r", encoding="utf-8") as f:
        forest_dump = json.load(f)

    num_tests = len(crop_dataset)
    with open(crop_dir / "tb_features.mem", "w", encoding="utf-8") as f_feat, open(
        crop_dir / "tb_expected.mem", "w", encoding="utf-8"
    ) as f_exp:
        for i in range(num_tests):
            row_df = crop_dataset.iloc[[i]]
            q_features = preprocess_row(row_df, feature_names, encoders, scaler)
            flat_hex = "".join(signed_to_twos_hex(v, 32) for v in reversed(q_features))
            expected_q = simulate_quantized_forest(q_features, forest_dump)
            f_feat.write(flat_hex + "\n")
            f_exp.write(signed_to_twos_hex(expected_q, 32) + "\n")

    return num_tests


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--dataset", required=True)
    parser.add_argument("--crop-code", type=int)
    parser.add_argument("--model-root", required=True)
    args = parser.parse_args()

    model_root = Path(args.model_root)
    dataset = pd.read_csv(args.dataset)

    if args.crop_code is not None:
        crop_name = get_crop_name_from_code(args.crop_code)
        count = generate_crop_tb(dataset, crop_name, model_root / crop_name)
        print(f"Generated testbench data for crop {crop_name} (code {args.crop_code}) with {count} samples")
        return

    generated = []
    for crop_code in sorted(CROP_CODE_TO_NAME):
        crop_name = CROP_CODE_TO_NAME[crop_code]
        crop_dir = model_root / crop_name
        if not (crop_dir / "forest_dump.json").exists():
            raise FileNotFoundError(f"Missing exported forest dump for {crop_name}: {crop_dir / 'forest_dump.json'}")
        count = generate_crop_tb(dataset, crop_name, crop_dir)
        generated.append(f"{crop_name}={count}")

    print("Generated testbench data for crops:", ", ".join(generated))


if __name__ == "__main__":
    main()
