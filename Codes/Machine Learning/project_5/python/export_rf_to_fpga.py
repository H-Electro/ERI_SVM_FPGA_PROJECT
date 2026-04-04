import argparse
import json
import pickle
from pathlib import Path

from python.rf_fpga.crop_config import CROP_CODE_TO_NAME, get_crop_name_from_code

FRAC_BITS = 16
SCALE = 1 << FRAC_BITS
DATA_W = 32
NODE_W = 128


def saturate_signed(value, bits):
    min_val = -(1 << (bits - 1))
    max_val = (1 << (bits - 1)) - 1
    return max(min(value, max_val), min_val)


def float_to_fixed_q16_16(value):
    q = int(round(float(value) * SCALE))
    return saturate_signed(q, 32)


def pack_node(is_leaf, feature_idx, left_idx, right_idx, threshold_q, leaf_value_q):
    word = 0
    word |= (int(is_leaf) & 0x1) << 127
    word |= (int(feature_idx) & 0xFF) << 119
    word |= (int(left_idx) & 0xFFFF) << 103
    word |= (int(right_idx) & 0xFFFF) << 87
    word |= (int(threshold_q) & 0xFFFFFFFF) << 55
    word |= (int(leaf_value_q) & 0xFFFFFFFF) << 23
    return f"{word:032X}"


def export_model(model, out_dir: Path):
    out_dir.mkdir(parents=True, exist_ok=True)
    nodes_flat = []
    tree_bases = []
    dump_nodes = []
    global_offset = 0

    for estimator in model.estimators_:
        tree = estimator.tree_
        tree_bases.append(global_offset)

        for local_idx in range(tree.node_count):
            left_local = int(tree.children_left[local_idx])
            right_local = int(tree.children_right[local_idx])
            is_leaf = 1 if left_local == -1 and right_local == -1 else 0

            if is_leaf:
                feature_idx = 0
                left_idx = 0
                right_idx = 0
                threshold_q = 0
                leaf_value_q = float_to_fixed_q16_16(tree.value[local_idx][0][0])
            else:
                feature_idx = int(tree.feature[local_idx])
                left_idx = global_offset + left_local
                right_idx = global_offset + right_local
                threshold_q = float_to_fixed_q16_16(tree.threshold[local_idx])
                leaf_value_q = 0

            nodes_flat.append(pack_node(is_leaf, feature_idx, left_idx, right_idx, threshold_q, leaf_value_q))
            dump_nodes.append({
                "is_leaf": is_leaf,
                "feature_idx": feature_idx,
                "left_idx": left_idx,
                "right_idx": right_idx,
                "threshold_q": int(threshold_q),
                "leaf_value_q": int(leaf_value_q),
            })

        global_offset += int(tree.node_count)

    with open(out_dir / "forest_nodes.mem", "w", encoding="utf-8") as f:
        for node_word in nodes_flat:
            f.write(node_word + "\n")

    with open(out_dir / "tree_bases.mem", "w", encoding="utf-8") as f:
        for base in tree_bases:
            f.write(f"{base & 0xFFFF:04X}\n")

    with open(out_dir / "config_auto.vh", "w", encoding="utf-8") as f:
        f.write(f"`define RF_NUM_TREES {len(tree_bases)}\n")
        f.write(f"`define RF_NUM_NODES {len(nodes_flat)}\n")
        f.write(f"`define RF_DATA_W {DATA_W}\n")
        f.write(f"`define RF_NODE_W {NODE_W}\n")
        f.write(f"`define RF_FRAC_BITS {FRAC_BITS}\n")
        f.write(f"`define RF_SCALE {SCALE}\n")

    with open(out_dir / "forest_dump.json", "w", encoding="utf-8") as f:
        json.dump({
            "num_trees": len(tree_bases),
            "num_nodes": len(nodes_flat),
            "frac_bits": FRAC_BITS,
            "scale": SCALE,
            "nodes": dump_nodes,
            "tree_bases": tree_bases,
        }, f, indent=2)


def export_single_crop(crop_name: str, crop_dir: Path) -> None:
    model_path = crop_dir / "model.pkl"
    with open(model_path, "rb") as f:
        model = pickle.load(f)
    export_model(model, crop_dir)


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--crop-code", type=int)
    parser.add_argument("--model-root", required=True)
    args = parser.parse_args()

    model_root = Path(args.model_root)

    if args.crop_code is not None:
        crop_name = get_crop_name_from_code(args.crop_code)
        export_single_crop(crop_name, model_root / crop_name)
        print(f"Export completed for crop {crop_name} (code {args.crop_code})")
        return

    exported = []
    for crop_code in sorted(CROP_CODE_TO_NAME):
        crop_name = CROP_CODE_TO_NAME[crop_code]
        crop_dir = model_root / crop_name
        if not (crop_dir / "model.pkl").exists():
            raise FileNotFoundError(f"Missing trained model for {crop_name}: {crop_dir / 'model.pkl'}")
        export_single_crop(crop_name, crop_dir)
        exported.append(crop_name)

    print("Export completed for crops:", ", ".join(exported))


if __name__ == "__main__":
    main()
