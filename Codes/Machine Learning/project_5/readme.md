# Random Forest FPGA Inference Project

## Overview

This project now runs all crop models in one RTL simulation.
The hardware receives a `crop_type` input using the existing crop encoding:

- `0` = Cotton
- `1` = Rice
- `2` = Maize
- `3` = Potato
- `4` = Sugarcane
- `5` = Wheat

`make flow` now:

1. trains all crop models,
2. exports all crop forests,
3. generates all available test samples for every crop,
4. builds one combined simulation memory image,
5. runs one simulation that sweeps crop-by-crop automatically.

## Project Structure

```text
project_5/
|-- data/
|   `-- raw/
|       `-- crop-yield.csv
|-- python/
|   |-- train_rf_per_crop.py
|   |-- export_rf_to_fpga.py
|   |-- make_tb_data.py
|   |-- prepare_sim_assets.py
|   `-- rf_fpga/
|       |-- crop_config.py
|       `-- project_paths.py
|-- artifacts/
|   |-- models/
|   |   `-- rf_models/
|   |       `-- <CropName>/
|   |-- figures/
|   `-- logs/
|-- hardware/
|   |-- rtl/
|   |   `-- random_forest_seq.v
|   |-- tb/
|   |   `-- tb_random_forest_seq.sv
|   `-- sim/
|       |-- list.f
|       |-- run.tcl
|       `-- generated/
|           |-- config_auto.vh
|           |-- forest_nodes.mem
|           |-- tree_bases.mem
|           |-- crop_tree_offsets.mem
|           |-- crop_tree_counts.mem
|           |-- crop_sample_offsets.mem
|           |-- crop_sample_counts.mem
|           |-- tb_features.mem
|           |-- tb_expected.mem
|           |-- cotton/
|           |-- rice/
|           |-- maize/
|           |-- potato/
|           |-- sugarcane/
|           `-- wheat/
|-- Makefile
`-- run.bat
```

## Flow

Run everything with:

```bash
make flow
```

or on Windows:

```bat
run.bat
```

The testbench automatically changes `crop_type` after finishing each crop's sample range, and it uses all available samples for each crop.
