# Handover Analysis Report

## Project Summary
- Dataset file: `datasets/cellular_handover_dataset.csv`
- Total samples: 10570
- Handover samples: 535
- Non-handover samples: 10035
- Accuracy: 0.872848
- F1-score: 0.381215
- ROC-AUC: 0.894389
- MSE: 0.103923
- R2: -1.162673

## Original Dataset Features And Meaning
- `Timestamp`: Measurement time for each network sample.
- `DeviceID`: Unique device identifier for the phone or modem.
- `deviceMake`: Device manufacturer, such as Samsung.
- `deviceModel`: Specific device model.
- `Network provi.`: Mobile network provider/operator.
- `NetworkType`: Access technology, such as LTE (4G).
- `RSRP`: Reference Signal Received Power, a key signal strength indicator.
- `RSRQ`: Reference Signal Received Quality, showing radio link quality.
- `SINR`: Signal-to-Interference-plus-Noise Ratio, showing signal clarity.
- `PCI`: Physical Cell Identity, which identifies the serving cell.
- `Downlink(Mbps)`: Download throughput measured in Mbps.
- `Uplink(Mbps)`: Upload throughput measured in Mbps.
- `Velocity(km/h)`: Estimated user speed.
- `Latitude`: Geographic latitude of the measurement point.
- `Longitude`: Geographic longitude of the measurement point.

## Features Created By The Code
- `Handover`: Target label created by comparing the current PCI with the next PCI. If the PCI changes, the row is marked as a handover event.
- `hour`: Hour extracted from the timestamp to capture daily usage and mobility patterns.
- `minute`: Minute extracted from the timestamp to preserve short-term timing information.
- `RSRP_lag1`: Previous-sample RSRP value. Helps the model see short-term signal trend instead of only the current point.
- `RSRQ_lag1`: Previous-sample RSRQ value. Helps detect link-quality degradation before a handover.
- `SINR_lag1`: Previous-sample SINR value. Helps detect rising interference or weak radio conditions.
- `Pred`: Predicted class written to the output CSV after cross-validation.
- `Prob`: Predicted handover probability written to the output CSV after cross-validation.

## Extra Features Created Inside The Model
- One-hot encoded NetworkType: Converts each network type category into machine-readable binary columns.
- One-hot encoded deviceMake: Converts each device brand into machine-readable binary columns.
- Final transformed feature count used by the decision tree: 18

## Why These New Features Help
- `hour` and `minute` help the model learn time-related behavior, such as recurring mobility conditions or traffic patterns.
- Lag features let the model compare the current radio state with the previous one, which is useful because handover usually follows a change trend, not a single isolated value.
- The `Handover` label turns raw network logs into a supervised learning problem by defining what event the model should predict.
- One-hot encoding lets the tree use categorical information without forcing fake numeric order between categories.

## Benefits Of Machine Learning In This Project
- The model can predict likely handover events before or as they happen, instead of waiting for a manual rule check after the fact.
- It combines many radio, mobility, and device signals at once, which is harder to do with fixed thresholds.
- It can highlight the most influential measurements using feature importance, which makes the system easier to explain.
- A decision tree is lightweight and interpretable, which is helpful for FPGA-oriented or embedded deployment studies.
- Better handover prediction can support smoother mobility, fewer interruptions, and better preparation for cell switching.

## Benefits Of Each Figure
- `01_class_distribution.png`: Shows whether the dataset is balanced or imbalanced. This matters because handover events are much rarer than normal samples, so accuracy alone can be misleading.
- `02_pci.png`: Shows when the serving cell identity changes over time. This helps verify that the generated `Handover` label is meaningful because handover is directly tied to PCI transitions.
- `03_signal_metrics.png`: Shows how RSRP, RSRQ, and SINR behave around handover points. This helps explain whether signal strength, quality, or interference is related to the switching event.
- `04_feature_importance.png`: Shows which transformed features influenced the decision tree most. This is useful for interpretation, feature selection, and hardware simplification.
- `05_tree.png`: Shows the learned decision logic of the model. This is useful because the project can explain the model rules clearly instead of treating the predictor like a black box.

## Top Learned Features
- `cat__NetworkType_LTE (4G)`: importance = 0.396062
- `num__hour`: importance = 0.263946
- `num__Velocity(km/h)`: importance = 0.196045
- `num__RSRP`: importance = 0.057963
- `num__SINR`: importance = 0.026676
- `num__minute`: importance = 0.014594
- `num__PCI`: importance = 0.013186
- `num__RSRP_lag1`: importance = 0.011169
- `num__RSRQ_lag1`: importance = 0.010804
- `num__Downlink(Mbps)`: importance = 0.009509

## Short Interpretation
- The dataset is strongly imbalanced, so F1-score and ROC-AUC are more informative than accuracy alone.
- The current model separates classes fairly well by score (`ROC-AUC`) but still misses precision on the minority handover class, which means it produces extra false alarms.
- Even with that limitation, the pipeline is useful as a first interpretable baseline for telecom handover prediction.

## Final Note
- This project mainly demonstrates a machine learning approach that can be used for network analysis and optimization.
- The current implementation should be viewed as a proof of concept that explains how handover behavior can be modeled from telecom measurements.
- If this same pipeline is trained with higher-quality datasets collected directly from network operators or equipment vendors, the analysis will become clearer and more reliable.
- With richer industry-grade data, the model can provide stronger insights for network planning, mobility management, and handover optimization.
