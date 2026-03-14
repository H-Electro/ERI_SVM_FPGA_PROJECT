
---

# A Machine Learning Approach in FPGA/ASIC Design and Verification

### Case Study: Hardware Implementation of a Greenhouse Crop Yield Predictor

This research explores how **machine learning models can be integrated into the FPGA/ASIC design and verification flow**. The project studies how digital design and verification engineers can translate ML models into **hardware logic** and verify them using modern verification methodologies.

As a case study, the research implements a **crop yield predictor for greenhouse environments**, where environmental sensor data is processed by machine learning models and later implemented as hardware logic.

---

# Research Status

**Status:** Ongoing

**Goal**

Study how machine learning can support FPGA/ASIC development by:

* implementing ML models in hardware
* designing efficient inference architectures
* verifying ML-based hardware using SystemVerilog UVM
* applying hardware/software co-design methods

---

# Problem Statement

Machine learning is widely used in software systems, but its integration into **hardware design flows** is still evolving.

Digital and verification engineers can benefit from ML by:

* embedding predictive algorithms directly in hardware
* accelerating decision systems using FPGA or ASIC
* enabling intelligent embedded systems

This research studies a workflow where:

1. ML models are trained in Python.
2. Decision rules are extracted and translated to **Verilog hardware modules**.
3. The hardware implementation is verified using **SystemVerilog UVM**.

---

# Dataset Overview

Dataset:
Smart Farming Sensor Data for Yield Prediction

[https://www.kaggle.com/datasets/atharvasoundankar/smart-farming-sensor-data-for-yield-prediction/data](https://www.kaggle.com/datasets/atharvasoundankar/smart-farming-sensor-data-for-yield-prediction/data)

The dataset contains environmental parameters affecting crop growth. In this project, it is used to build a **greenhouse crop yield predictor**.

### Key Features

| Column Name          | Description            |
| -------------------- | ---------------------- |
| soil_moisture_%      | Soil moisture content  |
| soil_pH              | Soil pH level          |
| temperature_C        | Average temperature    |
| rainfall_mm          | Total rainfall         |
| humidity_%           | Average humidity       |
| sunlight_hours       | Average sunlight hours |
| yield_kg_per_hectare | Target crop yield      |

Only a subset of numeric features is used to simplify **hardware implementation**.

---

# Machine Learning Tools and Libraries

The ML pipeline is implemented in Python using the following libraries.

### Core Libraries

* pandas – data preprocessing
* numpy – numerical operations
* pickle – model storage
* os – file management
* struct – binary data handling

### Machine Learning Library

**scikit-learn**

Sub-packages used:

* `sklearn.model_selection`

  * train_test_split

* `sklearn.preprocessing`

  * LabelEncoder
  * MinMaxScaler

* `sklearn.tree`

  * DecisionTreeRegressor
  * export_text
  * _tree

These tools are used for **data analysis, training ML models, and extracting decision rules**.

---

# Hardware Design Approach

The models used include:

* Decision Tree Regressor
* Random Forest (software reference)

Design flow:

1. Train ML models in Python.
2. Extract decision rules from the trained model.
3. Convert rules into **Verilog logic modules**.
4. Implement the design on **FPGA hardware**.

Decision nodes are mapped to **comparators, control logic, and arithmetic operations**, creating a hardware inference engine.

The design also explores:

* parameterized hardware modules
* LUT-based decision logic
* FPGA resource optimization

---

# Verification Methodology

![Verification Strategy](https://github.com/user-attachments/assets/f903a030-1ab2-46d5-91e8-7e682af902c2)

The hardware design is verified using a **SystemVerilog UVM verification environment**.

Verification includes:

* stimulus generation using dataset samples
* randomized testing
* scoreboard comparison with the Python reference model
* coverage of all decision paths

The goal is to ensure **hardware predictions match software model results**.

---

# Impact for Digital and Verification Engineers

This research shows how machine learning can be integrated into traditional hardware development.

**Digital Design Engineers**

* translate ML algorithms into hardware architectures
* design FPGA/ASIC inference engines
* optimize hardware for ML workloads

**Verification Engineers**

* verify algorithmic hardware systems
* use software models as reference in UVM scoreboards
* develop verification strategies for ML accelerators

---
# How to Run the Project

The project has two main parts: the **Machine Learning pipeline** and the **FPGA flow**.

## Machine Learning

Navigate to the ML project directory:

```
Codes\Machine Learning\project_2
```

Create the environment and run the training pipeline:

```
make env
make run
```

This will preprocess the dataset, train the model, and generate outputs used by the hardware implementation.

---

## FPGA Flow

Navigate to the FPGA scripts directory:

```
Codes\FPGA Flow\scripts
```

Run the script depending on your operating system.

**Windows**

```
run.bat
```

**Linux**

```
./run.sh
```

This will start the FPGA simulation and verification flow.

---

# Project Structure

```
Project
│
├── Docs
│   └── presentations and documentation
│
└── Codes
    ├── Machine Learning
    └── FPGA Flow
```

**Docs** contains project presentations and documentation.
**Codes** contains the machine learning pipeline and the FPGA implementation.

---

# Authors

Ali Adel
[ali.adel@email.com](mailto:ali.adel@email.com)

Hazem Alaa
[https://github.com/H-Electro](https://github.com/H-Electro)

Advisor
Dr. Heba Draz

Course
Hardware/Software Co-Design – ECIP Internship Program

Institute
Electronics Research Institute

[https://eri.sci.eg](https://eri.sci.eg)

---

# References

[1] IEEE Std 1800-2017 SystemVerilog Standard
[https://rfsoc.mit.edu/6S965/_static/F24/documentation/1800%202017.pdf](https://rfsoc.mit.edu/6S965/_static/F24/documentation/1800%202017.pdf)

[2] Verification Academy – UVM Runtime Phases
[https://verificationacademy.com/topics/uvm-universal-verification-methodology/functional-verification-of-digital-logic](https://verificationacademy.com/topics/uvm-universal-verification-methodology/functional-verification-of-digital-logic)

[3] Random Forest
[https://en.wikipedia.org/wiki/Random_forest](https://en.wikipedia.org/wiki/Random_forest)

[4] Decision Tree Example
[https://www.displayr.com/what-is-a-decision-tree](https://www.displayr.com/what-is-a-decision-tree)

[5] Smart Farming Sensor Data Dataset
[https://www.kaggle.com/datasets/atharvasoundankar/smart-farming-sensor-data-for-yield-prediction/data](https://www.kaggle.com/datasets/atharvasoundankar/smart-farming-sensor-data-for-yield-prediction/data)

[6] SystemVerilog UVM Guide
[https://www.accellera.org/downloads/standards/uvm](https://www.accellera.org/downloads/standards/uvm)

[7] FPGA Design Tools
[https://www.xilinx.com/products/design-tools.html](https://www.xilinx.com/products/design-tools.html)

[8] Round to Even
[https://blogs.sas.com/content/iml/2019/11/11/round-to-even.html](https://blogs.sas.com/content/iml/2019/11/11/round-to-even.html)

[9] IEEE-754 Floating Point Numbers
[https://www.geeksforgeeks.org/computer-organization-architecture/ieee-standard-754-floating-point-numbers](https://www.geeksforgeeks.org/computer-organization-architecture/ieee-standard-754-floating-point-numbers)

[10] Computer Architecture and Organization
[https://pages.cs.wisc.edu/~david](https://pages.cs.wisc.edu/~david)

[11] Hardware/Software Co-Design Process
[https://resources.altium.com/p/whats-hardwaresoftware-co-design-process](https://resources.altium.com/p/whats-hardwaresoftware-co-design-process)

[12] Machine Learning
[https://en.wikipedia.org/wiki/Machine_learning](https://en.wikipedia.org/wiki/Machine_learning)

[13] FPU Float to Int Implementation
[https://github.com/dawsonjon/fpu/tree/master/float_to_int](https://github.com/dawsonjon/fpu/tree/master/float_to_int)

[14] IEEE-754 FPU Repository
[https://github.com/akilm/FPU-IEEE-754/tree/main](https://github.com/akilm/FPU-IEEE-754/tree/main)

[15] Decision Tree + LUT for FPGA
[https://github.com/Arif-miad/crop-yield-prediction-app/blob/main/requirements.txt](https://github.com/Arif-miad/crop-yield-prediction-app/blob/main/requirements.txt)

[16] Smart Crop Recommendation Dataset Code
[https://www.kaggle.com/datasets/miadul/smart-crop-recommendation-dataset/code](https://www.kaggle.com/datasets/miadul/smart-crop-recommendation-dataset/code)

---
