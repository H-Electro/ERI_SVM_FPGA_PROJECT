def predict_tree(features):
    if features['Fertilizer_Used'] <= 217.9599990845:
        if features['Rainfall'] <= 1607.7700195312:
            if features['Fertilizer_Used'] <= 145.1699981689:
                if features['N'] <= 103.0000000000:
                    if features['Soil_Moisture'] <= 20.2799997330:
                        if features['Rainfall'] <= 758.1649780273:
                            if features['Season'] <= 1.5000000000:
                                if features['Altitude'] <= 1164.0000000000:
                                    if features['Irrigation_Type'] <= 1.0000000000:
                                        return 5.0000000000
                                    else:
                                        return 4.9700000000
                                else:
                                    if features['K'] <= 89.0000000000:
                                        return 4.4900000000
                                    else:
                                        return 4.1400000000
                            else:
                                if features['Fertilizer_Used'] <= 99.6900024414:
                                    return 6.0500000000
                                else:
                                    return 5.9800000000
                        else:
                            if features['Soil_pH'] <= 6.5599999428:
                                if features['Organic_Carbon'] <= 0.8149999976:
                                    return 6.2000000000
                                else:
                                    if features['Irrigation_Type'] <= 2.5000000000:
                                        return 5.7600000000
                                    else:
                                        return 5.9300000000
                            else:
                                if features['Soil_Moisture'] <= 18.8900003433:
                                    if features['Pesticide_Used'] <= 23.9399995804:
                                        return 7.0650000000
                                    else:
                                        return 7.0800000000
                                else:
                                    if features['Fertilizer_Used'] <= 95.5950012207:
                                        return 6.9000000000
                                    else:
                                        return 6.7100000000
                    else:
                        if features['Soil_pH'] <= 7.9549999237:
                            if features['Fertilizer_Used'] <= 104.8699989319:
                                if features['Temperature'] <= 23.2049999237:
                                    if features['Organic_Carbon'] <= 0.7249999940:
                                        return 6.3300000000
                                    else:
                                        return 7.3106250000
                                else:
                                    if features['P'] <= 58.5000000000:
                                        return 5.7950000000
                                    else:
                                        return 6.7145454545
                            else:
                                if features['Humidity'] <= 82.2849998474:
                                    if features['N'] <= 87.5000000000:
                                        return 7.7311538462
                                    else:
                                        return 6.5900000000
                                else:
                                    if features['P'] <= 77.5000000000:
                                        return 6.3450000000
                                    else:
                                        return 4.9300000000
                        else:
                            if features['Wind_Speed'] <= 12.4399995804:
                                if features['Soil_Type'] <= 2.0000000000:
                                    if features['Humidity'] <= 64.4150009155:
                                        return 6.0350000000
                                    else:
                                        return 5.8400000000
                                else:
                                    return 6.5800000000
                            else:
                                if features['Soil_Moisture'] <= 44.8899993896:
                                    if features['Soil_Type'] <= 2.0000000000:
                                        return 4.6800000000
                                    else:
                                        return 4.8200000000
                                else:
                                    return 5.2700000000
                else:
                    if features['Soil_Moisture'] <= 39.2350006104:
                        if features['Humidity'] <= 89.3549995422:
                            if features['Wind_Speed'] <= 17.1149997711:
                                if features['Soil_pH'] <= 5.7999999523:
                                    if features['Organic_Carbon'] <= 1.3050000072:
                                        return 5.8920000000
                                    else:
                                        return 6.8800000000
                                else:
                                    if features['N'] <= 129.0000000000:
                                        return 6.6509090909
                                    else:
                                        return 7.4485714286
                            else:
                                if features['Temperature'] <= 30.6949996948:
                                    return 4.1700000000
                                else:
                                    return 6.2400000000
                        else:
                            return 9.5400000000
                    else:
                        if features['Soil_pH'] <= 5.6349999905:
                            if features['Sunlight_Hours'] <= 10.0599999428:
                                if features['Fertilizer_Used'] <= 123.3299980164:
                                    if features['Soil_Moisture'] <= 63.3250007629:
                                        return 6.5475000000
                                    else:
                                        return 5.0900000000
                                else:
                                    if features['Soil_Moisture'] <= 58.9500007629:
                                        return 7.0966666667
                                    else:
                                        return 8.2500000000
                            else:
                                if features['Temperature'] <= 35.7849998474:
                                    return 8.6800000000
                                else:
                                    return 8.5000000000
                        else:
                            if features['Soil_pH'] <= 6.4249999523:
                                if features['Rainfall'] <= 864.8600158691:
                                    if features['Soil_Moisture'] <= 52.0699996948:
                                        return 8.3100000000
                                    else:
                                        return 7.8150000000
                                else:
                                    if features['Altitude'] <= 798.0000000000:
                                        return 8.9750000000
                                    else:
                                        return 9.9533333333
                            else:
                                if features['Humidity'] <= 68.7049980164:
                                    if features['N'] <= 157.5000000000:
                                        return 7.9447058824
                                    else:
                                        return 9.0033333333
                                else:
                                    if features['Wind_Speed'] <= 14.5600004196:
                                        return 7.4527272727
                                    else:
                                        return 6.3700000000
            else:
                if features['Rainfall'] <= 959.9949951172:
                    if features['Soil_Moisture'] <= 46.1350002289:
                        if features['Soil_pH'] <= 7.5250000954:
                            if features['K'] <= 142.5000000000:
                                if features['Fertilizer_Used'] <= 205.2400054932:
                                    if features['Humidity'] <= 77.2999992371:
                                        return 7.4525806452
                                    else:
                                        return 8.1677777778
                                else:
                                    if features['Fertilizer_Used'] <= 211.5600051880:
                                        return 6.2766666667
                                    else:
                                        return 6.6160000000
                            else:
                                return 4.3600000000
                        else:
                            if features['Soil_Moisture'] <= 25.1549997330:
                                if features['Pesticide_Used'] <= 14.5099997520:
                                    if features['Irrigation_Type'] <= 1.0000000000:
                                        return 4.9300000000
                                    else:
                                        return 5.4100000000
                                else:
                                    if features['Wind_Speed'] <= 9.8200001717:
                                        return 6.0900000000
                                    else:
                                        return 5.6750000000
                            else:
                                if features['Wind_Speed'] <= 16.7899999619:
                                    if features['Pesticide_Used'] <= 19.2550001144:
                                        return 6.7250000000
                                    else:
                                        return 7.6300000000
                                else:
                                    return 5.4200000000
                    else:
                        if features['K'] <= 22.0000000000:
                            return 5.4400000000
                        else:
                            if features['Wind_Speed'] <= 8.6449999809:
                                if features['Humidity'] <= 49.5100002289:
                                    if features['P'] <= 33.0000000000:
                                        return 8.8466666667
                                    else:
                                        return 9.7975000000
                                else:
                                    if features['Wind_Speed'] <= 5.8899998665:
                                        return 7.8966666667
                                    else:
                                        return 8.4200000000
                            else:
                                if features['P'] <= 70.5000000000:
                                    if features['Temperature'] <= 32.5499992371:
                                        return 7.7112500000
                                    else:
                                        return 6.7500000000
                                else:
                                    if features['P'] <= 78.0000000000:
                                        return 9.9000000000
                                    else:
                                        return 8.1166666667
                else:
                    if features['Wind_Speed'] <= 4.6849999428:
                        if features['Organic_Carbon'] <= 0.5900000036:
                            if features['Humidity'] <= 64.3599987030:
                                if features['Temperature'] <= 27.5649995804:
                                    if features['Organic_Carbon'] <= 0.3250000030:
                                        return 10.6700000000
                                    else:
                                        return 10.8300000000
                                else:
                                    return 10.2300000000
                            else:
                                return 12.4700000000
                        else:
                            if features['N'] <= 107.5000000000:
                                if features['Pesticide_Used'] <= 10.2400002480:
                                    if features['Organic_Carbon'] <= 0.9099999964:
                                        return 9.5150000000
                                    else:
                                        return 8.8400000000
                                else:
                                    if features['Soil_Moisture'] <= 43.5249996185:
                                        return 10.5200000000
                                    else:
                                        return 10.0150000000
                            else:
                                if features['Fertilizer_Used'] <= 178.7249984741:
                                    if features['Soil_Moisture'] <= 40.6999988556:
                                        return 9.1200000000
                                    else:
                                        return 8.5500000000
                                else:
                                    if features['Temperature'] <= 19.4700002670:
                                        return 7.7000000000
                                    else:
                                        return 7.9200000000
                    else:
                        if features['N'] <= 134.5000000000:
                            if features['Soil_Moisture'] <= 54.5799999237:
                                if features['Rainfall'] <= 1527.8849487305:
                                    if features['Soil_pH'] <= 5.7000000477:
                                        return 6.9260000000
                                    else:
                                        return 8.0810000000
                                else:
                                    if features['Soil_Type'] <= 1.0000000000:
                                        return 7.1300000000
                                    else:
                                        return 5.7850000000
                            else:
                                if features['P'] <= 57.0000000000:
                                    if features['Irrigation_Type'] <= 2.0000000000:
                                        return 8.3733333333
                                    else:
                                        return 7.7800000000
                                else:
                                    if features['Season'] <= 1.5000000000:
                                        return 9.5375000000
                                    else:
                                        return 9.0050000000
                        else:
                            if features['Temperature'] <= 17.2149991989:
                                if features['Organic_Carbon'] <= 0.6799999774:
                                    return 9.7600000000
                                else:
                                    if features['Humidity'] <= 46.6149997711:
                                        return 6.8000000000
                                    else:
                                        return 8.1825000000
                            else:
                                if features['Humidity'] <= 73.3750000000:
                                    if features['Temperature'] <= 30.3599996567:
                                        return 9.6350000000
                                    else:
                                        return 11.0900000000
                                else:
                                    if features['Humidity'] <= 85.5850028992:
                                        return 8.9366666667
                                    else:
                                        return 7.8500000000
        else:
            if features['Soil_Moisture'] <= 32.0349998474:
                if features['Fertilizer_Used'] <= 80.1499977112:
                    if features['Soil_pH'] <= 5.3650000095:
                        if features['Altitude'] <= 1030.5000000000:
                            return 4.6800000000
                        else:
                            if features['Altitude'] <= 1857.0000000000:
                                return 4.7600000000
                            else:
                                return 4.7400000000
                    else:
                        if features['K'] <= 27.5000000000:
                            if features['Organic_Carbon'] <= 0.8100000024:
                                return 5.6400000000
                            else:
                                return 5.2100000000
                        else:
                            if features['Humidity'] <= 66.4949989319:
                                if features['Humidity'] <= 43.8000011444:
                                    if features['Humidity'] <= 40.6800003052:
                                        return 7.2666666667
                                    else:
                                        return 7.0700000000
                                else:
                                    if features['Organic_Carbon'] <= 1.5250000358:
                                        return 6.5740000000
                                    else:
                                        return 7.4300000000
                            else:
                                if features['Irrigation_Type'] <= 1.0000000000:
                                    return 7.8100000000
                                else:
                                    if features['Sunlight_Hours'] <= 9.0699996948:
                                        return 7.4600000000
                                    else:
                                        return 7.4400000000
                else:
                    if features['Irrigation_Type'] <= 1.5000000000:
                        if features['K'] <= 78.0000000000:
                            if features['Soil_pH'] <= 7.5750000477:
                                if features['Soil_Moisture'] <= 29.4350004196:
                                    if features['K'] <= 31.5000000000:
                                        return 6.9700000000
                                    else:
                                        return 8.1921428571
                                else:
                                    if features['P'] <= 46.0000000000:
                                        return 6.7500000000
                                    else:
                                        return 6.1700000000
                            else:
                                if features['P'] <= 26.0000000000:
                                    return 5.5000000000
                                else:
                                    if features['Humidity'] <= 83.2349967957:
                                        return 6.0933333333
                                    else:
                                        return 6.5500000000
                        else:
                            if features['Rainfall'] <= 2497.6799316406:
                                if features['Soil_pH'] <= 7.2350001335:
                                    if features['Soil_Moisture'] <= 22.9350004196:
                                        return 8.9760000000
                                    else:
                                        return 8.0722222222
                                else:
                                    if features['Organic_Carbon'] <= 1.2149999738:
                                        return 6.8614285714
                                    else:
                                        return 8.4750000000
                            else:
                                if features['P'] <= 83.5000000000:
                                    if features['Soil_Moisture'] <= 24.7349996567:
                                        return 9.1783333333
                                    else:
                                        return 10.5300000000
                                else:
                                    return 7.1200000000
                    else:
                        if features['Soil_pH'] <= 5.3249998093:
                            if features['Organic_Carbon'] <= 1.0550000072:
                                if features['Soil_Moisture'] <= 25.8900003433:
                                    if features['Fertilizer_Used'] <= 171.2850036621:
                                        return 8.3100000000
                                    else:
                                        return 8.5300000000
                                else:
                                    return 7.8700000000
                            else:
                                if features['Humidity'] <= 72.7750015259:
                                    return 7.0600000000
                                else:
                                    if features['Region'] <= 2.0000000000:
                                        return 5.6800000000
                                    else:
                                        return 6.2500000000
                        else:
                            if features['Fertilizer_Used'] <= 109.0199966431:
                                if features['Temperature'] <= 26.2349996567:
                                    if features['Temperature'] <= 16.3750000000:
                                        return 6.4750000000
                                    else:
                                        return 7.7100000000
                                else:
                                    if features['Humidity'] <= 58.0299987793:
                                        return 9.8800000000
                                    else:
                                        return 8.5850000000
                            else:
                                if features['Pesticide_Used'] <= 23.3499994278:
                                    if features['K'] <= 61.5000000000:
                                        return 9.5200000000
                                    else:
                                        return 8.7046666667
                                else:
                                    if features['Soil_Type'] <= 2.5000000000:
                                        return 10.2100000000
                                    else:
                                        return 10.4600000000
            else:
                if features['Fertilizer_Used'] <= 138.1650009155:
                    if features['Wind_Speed'] <= 3.5099999905:
                        if features['Humidity'] <= 80.2099990845:
                            if features['Soil_pH'] <= 5.5800001621:
                                if features['Soil_Moisture'] <= 43.7150001526:
                                    return 9.4300000000
                                else:
                                    if features['Sunlight_Hours'] <= 6.3750000000:
                                        return 8.7100000000
                                    else:
                                        return 8.3000000000
                            else:
                                if features['Rainfall'] <= 2763.2299804688:
                                    if features['Sunlight_Hours'] <= 9.0050001144:
                                        return 9.8381818182
                                    else:
                                        return 10.3750000000
                                else:
                                    return 11.0000000000
                        else:
                            if features['Pesticide_Used'] <= 13.5399999619:
                                return 8.0300000000
                            else:
                                return 7.1200000000
                    else:
                        if features['Temperature'] <= 11.7600002289:
                            if features['Rainfall'] <= 1992.0250244141:
                                if features['N'] <= 91.0000000000:
                                    return 10.3300000000
                                else:
                                    if features['Humidity'] <= 64.7150020599:
                                        return 10.1300000000
                                    else:
                                        return 10.1400000000
                            else:
                                if features['Soil_Type'] <= 1.5000000000:
                                    return 9.0000000000
                                else:
                                    return 9.5700000000
                        else:
                            if features['Soil_Moisture'] <= 50.1450004578:
                                if features['Fertilizer_Used'] <= 107.7799987793:
                                    if features['P'] <= 96.5000000000:
                                        return 7.6275000000
                                    else:
                                        return 5.0300000000
                                else:
                                    if features['K'] <= 50.5000000000:
                                        return 7.3480000000
                                    else:
                                        return 8.7743478261
                            else:
                                if features['Altitude'] <= 504.0000000000:
                                    if features['Season'] <= 0.5000000000:
                                        return 10.2000000000
                                    else:
                                        return 8.9600000000
                                else:
                                    if features['Humidity'] <= 46.1999988556:
                                        return 9.1975000000
                                    else:
                                        return 7.9963636364
                else:
                    if features['Soil_pH'] <= 5.2550001144:
                        if features['Altitude'] <= 1383.0000000000:
                            if features['Temperature'] <= 15.3050003052:
                                if features['Altitude'] <= 391.0000000000:
                                    return 7.1000000000
                                else:
                                    return 6.3300000000
                            else:
                                if features['P'] <= 66.5000000000:
                                    if features['Humidity'] <= 62.4449996948:
                                        return 7.3300000000
                                    else:
                                        return 7.9050000000
                                else:
                                    return 8.6000000000
                        else:
                            if features['Fertilizer_Used'] <= 176.5599975586:
                                return 8.4900000000
                            else:
                                if features['Pesticide_Used'] <= 19.9650001526:
                                    return 9.1900000000
                                else:
                                    return 9.1200000000
                    else:
                        if features['Soil_pH'] <= 7.1600000858:
                            if features['Soil_pH'] <= 5.7550001144:
                                if features['Fertilizer_Used'] <= 152.0449981689:
                                    if features['Irrigation_Type'] <= 1.0000000000:
                                        return 9.7700000000
                                    else:
                                        return 10.7850000000
                                else:
                                    if features['Fertilizer_Used'] <= 179.3800048828:
                                        return 8.5200000000
                                    else:
                                        return 9.5513333333
                            else:
                                if features['Fertilizer_Used'] <= 200.5500030518:
                                    if features['K'] <= 69.5000000000:
                                        return 9.3850000000
                                    else:
                                        return 10.1379166667
                                else:
                                    if features['N'] <= 94.5000000000:
                                        return 12.0550000000
                                    else:
                                        return 10.7075000000
                        else:
                            if features['Wind_Speed'] <= 1.5600000024:
                                if features['Fertilizer_Used'] <= 179.8399963379:
                                    return 9.0700000000
                                else:
                                    if features['Sunlight_Hours'] <= 8.3549997807:
                                        return 10.6500000000
                                    else:
                                        return 11.2900000000
                            else:
                                if features['Altitude'] <= 662.5000000000:
                                    if features['Soil_pH'] <= 7.4900000095:
                                        return 10.5325000000
                                    else:
                                        return 8.7366666667
                                else:
                                    if features['Organic_Carbon'] <= 1.2899999619:
                                        return 8.1350000000
                                    else:
                                        return 8.9210000000
    else:
        if features['Rainfall'] <= 1775.1000366211:
            if features['Soil_Moisture'] <= 53.3400001526:
                if features['Rainfall'] <= 1016.5699768066:
                    if features['Fertilizer_Used'] <= 286.5950012207:
                        if features['Wind_Speed'] <= 12.4700002670:
                            if features['Sunlight_Hours'] <= 9.8200001717:
                                if features['Organic_Carbon'] <= 0.4300000072:
                                    if features['P'] <= 63.5000000000:
                                        return 7.5000000000
                                    else:
                                        return 6.7000000000
                                else:
                                    if features['Region'] <= 0.5000000000:
                                        return 9.2388888889
                                    else:
                                        return 8.3947619048
                            else:
                                if features['Rainfall'] <= 443.9649963379:
                                    if features['Soil_Moisture'] <= 27.1700000763:
                                        return 6.9200000000
                                    else:
                                        return 6.1000000000
                                else:
                                    if features['Soil_Moisture'] <= 28.8949995041:
                                        return 8.1100000000
                                    else:
                                        return 7.5500000000
                        else:
                            if features['Soil_Moisture'] <= 18.8449993134:
                                return 4.8000000000
                            else:
                                if features['Soil_pH'] <= 6.1050000191:
                                    if features['Wind_Speed'] <= 14.4050002098:
                                        return 7.2633333333
                                    else:
                                        return 6.5475000000
                                else:
                                    if features['N'] <= 100.5000000000:
                                        return 7.1975000000
                                    else:
                                        return 8.2490000000
                    else:
                        if features['Rainfall'] <= 865.0050048828:
                            if features['Soil_Moisture'] <= 44.6150016785:
                                if features['Temperature'] <= 22.7849998474:
                                    if features['Altitude'] <= 2039.0000000000:
                                        return 8.2794444444
                                    else:
                                        return 6.1600000000
                                else:
                                    if features['Wind_Speed'] <= 10.0000000000:
                                        return 9.4546666667
                                    else:
                                        return 8.5011111111
                            else:
                                if features['Organic_Carbon'] <= 1.4449999928:
                                    if features['Altitude'] <= 1832.5000000000:
                                        return 8.4960000000
                                    else:
                                        return 7.0333333333
                                else:
                                    if features['Region'] <= 1.0000000000:
                                        return 5.6500000000
                                    else:
                                        return 6.3700000000
                        else:
                            if features['P'] <= 19.5000000000:
                                if features['Soil_pH'] <= 7.1899998188:
                                    return 7.6300000000
                                else:
                                    return 8.5200000000
                            else:
                                if features['Soil_Moisture'] <= 29.6899995804:
                                    if features['P'] <= 41.0000000000:
                                        return 10.2200000000
                                    else:
                                        return 11.1250000000
                                else:
                                    if features['Wind_Speed'] <= 15.1799998283:
                                        return 9.2812500000
                                    else:
                                        return 10.3850000000
                else:
                    if features['Soil_Moisture'] <= 29.2250003815:
                        if features['Wind_Speed'] <= 11.8449997902:
                            if features['Fertilizer_Used'] <= 272.0800018311:
                                if features['N'] <= 129.5000000000:
                                    if features['N'] <= 124.0000000000:
                                        return 8.2988888889
                                    else:
                                        return 6.6800000000
                                else:
                                    if features['Sunlight_Hours'] <= 5.3650000095:
                                        return 8.8200000000
                                    else:
                                        return 9.9000000000
                            else:
                                if features['K'] <= 88.0000000000:
                                    if features['Wind_Speed'] <= 2.6450001001:
                                        return 7.8900000000
                                    else:
                                        return 9.6550000000
                                else:
                                    if features['Irrigation_Type'] <= 0.5000000000:
                                        return 9.5300000000
                                    else:
                                        return 10.5633333333
                        else:
                            if features['Organic_Carbon'] <= 1.1549999714:
                                if features['Wind_Speed'] <= 16.2249994278:
                                    if features['Pesticide_Used'] <= 22.2349996567:
                                        return 8.1625000000
                                    else:
                                        return 6.7900000000
                                else:
                                    if features['Pesticide_Used'] <= 14.2450003624:
                                        return 9.4600000000
                                    else:
                                        return 8.6100000000
                            else:
                                if features['N'] <= 113.5000000000:
                                    if features['Soil_Moisture'] <= 25.4400005341:
                                        return 6.3233333333
                                    else:
                                        return 7.4300000000
                                else:
                                    if features['Altitude'] <= 1261.0000000000:
                                        return 8.2200000000
                                    else:
                                        return 7.3000000000
                    else:
                        if features['Fertilizer_Used'] <= 260.1200103760:
                            if features['Pesticide_Used'] <= 8.3900003433:
                                if features['Soil_Type'] <= 0.5000000000:
                                    return 6.7900000000
                                else:
                                    if features['Soil_Moisture'] <= 37.9499988556:
                                        return 8.6650000000
                                    else:
                                        return 8.0333333333
                            else:
                                if features['Fertilizer_Used'] <= 230.2400054932:
                                    if features['P'] <= 79.5000000000:
                                        return 9.6250000000
                                    else:
                                        return 10.8350000000
                                else:
                                    if features['N'] <= 49.5000000000:
                                        return 9.8266666667
                                    else:
                                        return 8.8941666667
                        else:
                            if features['Wind_Speed'] <= 9.0300002098:
                                if features['Soil_pH'] <= 7.3599998951:
                                    if features['P'] <= 46.5000000000:
                                        return 10.1430000000
                                    else:
                                        return 10.6433333333
                                else:
                                    if features['Wind_Speed'] <= 4.9749999046:
                                        return 9.8260000000
                                    else:
                                        return 8.2100000000
                            else:
                                if features['Soil_Type'] <= 0.5000000000:
                                    if features['N'] <= 72.0000000000:
                                        return 9.4233333333
                                    else:
                                        return 7.2300000000
                                else:
                                    if features['Fertilizer_Used'] <= 344.4199981689:
                                        return 9.7839130435
                                    else:
                                        return 7.2800000000
            else:
                if features['Soil_pH'] <= 7.5649998188:
                    if features['N'] <= 94.5000000000:
                        if features['Sunlight_Hours'] <= 8.9400000572:
                            if features['Temperature'] <= 12.0199999809:
                                if features['Wind_Speed'] <= 13.8499999046:
                                    if features['Fertilizer_Used'] <= 320.6450042725:
                                        return 11.0800000000
                                    else:
                                        return 10.7500000000
                                else:
                                    if features['Altitude'] <= 1487.5000000000:
                                        return 9.7400000000
                                    else:
                                        return 9.3000000000
                            else:
                                if features['Organic_Carbon'] <= 0.8199999928:
                                    if features['Rainfall'] <= 567.3849945068:
                                        return 7.4700000000
                                    else:
                                        return 8.4100000000
                                else:
                                    if features['Sunlight_Hours'] <= 8.0749998093:
                                        return 8.6950000000
                                    else:
                                        return 9.7200000000
                        else:
                            if features['Soil_Moisture'] <= 58.7549991608:
                                if features['Temperature'] <= 33.9899997711:
                                    if features['Rainfall'] <= 1291.9449768066:
                                        return 10.1500000000
                                    else:
                                        return 9.9000000000
                                else:
                                    return 9.0400000000
                            else:
                                if features['N'] <= 61.0000000000:
                                    return 10.5800000000
                                else:
                                    if features['P'] <= 81.0000000000:
                                        return 10.8900000000
                                    else:
                                        return 11.1600000000
                    else:
                        if features['Organic_Carbon'] <= 0.3949999958:
                            if features['Wind_Speed'] <= 8.7049999237:
                                if features['Pesticide_Used'] <= 3.5649999380:
                                    return 12.1100000000
                                else:
                                    if features['Season'] <= 1.5000000000:
                                        return 11.5800000000
                                    else:
                                        return 11.8000000000
                            else:
                                return 10.6500000000
                        else:
                            if features['Soil_Moisture'] <= 55.7750015259:
                                if features['Humidity'] <= 81.5750007629:
                                    if features['Wind_Speed'] <= 15.5149998665:
                                        return 10.9550000000
                                    else:
                                        return 11.5066666667
                                else:
                                    return 9.7000000000
                            else:
                                if features['Wind_Speed'] <= 14.9099998474:
                                    if features['Organic_Carbon'] <= 0.9549999833:
                                        return 9.8033333333
                                    else:
                                        return 10.6346153846
                                else:
                                    if features['Wind_Speed'] <= 16.8450002670:
                                        return 8.3400000000
                                    else:
                                        return 9.7950000000
                else:
                    if features['Fertilizer_Used'] <= 255.4200057983:
                        if features['N'] <= 103.5000000000:
                            if features['Rainfall'] <= 407.4349975586:
                                return 8.5300000000
                            else:
                                return 7.7300000000
                        else:
                            if features['Region'] <= 3.0000000000:
                                return 6.9200000000
                            else:
                                return 6.4400000000
                    else:
                        if features['Humidity'] <= 53.9249992371:
                            if features['N'] <= 171.0000000000:
                                if features['P'] <= 87.0000000000:
                                    if features['N'] <= 141.5000000000:
                                        return 9.4633333333
                                    else:
                                        return 9.8000000000
                                else:
                                    if features['Rainfall'] <= 480.7800140381:
                                        return 9.2000000000
                                    else:
                                        return 8.9800000000
                            else:
                                return 10.5100000000
                        else:
                            if features['K'] <= 111.0000000000:
                                return 8.7400000000
                            else:
                                return 7.8000000000
        else:
            if features['Soil_Moisture'] <= 34.9549999237:
                if features['K'] <= 123.0000000000:
                    if features['Fertilizer_Used'] <= 253.4650039673:
                        if features['Soil_Moisture'] <= 25.9200000763:
                            if features['Fertilizer_Used'] <= 248.0299987793:
                                if features['Sunlight_Hours'] <= 10.4349999428:
                                    if features['Organic_Carbon'] <= 0.4549999982:
                                        return 8.9300000000
                                    else:
                                        return 8.0180000000
                                else:
                                    return 6.7200000000
                            else:
                                if features['Rainfall'] <= 1927.6500244141:
                                    return 6.4900000000
                                else:
                                    return 6.8800000000
                        else:
                            if features['Pesticide_Used'] <= 8.3250002861:
                                if features['Sunlight_Hours'] <= 5.5599999428:
                                    return 8.5400000000
                                else:
                                    return 7.5300000000
                            else:
                                if features['Rainfall'] <= 2135.1750488281:
                                    if features['Pesticide_Used'] <= 15.3700003624:
                                        return 8.9400000000
                                    else:
                                        return 8.6800000000
                                else:
                                    if features['Rainfall'] <= 2390.7249755859:
                                        return 10.5400000000
                                    else:
                                        return 9.5050000000
                    else:
                        if features['N'] <= 123.0000000000:
                            if features['Soil_pH'] <= 5.6900000572:
                                if features['Soil_Moisture'] <= 32.1050004959:
                                    if features['Fertilizer_Used'] <= 316.9899902344:
                                        return 8.5100000000
                                    else:
                                        return 10.2900000000
                                else:
                                    if features['Temperature'] <= 21.7749996185:
                                        return 7.1900000000
                                    else:
                                        return 6.5600000000
                            else:
                                if features['Soil_pH'] <= 7.7999999523:
                                    if features['Sunlight_Hours'] <= 6.8800001144:
                                        return 10.8157142857
                                    else:
                                        return 9.4915384615
                                else:
                                    if features['Wind_Speed'] <= 15.8949999809:
                                        return 8.9775000000
                                    else:
                                        return 6.6600000000
                        else:
                            if features['Sunlight_Hours'] <= 5.5049998760:
                                if features['Sunlight_Hours'] <= 5.1949999332:
                                    return 12.6300000000
                                else:
                                    return 11.7300000000
                            else:
                                if features['N'] <= 147.5000000000:
                                    if features['Fertilizer_Used'] <= 307.7799987793:
                                        return 10.1800000000
                                    else:
                                        return 11.1933333333
                                else:
                                    if features['Irrigation_Type'] <= 0.5000000000:
                                        return 9.7250000000
                                    else:
                                        return 9.4400000000
                else:
                    if features['Pesticide_Used'] <= 8.7650001049:
                        if features['P'] <= 51.5000000000:
                            if features['Soil_pH'] <= 6.1199998856:
                                if features['Pesticide_Used'] <= 4.0049999952:
                                    return 10.3200000000
                                else:
                                    return 10.3700000000
                            else:
                                if features['N'] <= 98.0000000000:
                                    return 11.3900000000
                                else:
                                    return 11.0800000000
                        else:
                            if features['N'] <= 57.0000000000:
                                return 11.1400000000
                            else:
                                if features['Fertilizer_Used'] <= 240.6000061035:
                                    return 11.8400000000
                                else:
                                    if features['P'] <= 59.0000000000:
                                        return 11.5100000000
                                    else:
                                        return 11.6000000000
                    else:
                        if features['Sunlight_Hours'] <= 8.2799999714:
                            if features['Soil_pH'] <= 6.9250001907:
                                if features['Soil_Moisture'] <= 21.3900003433:
                                    if features['Rainfall'] <= 2735.7301025391:
                                        return 9.9500000000
                                    else:
                                        return 9.8900000000
                                else:
                                    if features['Wind_Speed'] <= 10.8350000381:
                                        return 10.5300000000
                                    else:
                                        return 10.3000000000
                            else:
                                if features['Rainfall'] <= 2224.2600097656:
                                    return 11.0400000000
                                else:
                                    return 11.2900000000
                        else:
                            if features['Altitude'] <= 448.0000000000:
                                return 8.2300000000
                            else:
                                if features['P'] <= 69.0000000000:
                                    return 9.0200000000
                                else:
                                    return 8.7500000000
            else:
                if features['Rainfall'] <= 2425.1348876953:
                    if features['N'] <= 104.5000000000:
                        if features['Fertilizer_Used'] <= 296.9250030518:
                            if features['Soil_pH'] <= 6.9100000858:
                                if features['Sunlight_Hours'] <= 9.3849997520:
                                    if features['Region'] <= 2.5000000000:
                                        return 8.9057142857
                                    else:
                                        return 9.7050000000
                                else:
                                    if features['Soil_pH'] <= 5.8199999332:
                                        return 7.8100000000
                                    else:
                                        return 7.8500000000
                            else:
                                if features['Organic_Carbon'] <= 1.0750000477:
                                    if features['Organic_Carbon'] <= 0.6100000143:
                                        return 9.8540000000
                                    else:
                                        return 10.7300000000
                                else:
                                    if features['Temperature'] <= 15.1750001907:
                                        return 10.3500000000
                                    else:
                                        return 8.9700000000
                        else:
                            if features['Pesticide_Used'] <= 14.1199998856:
                                if features['Soil_Moisture'] <= 47.8199996948:
                                    if features['Humidity'] <= 45.7700004578:
                                        return 9.8500000000
                                    else:
                                        return 9.4866666667
                                else:
                                    if features['Soil_Moisture'] <= 55.6999988556:
                                        return 10.6750000000
                                    else:
                                        return 10.2100000000
                            else:
                                if features['Sunlight_Hours'] <= 7.6549999714:
                                    if features['Sunlight_Hours'] <= 5.9749999046:
                                        return 10.9500000000
                                    else:
                                        return 9.9200000000
                                else:
                                    if features['N'] <= 77.0000000000:
                                        return 11.2000000000
                                    else:
                                        return 12.4250000000
                    else:
                        if features['Soil_Moisture'] <= 54.8250007629:
                            if features['Temperature'] <= 38.8250007629:
                                if features['Sunlight_Hours'] <= 6.8250000477:
                                    if features['Wind_Speed'] <= 6.8949999809:
                                        return 10.5466666667
                                    else:
                                        return 9.0340000000
                                else:
                                    if features['N'] <= 118.5000000000:
                                        return 11.2950000000
                                    else:
                                        return 10.2681818182
                            else:
                                return 13.2000000000
                        else:
                            if features['Pesticide_Used'] <= 18.4050006866:
                                if features['Pesticide_Used'] <= 16.3550000191:
                                    if features['Fertilizer_Used'] <= 323.1399993896:
                                        return 10.9300000000
                                    else:
                                        return 11.8466666667
                                else:
                                    if features['K'] <= 93.5000000000:
                                        return 9.1300000000
                                    else:
                                        return 9.1000000000
                            else:
                                if features['N'] <= 156.5000000000:
                                    if features['Region'] <= 2.5000000000:
                                        return 12.0500000000
                                    else:
                                        return 11.6050000000
                                else:
                                    if features['Fertilizer_Used'] <= 292.4600067139:
                                        return 12.8800000000
                                    else:
                                        return 12.9200000000
                else:
                    if features['Soil_pH'] <= 5.3450000286:
                        if features['Sunlight_Hours'] <= 8.0450003147:
                            if features['Irrigation_Type'] <= 2.5000000000:
                                if features['Soil_Type'] <= 2.5000000000:
                                    return 9.9500000000
                                else:
                                    return 9.7000000000
                            else:
                                return 8.6900000000
                        else:
                            if features['Soil_Moisture'] <= 57.9050006866:
                                if features['Soil_Type'] <= 1.5000000000:
                                    return 10.2200000000
                                else:
                                    return 10.4500000000
                            else:
                                if features['Sunlight_Hours'] <= 9.5649995804:
                                    return 10.7400000000
                                else:
                                    return 11.1800000000
                    else:
                        if features['Wind_Speed'] <= 1.6799999475:
                            if features['Sunlight_Hours'] <= 5.7200000286:
                                return 9.2500000000
                            else:
                                return 8.9200000000
                        else:
                            if features['Sunlight_Hours'] <= 8.9400000572:
                                if features['Sunlight_Hours'] <= 6.2850000858:
                                    if features['Pesticide_Used'] <= 0.4849999882:
                                        return 13.7300000000
                                    else:
                                        return 11.2766666667
                                else:
                                    if features['N'] <= 127.0000000000:
                                        return 11.7466666667
                                    else:
                                        return 12.7850000000
                            else:
                                if features['Soil_pH'] <= 6.5250000954:
                                    if features['N'] <= 109.0000000000:
                                        return 11.7633333333
                                    else:
                                        return 10.9260000000
                                else:
                                    if features['Fertilizer_Used'] <= 296.0900115967:
                                        return 9.5300000000
                                    else:
                                        return 10.8850000000
