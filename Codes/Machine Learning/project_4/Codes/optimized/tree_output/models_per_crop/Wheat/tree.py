def predict_tree(features):
    if features['num__Fertilizer_Used'] <= 217.9599990845:
        if features['num__Rainfall'] <= 1607.7700195312:
            if features['num__Fertilizer_Used'] <= 145.1699981689:
                if features['num__N'] <= 103.0000000000:
                    if features['num__Soil_Moisture'] <= 20.2799997330:
                        return 5.9528571429
                    else:
                        return 6.8520224719
                else:
                    if features['num__Soil_Moisture'] <= 39.2350006104:
                        return 6.9702380952
                    else:
                        return 7.7965625000
            else:
                if features['num__Rainfall'] <= 959.9949951172:
                    if features['num__Soil_Moisture'] <= 46.1350002289:
                        return 7.1288709677
                    else:
                        return 8.1903703704
                else:
                    if features['num__Wind_Speed'] <= 4.6849999428:
                        return 9.5572222222
                    else:
                        return 8.0969354839
        else:
            if features['num__Soil_Moisture'] <= 32.0349998474:
                if features['num__Fertilizer_Used'] <= 80.1499977112:
                    return 6.4950000000
                else:
                    if features['num__Rainfall'] <= 2497.6799316406:
                        return 7.9515942029
                    else:
                        return 8.7620000000
            else:
                if features['num__Fertilizer_Used'] <= 138.1650009155:
                    if features['num__Wind_Speed'] <= 3.5099999905:
                        return 9.5135000000
                    else:
                        return 8.3695283019
                else:
                    if features['num__Soil_pH'] <= 5.2550001144:
                        return 7.9966666667
                    else:
                        return 9.4231896552
    else:
        if features['num__Rainfall'] <= 1775.1000366211:
            if features['num__Soil_Moisture'] <= 53.3400001526:
                if features['num__Rainfall'] <= 1016.5699768066:
                    if features['num__Fertilizer_Used'] <= 286.5950012207:
                        return 7.9533846154
                    else:
                        return 8.7224324324
                else:
                    if features['num__Soil_Moisture'] <= 29.2250003815:
                        return 8.6670909091
                    else:
                        return 9.5397619048
            else:
                if features['num__Soil_pH'] <= 7.5649998188:
                    if features['num__N'] <= 94.5000000000:
                        return 9.3786363636
                    else:
                        return 10.4746153846
                else:
                    return 8.7880000000
        else:
            if features['num__Soil_Moisture'] <= 34.9549999237:
                if features['num__K'] <= 123.0000000000:
                    if features['num__Fertilizer_Used'] <= 253.4650039673:
                        return 8.4205555556
                    else:
                        return 9.5898000000
                else:
                    return 10.5157894737
            else:
                if features['num__Rainfall'] <= 2425.1348876953:
                    if features['num__N'] <= 104.5000000000:
                        return 9.9518867925
                    else:
                        return 10.8065217391
                else:
                    if features['num__Soil_pH'] <= 5.3450000286:
                        return 10.1328571429
                    else:
                        return 11.4443750000
