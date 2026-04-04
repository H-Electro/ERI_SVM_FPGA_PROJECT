def predict_tree(features):
    if features['num__Fertilizer_Used'] <= 238.9849929810:
        if features['num__Rainfall'] <= 1363.5650024414:
            if features['num__Fertilizer_Used'] <= 126.2049980164:
                if features['num__Soil_Moisture'] <= 37.1399993896:
                    if features['num__Temperature'] <= 34.9049987793:
                        return 22.0647619048
                    else:
                        return 23.0978947368
                else:
                    if features['num__K'] <= 36.5000000000:
                        return 22.2890000000
                    else:
                        return 23.5468571429
            else:
                if features['num__Soil_Moisture'] <= 28.9949998856:
                    if features['num__Soil_pH'] <= 6.9800000191:
                        return 23.7228205128
                    else:
                        return 22.8424242424
                else:
                    if features['num__Soil_Moisture'] <= 57.0900001526:
                        return 24.2146400000
                    else:
                        return 25.0020512821
        else:
            if features['num__Soil_Moisture'] <= 45.6649990082:
                if features['num__Rainfall'] <= 2071.1700439453:
                    if features['num__Wind_Speed'] <= 13.2750000954:
                        return 24.4497142857
                    else:
                        return 23.7581481481
                else:
                    if features['num__Fertilizer_Used'] <= 128.4350051880:
                        return 24.5485714286
                    else:
                        return 25.4281818182
            else:
                if features['num__Fertilizer_Used'] <= 110.5799980164:
                    if features['num__Rainfall'] <= 2233.9100341797:
                        return 24.1335714286
                    else:
                        return 25.5428571429
                else:
                    if features['num__Rainfall'] <= 2468.3900146484:
                        return 25.6731521739
                    else:
                        return 26.6571052632
    else:
        if features['num__Rainfall'] <= 1455.1799926758:
            if features['num__Soil_Moisture'] <= 24.4049997330:
                if features['num__Rainfall'] <= 1099.5549926758:
                    if features['num__Wind_Speed'] <= 14.8250002861:
                        return 24.2465217391
                    else:
                        return 23.1600000000
                else:
                    return 25.0361538462
            else:
                if features['num__N'] <= 167.5000000000:
                    if features['num__K'] <= 83.0000000000:
                        return 24.7925675676
                    else:
                        return 25.4683720930
                else:
                    return 26.5040000000
        else:
            if features['num__Soil_Moisture'] <= 39.7799987793:
                if features['num__Wind_Speed'] <= 12.4800000191:
                    if features['num__Fertilizer_Used'] <= 276.7050018311:
                        return 25.6296428571
                    else:
                        return 26.5927692308
                else:
                    if features['num__Rainfall'] <= 2379.8299560547:
                        return 24.9520588235
                    else:
                        return 26.2484210526
            else:
                if features['num__Soil_pH'] <= 5.6349999905:
                    if features['num__Pesticide_Used'] <= 18.6150007248:
                        return 25.7371428571
                    else:
                        return 26.6600000000
                else:
                    if features['num__Rainfall'] <= 2020.1099853516:
                        return 26.8235897436
                    else:
                        return 27.6459259259
