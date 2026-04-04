import argparse
import json
import shutil
from pathlib import Path

from python.export_rf_to_fpga import pack_node
from python.rf_fpga.crop_config import CROP_CODE_TO_NAME

FRAC_BITS = 16
SCALE = 1 << FRAC_BITS
DATA_W = 32
NODE_W = 128
NUM_FEATURES = 18


def write_hex_lines(path: Path, values, width: int) -> None:
    with open(path, "w", encoding="utf-8") as f:
        for value in values:
            f.write(f"{int(value) & ((1 << width) - 1):0{width // 4}X}\n")


def copy_crop_assets(crop_dir: Path, generated_root: Path, crop_key: str) -> None:
    crop_generated_dir = generated_root / crop_key
    crop_generated_dir.mkdir(parents=True, exist_ok=True)
    for name in (
        "config_auto.vh",
        "forest_nodes.mem",
        "tree_bases.mem",
        "forest_dump.json",
        "tb_features.mem",
        "tb_expected.mem",
        "feature_names.json",
        "crop_info.json",
    ):
        shutil.copy2(crop_dir / name, crop_generated_dir / name)


def build_combined_assets(model_root: Path, generated_root: Path) -> None:
    generated_root.mkdir(parents=True, exist_ok=True)

    all_nodes = []
    all_tree_bases = []
    crop_tree_offsets = []
    crop_tree_counts = []
    crop_sample_offsets = []
    crop_sample_counts = []
    combined_tb_features = []
    combined_tb_expected = []

    total_nodes = 0
    total_trees = 0
    total_samples = 0

    for crop_code in sorted(CROP_CODE_TO_NAME):
        crop_name = CROP_CODE_TO_NAME[crop_code]
        crop_key = crop_name.lower()
        crop_dir = model_root / crop_name

        copy_crop_assets(crop_dir, generated_root, crop_key)

        with open(crop_dir / "forest_dump.json", "r", encoding="utf-8") as f:
            forest_dump = json.load(f)

        with open(crop_dir / "tb_features.mem", "r", encoding="utf-8") as f:
            feature_lines = [line.strip() for line in f if line.strip()]

        with open(crop_dir / "tb_expected.mem", "r", encoding="utf-8") as f:
            expected_lines = [line.strip() for line in f if line.strip()]

        if len(feature_lines) != len(expected_lines):
            raise ValueError(f"Mismatched TB data lengths for {crop_name}")

        if len(forest_dump["nodes"]) != forest_dump["num_nodes"]:
            raise ValueError(f"Mismatched node count for {crop_name}")

        crop_tree_offsets.append(total_trees)
        crop_tree_counts.append(forest_dump["num_trees"])
        crop_sample_offsets.append(total_samples)
        crop_sample_counts.append(len(feature_lines))

        rebased_nodes = []
        for node in forest_dump["nodes"]:
            is_leaf = int(node["is_leaf"])
            feature_idx = int(node["feature_idx"])
            left_idx = int(node["left_idx"])
            right_idx = int(node["right_idx"])
            threshold_q = int(node["threshold_q"])
            leaf_value_q = int(node["leaf_value_q"])

            if not is_leaf:
                left_idx += total_nodes
                right_idx += total_nodes

            rebased_nodes.append(
                pack_node(
                    is_leaf,
                    feature_idx,
                    left_idx,
                    right_idx,
                    threshold_q,
                    leaf_value_q,
                )
            )

        all_nodes.extend(rebased_nodes)
        all_tree_bases.extend(total_nodes + int(base) for base in forest_dump["tree_bases"])
        combined_tb_features.extend(feature_lines)
        combined_tb_expected.extend(expected_lines)

        total_nodes += forest_dump["num_nodes"]
        total_trees += forest_dump["num_trees"]
        total_samples += len(feature_lines)

    with open(generated_root / "forest_nodes.mem", "w", encoding="utf-8") as f:
        for node_word in all_nodes:
            f.write(node_word + "\n")

    write_hex_lines(generated_root / "tree_bases.mem", all_tree_bases, 16)
    write_hex_lines(generated_root / "crop_tree_offsets.mem", crop_tree_offsets, 16)
    write_hex_lines(generated_root / "crop_tree_counts.mem", crop_tree_counts, 16)
    write_hex_lines(generated_root / "crop_sample_offsets.mem", crop_sample_offsets, 32)
    write_hex_lines(generated_root / "crop_sample_counts.mem", crop_sample_counts, 32)

    with open(generated_root / "tb_features.mem", "w", encoding="utf-8") as f:
        for line in combined_tb_features:
            f.write(line + "\n")

    with open(generated_root / "tb_expected.mem", "w", encoding="utf-8") as f:
        for line in combined_tb_expected:
            f.write(line + "\n")

    with open(generated_root / "config_auto.vh", "w", encoding="utf-8") as f:
        f.write(f"`define RF_NUM_CROPS {len(CROP_CODE_TO_NAME)}\n")
        f.write("`define RF_CROP_SEL_W 3\n")
        f.write(f"`define RF_TOTAL_TREES {total_trees}\n")
        f.write(f"`define RF_TOTAL_NODES {total_nodes}\n")
        f.write(f"`define RF_TOTAL_TESTS {total_samples}\n")
        f.write(f"`define RF_NUM_FEATURES {NUM_FEATURES}\n")
        f.write(f"`define RF_DATA_W {DATA_W}\n")
        f.write(f"`define RF_NODE_W {NODE_W}\n")
        f.write(f"`define RF_FRAC_BITS {FRAC_BITS}\n")
        f.write(f"`define RF_SCALE {SCALE}\n")


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--model-root", required=True)
    parser.add_argument("--sim-generated-dir", required=True)
    args = parser.parse_args()

    build_combined_assets(Path(args.model_root), Path(args.sim_generated_dir))
    print(f"Prepared combined simulation assets in {args.sim_generated_dir}")


if __name__ == "__main__":
    main()
