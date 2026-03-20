def predict_tree(features):
    if features['Fertilizer_Used'] <= 216.1450042725:
        if features['Rainfall'] <= 1716.9500122070:
            if features['Fertilizer_Used'] <= 108.8699989319:
                if features['Soil_pH'] <= 7.2750000954:
                    if features['Soil_pH'] <= 5.6799998283:
                        if features['Wind_Speed'] <= 11.5299997330:
                            if features['Temperature'] <= 36.8750000000:
                                if features['Soil_Moisture'] <= 38.0000000000:
                                    if features['Rainfall'] <= 462.3200073242:
                                        return 3.0400000000
                                    else:
                                        return 4.6320000000
                                else:
                                    if features['P'] <= 64.5000000000:
                                        return 4.8880000000
                                    else:
                                        return 5.7666666667
                            else:
                                if features['Soil_Moisture'] <= 51.0949993134:
                                    if features['Season'] <= 1.0000000000:
                                        return 6.5500000000
                                    else:
                                        return 6.7000000000
                                else:
                                    return 6.0900000000
                        else:
                            if features['Fertilizer_Used'] <= 98.9249992371:
                                if features['Organic_Carbon'] <= 1.3050000072:
                                    if features['Humidity'] <= 87.2799987793:
                                        return 4.0680000000
                                    else:
                                        return 4.8000000000
                                else:
                                    if features['Pesticide_Used'] <= 11.0599997044:
                                        return 3.6150000000
                                    else:
                                        return 2.7900000000
                            else:
                                if features['Soil_Moisture'] <= 35.2800006866:
                                    return 5.4200000000
                                else:
                                    if features['Soil_Moisture'] <= 43.6000003815:
                                        return 4.7200000000
                                    else:
                                        return 5.0500000000
                    else:
                        if features['Temperature'] <= 17.4900007248:
                            if features['P'] <= 73.5000000000:
                                if features['Pesticide_Used'] <= 1.4950000048:
                                    if features['Temperature'] <= 15.7300004959:
                                        return 5.5600000000
                                    else:
                                        return 5.8600000000
                                else:
                                    if features['Humidity'] <= 51.3849983215:
                                        return 7.2866666667
                                    else:
                                        return 6.5962500000
                            else:
                                if features['Wind_Speed'] <= 12.8750000000:
                                    if features['K'] <= 117.0000000000:
                                        return 8.1300000000
                                    else:
                                        return 8.1200000000
                                else:
                                    return 7.8500000000
                        else:
                            if features['Wind_Speed'] <= 5.1250000000:
                                if features['Temperature'] <= 17.7700004578:
                                    return 4.5300000000
                                else:
                                    if features['Sunlight_Hours'] <= 5.8250000477:
                                        return 7.6333333333
                                    else:
                                        return 6.6100000000
                            else:
                                if features['Region'] <= 2.5000000000:
                                    if features['Sunlight_Hours'] <= 6.7549998760:
                                        return 5.9233333333
                                    else:
                                        return 4.7164285714
                                else:
                                    if features['Organic_Carbon'] <= 1.2850000262:
                                        return 6.6166666667
                                    else:
                                        return 5.3150000000
                else:
                    if features['Rainfall'] <= 743.5850219727:
                        if features['Sunlight_Hours'] <= 10.5199999809:
                            if features['N'] <= 43.5000000000:
                                return 5.4000000000
                            else:
                                if features['Humidity'] <= 55.7549991608:
                                    if features['Organic_Carbon'] <= 1.1349999905:
                                        return 4.2400000000
                                    else:
                                        return 4.0000000000
                                else:
                                    if features['P'] <= 62.0000000000:
                                        return 3.4516666667
                                    else:
                                        return 3.7500000000
                        else:
                            if features['Fertilizer_Used'] <= 99.1800003052:
                                return 6.1600000000
                            else:
                                return 5.3900000000
                    else:
                        if features['Organic_Carbon'] <= 1.3799999952:
                            if features['Pesticide_Used'] <= 6.7549998760:
                                return 3.4600000000
                            else:
                                if features['Altitude'] <= 1720.5000000000:
                                    if features['Season'] <= 1.5000000000:
                                        return 6.4633333333
                                    else:
                                        return 5.3700000000
                                else:
                                    if features['Region'] <= 3.0000000000:
                                        return 4.4100000000
                                    else:
                                        return 5.9100000000
                        else:
                            if features['Season'] <= 0.5000000000:
                                return 5.5100000000
                            else:
                                if features['Season'] <= 1.5000000000:
                                    if features['Irrigation_Type'] <= 1.0000000000:
                                        return 3.5200000000
                                    else:
                                        return 3.3000000000
                                else:
                                    if features['Soil_pH'] <= 7.8099999428:
                                        return 4.0900000000
                                    else:
                                        return 3.8400000000
            else:
                if features['Soil_Moisture'] <= 38.6499996185:
                    if features['Wind_Speed'] <= 11.7100000381:
                        if features['Fertilizer_Used'] <= 171.3950042725:
                            if features['N'] <= 98.0000000000:
                                if features['Humidity'] <= 60.5749988556:
                                    if features['Soil_pH'] <= 7.8149998188:
                                        return 4.4580000000
                                    else:
                                        return 3.5100000000
                                else:
                                    if features['Rainfall'] <= 648.6499938965:
                                        return 6.4650000000
                                    else:
                                        return 5.0700000000
                            else:
                                if features['Temperature'] <= 28.7650003433:
                                    if features['Season'] <= 1.5000000000:
                                        return 5.2300000000
                                    else:
                                        return 6.3800000000
                                else:
                                    if features['Fertilizer_Used'] <= 112.0299987793:
                                        return 4.8900000000
                                    else:
                                        return 7.2214285714
                        else:
                            if features['Soil_Moisture'] <= 33.1700000763:
                                if features['Organic_Carbon'] <= 0.7349999845:
                                    if features['Temperature'] <= 19.3399991989:
                                        return 4.6050000000
                                    else:
                                        return 6.5425000000
                                else:
                                    if features['Wind_Speed'] <= 9.1899995804:
                                        return 7.0694444444
                                    else:
                                        return 6.1500000000
                            else:
                                if features['Organic_Carbon'] <= 1.2199999690:
                                    if features['Soil_pH'] <= 6.8600001335:
                                        return 7.9350000000
                                    else:
                                        return 7.4900000000
                                else:
                                    return 9.0400000000
                    else:
                        if features['Rainfall'] <= 704.5499877930:
                            if features['Sunlight_Hours'] <= 4.6149997711:
                                return 1.7600000000
                            else:
                                if features['Soil_pH'] <= 4.9550001621:
                                    return 6.6100000000
                                else:
                                    if features['Rainfall'] <= 434.1100006104:
                                        return 5.2933333333
                                    else:
                                        return 4.2450000000
                        else:
                            if features['Region'] <= 3.5000000000:
                                if features['Fertilizer_Used'] <= 139.5149993896:
                                    if features['Soil_pH'] <= 5.1000001431:
                                        return 5.2950000000
                                    else:
                                        return 4.2483333333
                                else:
                                    if features['Pesticide_Used'] <= 8.2499997616:
                                        return 4.9912500000
                                    else:
                                        return 6.0310000000
                            else:
                                if features['Fertilizer_Used'] <= 133.0349960327:
                                    if features['K'] <= 109.5000000000:
                                        return 8.0700000000
                                    else:
                                        return 8.1600000000
                                else:
                                    if features['Pesticide_Used'] <= 14.2350001335:
                                        return 6.4337500000
                                    else:
                                        return 4.8200000000
                else:
                    if features['Wind_Speed'] <= 9.6900000572:
                        if features['Rainfall'] <= 1343.5549926758:
                            if features['K'] <= 144.5000000000:
                                if features['Temperature'] <= 35.5900001526:
                                    if features['Soil_pH'] <= 7.7799999714:
                                        return 6.8794444444
                                    else:
                                        return 5.5925000000
                                else:
                                    if features['Altitude'] <= 336.0000000000:
                                        return 10.5000000000
                                    else:
                                        return 7.3283333333
                            else:
                                return 10.0800000000
                        else:
                            if features['Humidity'] <= 79.0250015259:
                                if features['Irrigation_Type'] <= 2.5000000000:
                                    if features['Soil_Moisture'] <= 63.4750003815:
                                        return 8.2533333333
                                    else:
                                        return 9.6300000000
                                else:
                                    return 10.5500000000
                            else:
                                if features['Temperature'] <= 36.4150009155:
                                    if features['Temperature'] <= 33.3649997711:
                                        return 7.4600000000
                                    else:
                                        return 6.6500000000
                                else:
                                    return 5.5800000000
                    else:
                        if features['K'] <= 37.5000000000:
                            if features['Soil_pH'] <= 5.1850001812:
                                if features['Soil_pH'] <= 4.8350000381:
                                    return 5.9100000000
                                else:
                                    return 5.6600000000
                            else:
                                if features['Fertilizer_Used'] <= 154.5000000000:
                                    return 4.1300000000
                                else:
                                    if features['Fertilizer_Used'] <= 200.4650039673:
                                        return 5.1350000000
                                    else:
                                        return 4.8250000000
                        else:
                            if features['P'] <= 22.0000000000:
                                if features['K'] <= 80.5000000000:
                                    if features['Altitude'] <= 186.0000000000:
                                        return 5.9900000000
                                    else:
                                        return 7.0950000000
                                else:
                                    if features['Region'] <= 2.5000000000:
                                        return 5.0733333333
                                    else:
                                        return 4.3950000000
                            else:
                                if features['Altitude'] <= 32.0000000000:
                                    return 9.4100000000
                                else:
                                    if features['Soil_pH'] <= 5.7300000191:
                                        return 6.1104761905
                                    else:
                                        return 6.7268750000
        else:
            if features['Fertilizer_Used'] <= 149.8099975586:
                if features['Soil_Moisture'] <= 48.7449989319:
                    if features['P'] <= 79.5000000000:
                        if features['Wind_Speed'] <= 1.7150000334:
                            if features['Rainfall'] <= 2473.5198974609:
                                if features['Wind_Speed'] <= 1.6400000453:
                                    if features['Wind_Speed'] <= 1.0299999714:
                                        return 7.1800000000
                                    else:
                                        return 6.8900000000
                                else:
                                    return 7.5900000000
                            else:
                                if features['Fertilizer_Used'] <= 103.3950004578:
                                    if features['Humidity'] <= 63.0299987793:
                                        return 8.3800000000
                                    else:
                                        return 8.2700000000
                                else:
                                    if features['Fertilizer_Used'] <= 110.2099990845:
                                        return 9.1500000000
                                    else:
                                        return 9.0300000000
                        else:
                            if features['K'] <= 39.0000000000:
                                if features['Sunlight_Hours'] <= 6.7999999523:
                                    if features['Season'] <= 1.5000000000:
                                        return 5.6666666667
                                    else:
                                        return 4.1733333333
                                else:
                                    if features['Soil_pH'] <= 5.0199999809:
                                        return 5.1600000000
                                    else:
                                        return 6.6175000000
                            else:
                                if features['Temperature'] <= 38.1149997711:
                                    if features['Wind_Speed'] <= 10.3400001526:
                                        return 6.8235000000
                                    else:
                                        return 6.2982352941
                                else:
                                    if features['Soil_pH'] <= 6.6250000000:
                                        return 4.7000000000
                                    else:
                                        return 5.4566666667
                    else:
                        if features['Rainfall'] <= 2699.8349609375:
                            if features['Pesticide_Used'] <= 1.9649999738:
                                if features['P'] <= 91.5000000000:
                                    return 9.1500000000
                                else:
                                    return 9.3700000000
                            else:
                                if features['K'] <= 116.5000000000:
                                    if features['N'] <= 84.5000000000:
                                        return 8.2433333333
                                    else:
                                        return 7.3537500000
                                else:
                                    if features['Organic_Carbon'] <= 0.9499999881:
                                        return 7.4700000000
                                    else:
                                        return 5.6750000000
                        else:
                            return 10.5100000000
                else:
                    if features['N'] <= 112.5000000000:
                        if features['Soil_Moisture'] <= 62.4949989319:
                            if features['P'] <= 18.5000000000:
                                return 4.7900000000
                            else:
                                if features['Soil_pH'] <= 7.9349999428:
                                    if features['Pesticide_Used'] <= 20.1049995422:
                                        return 7.1356250000
                                    else:
                                        return 7.8880000000
                                else:
                                    if features['Pesticide_Used'] <= 18.8150005341:
                                        return 6.3250000000
                                    else:
                                        return 5.6750000000
                        else:
                            if features['N'] <= 82.0000000000:
                                if features['Altitude'] <= 452.0000000000:
                                    return 8.6700000000
                                else:
                                    return 7.9800000000
                            else:
                                return 10.1300000000
                    else:
                        if features['Soil_Moisture'] <= 59.9200000763:
                            if features['Organic_Carbon'] <= 1.5000000000:
                                if features['Temperature'] <= 30.5250005722:
                                    if features['Region'] <= 3.5000000000:
                                        return 7.8300000000
                                    else:
                                        return 8.3900000000
                                else:
                                    if features['Temperature'] <= 33.5900001526:
                                        return 8.9600000000
                                    else:
                                        return 8.5350000000
                            else:
                                return 6.3700000000
                        else:
                            if features['Altitude'] <= 303.5000000000:
                                return 11.6200000000
                            else:
                                if features['Fertilizer_Used'] <= 118.6850013733:
                                    if features['Fertilizer_Used'] <= 73.0400009155:
                                        return 8.8400000000
                                    else:
                                        return 9.0450000000
                                else:
                                    if features['N'] <= 144.5000000000:
                                        return 9.5600000000
                                    else:
                                        return 10.1300000000
            else:
                if features['Wind_Speed'] <= 9.3300004005:
                    if features['Soil_Moisture'] <= 34.2899990082:
                        if features['Humidity'] <= 60.8600006104:
                            if features['Sunlight_Hours'] <= 8.7100000381:
                                if features['K'] <= 100.5000000000:
                                    if features['Soil_Moisture'] <= 21.1099996567:
                                        return 6.1360000000
                                    else:
                                        return 7.9300000000
                                else:
                                    if features['N'] <= 162.0000000000:
                                        return 7.8000000000
                                    else:
                                        return 6.2800000000
                            else:
                                if features['K'] <= 92.0000000000:
                                    if features['Organic_Carbon'] <= 0.6250000000:
                                        return 8.0800000000
                                    else:
                                        return 8.9500000000
                                else:
                                    return 9.9900000000
                        else:
                            if features['Pesticide_Used'] <= 4.7700002193:
                                if features['Soil_pH'] <= 6.7999997139:
                                    return 6.7000000000
                                else:
                                    return 7.0400000000
                            else:
                                if features['Region'] <= 1.5000000000:
                                    if features['Sunlight_Hours'] <= 8.4749999046:
                                        return 9.1650000000
                                    else:
                                        return 7.2100000000
                                else:
                                    if features['P'] <= 94.5000000000:
                                        return 9.3257142857
                                    else:
                                        return 10.9000000000
                    else:
                        if features['Soil_pH'] <= 5.3949999809:
                            if features['Soil_Moisture'] <= 49.9850006104:
                                if features['Organic_Carbon'] <= 1.1400000155:
                                    return 6.3600000000
                                else:
                                    return 6.3000000000
                            else:
                                if features['Fertilizer_Used'] <= 180.5650024414:
                                    if features['Rainfall'] <= 2716.8898925781:
                                        return 7.7500000000
                                    else:
                                        return 7.9100000000
                                else:
                                    if features['K'] <= 97.5000000000:
                                        return 9.3200000000
                                    else:
                                        return 9.0600000000
                        else:
                            if features['Pesticide_Used'] <= 19.9600000381:
                                if features['Pesticide_Used'] <= 9.4000000954:
                                    if features['Region'] <= 1.5000000000:
                                        return 8.3683333333
                                    else:
                                        return 9.5000000000
                                else:
                                    if features['Humidity'] <= 80.4500007629:
                                        return 10.1983333333
                                    else:
                                        return 11.6050000000
                            else:
                                if features['Temperature'] <= 21.3999996185:
                                    if features['Soil_Moisture'] <= 41.8249988556:
                                        return 8.1300000000
                                    else:
                                        return 9.6233333333
                                else:
                                    if features['Soil_pH'] <= 6.5199999809:
                                        return 6.0400000000
                                    else:
                                        return 7.5250000000
                else:
                    if features['Fertilizer_Used'] <= 204.3199996948:
                        if features['Soil_Moisture'] <= 32.3100004196:
                            if features['Wind_Speed'] <= 15.0349998474:
                                if features['Organic_Carbon'] <= 0.9699999988:
                                    if features['Organic_Carbon'] <= 0.6200000048:
                                        return 6.9300000000
                                    else:
                                        return 7.1850000000
                                else:
                                    if features['Soil_pH'] <= 6.6449999809:
                                        return 7.5266666667
                                    else:
                                        return 8.0300000000
                            else:
                                if features['Pesticide_Used'] <= 7.6150002480:
                                    if features['Rainfall'] <= 2239.6600341797:
                                        return 7.7500000000
                                    else:
                                        return 7.0366666667
                                else:
                                    if features['Fertilizer_Used'] <= 167.3750000000:
                                        return 6.7100000000
                                    else:
                                        return 6.2433333333
                        else:
                            if features['Temperature'] <= 39.6850013733:
                                if features['Soil_pH'] <= 8.1349997520:
                                    if features['Soil_pH'] <= 5.6949999332:
                                        return 7.4425000000
                                    else:
                                        return 8.1450000000
                                else:
                                    if features['N'] <= 102.0000000000:
                                        return 7.0433333333
                                    else:
                                        return 6.4900000000
                            else:
                                return 9.9300000000
                    else:
                        if features['P'] <= 58.0000000000:
                            if features['K'] <= 71.0000000000:
                                return 8.5800000000
                            else:
                                return 8.6300000000
                        else:
                            if features['Altitude'] <= 1592.0000000000:
                                if features['Soil_Type'] <= 1.5000000000:
                                    return 9.2900000000
                                else:
                                    return 9.2000000000
                            else:
                                return 9.7800000000
    else:
        if features['Rainfall'] <= 1745.0050048828:
            if features['Soil_Moisture'] <= 27.7649993896:
                if features['N'] <= 115.5000000000:
                    if features['Wind_Speed'] <= 8.3200001717:
                        if features['Soil_pH'] <= 5.3400001526:
                            if features['Pesticide_Used'] <= 9.9049997330:
                                if features['Soil_Moisture'] <= 21.3200006485:
                                    return 5.0400000000
                                else:
                                    return 5.4000000000
                            else:
                                return 6.6900000000
                        else:
                            if features['K'] <= 94.0000000000:
                                if features['Rainfall'] <= 576.5450134277:
                                    if features['Organic_Carbon'] <= 1.3650000095:
                                        return 5.9600000000
                                    else:
                                        return 5.6000000000
                                else:
                                    if features['P'] <= 18.5000000000:
                                        return 8.1900000000
                                    else:
                                        return 6.9270000000
                            else:
                                if features['Rainfall'] <= 1334.3850097656:
                                    if features['Sunlight_Hours'] <= 9.5299997330:
                                        return 7.7200000000
                                    else:
                                        return 6.8700000000
                                else:
                                    if features['Altitude'] <= 1141.0000000000:
                                        return 8.2400000000
                                    else:
                                        return 8.9600000000
                    else:
                        if features['N'] <= 33.5000000000:
                            if features['Wind_Speed'] <= 13.7900004387:
                                return 3.4400000000
                            else:
                                return 4.5500000000
                        else:
                            if features['Soil_Moisture'] <= 25.8149995804:
                                if features['Fertilizer_Used'] <= 263.9149932861:
                                    if features['Temperature'] <= 12.2550001144:
                                        return 8.2300000000
                                    else:
                                        return 5.9657142857
                                else:
                                    if features['Altitude'] <= 311.0000000000:
                                        return 6.0800000000
                                    else:
                                        return 7.5112500000
                            else:
                                if features['Soil_Moisture'] <= 27.2049999237:
                                    if features['Rainfall'] <= 1184.3149719238:
                                        return 4.0900000000
                                    else:
                                        return 4.7000000000
                                else:
                                    if features['Sunlight_Hours'] <= 7.9750001431:
                                        return 5.7500000000
                                    else:
                                        return 7.1300000000
                else:
                    if features['Fertilizer_Used'] <= 300.1850128174:
                        if features['Wind_Speed'] <= 2.3000000119:
                            if features['Organic_Carbon'] <= 0.8650000095:
                                return 9.1800000000
                            else:
                                if features['Humidity'] <= 58.9550018311:
                                    return 8.2600000000
                                else:
                                    return 8.5800000000
                        else:
                            if features['Soil_Moisture'] <= 18.0299997330:
                                if features['Irrigation_Type'] <= 1.5000000000:
                                    if features['Irrigation_Type'] <= 0.5000000000:
                                        return 8.7500000000
                                    else:
                                        return 8.6400000000
                                else:
                                    if features['Humidity'] <= 67.8750019073:
                                        return 7.8000000000
                                    else:
                                        return 6.7300000000
                            else:
                                if features['Soil_pH'] <= 6.0250000954:
                                    if features['P'] <= 78.5000000000:
                                        return 5.4700000000
                                    else:
                                        return 6.3933333333
                                else:
                                    if features['Rainfall'] <= 1102.5349731445:
                                        return 7.7800000000
                                    else:
                                        return 6.6622222222
                    else:
                        if features['Organic_Carbon'] <= 1.2350000143:
                            if features['Wind_Speed'] <= 2.5800000429:
                                if features['N'] <= 169.5000000000:
                                    if features['Region'] <= 3.5000000000:
                                        return 7.2600000000
                                    else:
                                        return 6.9000000000
                                else:
                                    return 7.6900000000
                            else:
                                if features['Humidity'] <= 80.3700027466:
                                    if features['Wind_Speed'] <= 6.2400001287:
                                        return 10.0950000000
                                    else:
                                        return 8.8214285714
                                else:
                                    if features['Soil_pH'] <= 7.3799998760:
                                        return 8.0850000000
                                    else:
                                        return 7.3700000000
                        else:
                            if features['Irrigation_Type'] <= 2.5000000000:
                                if features['Region'] <= 2.5000000000:
                                    return 6.4900000000
                                else:
                                    return 6.0000000000
                            else:
                                return 7.9400000000
            else:
                if features['Soil_pH'] <= 5.2349998951:
                    if features['P'] <= 42.5000000000:
                        if features['Wind_Speed'] <= 16.3100004196:
                            if features['Humidity'] <= 49.4699993134:
                                if features['Region'] <= 1.0000000000:
                                    return 7.5200000000
                                else:
                                    return 6.9000000000
                            else:
                                if features['Temperature'] <= 14.9449996948:
                                    return 5.6300000000
                                else:
                                    if features['Wind_Speed'] <= 2.7549999356:
                                        return 6.5700000000
                                    else:
                                        return 6.1550000000
                        else:
                            return 3.7200000000
                    else:
                        if features['Fertilizer_Used'] <= 273.4450073242:
                            if features['N'] <= 79.5000000000:
                                if features['N'] <= 59.0000000000:
                                    return 7.6000000000
                                else:
                                    return 7.5900000000
                            else:
                                if features['N'] <= 145.5000000000:
                                    if features['Wind_Speed'] <= 6.7499997616:
                                        return 5.5700000000
                                    else:
                                        return 6.2766666667
                                else:
                                    return 7.3000000000
                        else:
                            if features['P'] <= 68.0000000000:
                                if features['Soil_pH'] <= 5.1499998569:
                                    if features['Soil_pH'] <= 5.0199999809:
                                        return 7.1500000000
                                    else:
                                        return 7.2600000000
                                else:
                                    return 6.8000000000
                            else:
                                if features['Fertilizer_Used'] <= 299.6799926758:
                                    if features['Temperature'] <= 28.6100006104:
                                        return 8.0750000000
                                    else:
                                        return 8.3000000000
                                else:
                                    if features['Temperature'] <= 18.6099996567:
                                        return 8.0050000000
                                    else:
                                        return 7.4766666667
                else:
                    if features['Rainfall'] <= 1169.5899658203:
                        if features['Soil_Moisture'] <= 60.9050006866:
                            if features['Humidity'] <= 56.3400001526:
                                if features['Wind_Speed'] <= 7.2550001144:
                                    if features['Rainfall'] <= 1006.3600158691:
                                        return 8.2270000000
                                    else:
                                        return 9.9880000000
                                else:
                                    if features['Soil_pH'] <= 7.1200001240:
                                        return 7.9168000000
                                    else:
                                        return 7.0530769231
                            else:
                                if features['Sunlight_Hours'] <= 9.8050003052:
                                    if features['N'] <= 124.5000000000:
                                        return 7.2125641026
                                    else:
                                        return 8.0966666667
                                else:
                                    if features['Humidity'] <= 79.8500022888:
                                        return 6.1271428571
                                    else:
                                        return 7.1066666667
                        else:
                            if features['N'] <= 103.5000000000:
                                if features['Soil_Moisture'] <= 61.3150005341:
                                    if features['N'] <= 68.5000000000:
                                        return 10.5000000000
                                    else:
                                        return 10.2900000000
                                else:
                                    if features['Soil_Moisture'] <= 63.3950004578:
                                        return 9.4033333333
                                    else:
                                        return 8.7666666667
                            else:
                                if features['Humidity'] <= 65.7550010681:
                                    if features['Altitude'] <= 515.5000000000:
                                        return 8.2950000000
                                    else:
                                        return 7.8680000000
                                else:
                                    return 8.9800000000
                    else:
                        if features['Soil_pH'] <= 7.0250000954:
                            if features['P'] <= 97.5000000000:
                                if features['N'] <= 122.5000000000:
                                    if features['Rainfall'] <= 1666.4849853516:
                                        return 8.6443478261
                                    else:
                                        return 5.8900000000
                                else:
                                    if features['Soil_pH'] <= 6.9249999523:
                                        return 9.1487500000
                                    else:
                                        return 10.7350000000
                            else:
                                return 11.4800000000
                        else:
                            if features['Wind_Speed'] <= 9.0399999619:
                                if features['Region'] <= 1.5000000000:
                                    if features['P'] <= 27.0000000000:
                                        return 8.7250000000
                                    else:
                                        return 8.1600000000
                                else:
                                    if features['Organic_Carbon'] <= 0.9900000095:
                                        return 9.2560000000
                                    else:
                                        return 8.5400000000
                            else:
                                if features['Fertilizer_Used'] <= 332.8649902344:
                                    if features['Fertilizer_Used'] <= 232.0249938965:
                                        return 6.3180000000
                                    else:
                                        return 7.5700000000
                                else:
                                    if features['Irrigation_Type'] <= 1.5000000000:
                                        return 9.8166666667
                                    else:
                                        return 7.9833333333
        else:
            if features['N'] <= 71.5000000000:
                if features['Wind_Speed'] <= 4.8849999905:
                    if features['Humidity'] <= 84.9799995422:
                        if features['Altitude'] <= 834.0000000000:
                            if features['N'] <= 31.5000000000:
                                return 10.0900000000
                            else:
                                if features['P'] <= 78.5000000000:
                                    if features['Temperature'] <= 16.2500000000:
                                        return 10.4900000000
                                    else:
                                        return 10.6400000000
                                else:
                                    return 10.8000000000
                        else:
                            if features['Irrigation_Type'] <= 2.5000000000:
                                if features['Pesticide_Used'] <= 18.3599996567:
                                    if features['Irrigation_Type'] <= 1.0000000000:
                                        return 8.8900000000
                                    else:
                                        return 8.7900000000
                                else:
                                    return 9.2600000000
                            else:
                                if features['P'] <= 34.0000000000:
                                    return 10.3100000000
                                else:
                                    return 10.1000000000
                    else:
                        if features['Fertilizer_Used'] <= 286.8150024414:
                            if features['Rainfall'] <= 2269.6350097656:
                                return 9.6800000000
                            else:
                                if features['Irrigation_Type'] <= 1.5000000000:
                                    return 8.5000000000
                                else:
                                    return 8.7900000000
                        else:
                            return 7.4900000000
                else:
                    if features['Soil_Moisture'] <= 47.7849998474:
                        if features['Rainfall'] <= 2037.2500610352:
                            if features['Soil_pH'] <= 5.6050000191:
                                if features['Temperature'] <= 29.3900003433:
                                    return 5.2100000000
                                else:
                                    return 6.1000000000
                            else:
                                if features['Irrigation_Type'] <= 1.0000000000:
                                    if features['Organic_Carbon'] <= 0.9399999678:
                                        return 8.0700000000
                                    else:
                                        return 7.9850000000
                                else:
                                    if features['Region'] <= 1.0000000000:
                                        return 7.2450000000
                                    else:
                                        return 6.4800000000
                        else:
                            if features['Region'] <= 0.5000000000:
                                if features['Humidity'] <= 79.6450004578:
                                    if features['Temperature'] <= 27.5450000763:
                                        return 6.7100000000
                                    else:
                                        return 7.1100000000
                                else:
                                    return 7.8000000000
                            else:
                                if features['Temperature'] <= 13.4749999046:
                                    if features['Altitude'] <= 966.0000000000:
                                        return 7.4750000000
                                    else:
                                        return 6.7700000000
                                else:
                                    if features['Season'] <= 0.5000000000:
                                        return 8.2820000000
                                    else:
                                        return 9.0300000000
                    else:
                        if features['Soil_pH'] <= 7.6000001431:
                            if features['Temperature'] <= 16.9600000381:
                                if features['Soil_Type'] <= 2.5000000000:
                                    return 10.3600000000
                                else:
                                    return 10.4100000000
                            else:
                                if features['Humidity'] <= 49.2100009918:
                                    if features['Temperature'] <= 25.2799997330:
                                        return 9.2900000000
                                    else:
                                        return 9.7550000000
                                else:
                                    if features['Organic_Carbon'] <= 0.6499999911:
                                        return 8.1500000000
                                    else:
                                        return 8.8066666667
                        else:
                            if features['Soil_Type'] <= 0.5000000000:
                                return 8.6800000000
                            else:
                                if features['Wind_Speed'] <= 11.5900001526:
                                    if features['Organic_Carbon'] <= 1.1749999523:
                                        return 7.6900000000
                                    else:
                                        return 7.6300000000
                                else:
                                    if features['Season'] <= 1.0000000000:
                                        return 7.9600000000
                                    else:
                                        return 7.9300000000
            else:
                if features['P'] <= 58.5000000000:
                    if features['Fertilizer_Used'] <= 271.7249908447:
                        if features['Altitude'] <= 1730.5000000000:
                            if features['Organic_Carbon'] <= 1.3799999952:
                                if features['K'] <= 135.5000000000:
                                    if features['Sunlight_Hours'] <= 4.1800000668:
                                        return 6.0100000000
                                    else:
                                        return 7.8171428571
                                else:
                                    return 10.2000000000
                            else:
                                if features['Altitude'] <= 948.0000000000:
                                    if features['Altitude'] <= 824.5000000000:
                                        return 9.4500000000
                                    else:
                                        return 9.5000000000
                                else:
                                    return 9.2600000000
                        else:
                            if features['Pesticide_Used'] <= 15.2049999237:
                                if features['P'] <= 55.5000000000:
                                    if features['Organic_Carbon'] <= 1.1499999762:
                                        return 8.6766666667
                                    else:
                                        return 9.5050000000
                                else:
                                    return 7.3100000000
                            else:
                                if features['Temperature'] <= 31.3549995422:
                                    if features['P'] <= 49.0000000000:
                                        return 10.6800000000
                                    else:
                                        return 10.0200000000
                                else:
                                    return 11.6000000000
                    else:
                        if features['Altitude'] <= 155.5000000000:
                            if features['Soil_pH'] <= 5.9249999523:
                                if features['Irrigation_Type'] <= 1.5000000000:
                                    return 8.1900000000
                                else:
                                    return 9.0300000000
                            else:
                                if features['Humidity'] <= 59.7249984741:
                                    return 7.8600000000
                                else:
                                    return 7.0100000000
                        else:
                            if features['K'] <= 122.0000000000:
                                if features['Wind_Speed'] <= 2.9300000668:
                                    if features['Organic_Carbon'] <= 0.6899999976:
                                        return 10.6966666667
                                    else:
                                        return 9.6600000000
                                else:
                                    if features['Pesticide_Used'] <= 11.3650002480:
                                        return 8.7156250000
                                    else:
                                        return 9.4368181818
                            else:
                                if features['Fertilizer_Used'] <= 341.4700012207:
                                    if features['Altitude'] <= 628.5000000000:
                                        return 10.1820000000
                                    else:
                                        return 9.2725000000
                                else:
                                    if features['K'] <= 132.0000000000:
                                        return 10.9700000000
                                    else:
                                        return 10.9200000000
                else:
                    if features['Soil_Moisture'] <= 42.5349998474:
                        if features['Rainfall'] <= 2222.9050292969:
                            if features['Sunlight_Hours'] <= 8.9850001335:
                                if features['Humidity'] <= 36.9600009918:
                                    if features['Fertilizer_Used'] <= 303.8249969482:
                                        return 9.3800000000
                                    else:
                                        return 10.4550000000
                                else:
                                    if features['Humidity'] <= 44.2649993896:
                                        return 8.2775000000
                                    else:
                                        return 9.2612500000
                            else:
                                if features['Soil_Moisture'] <= 27.7749996185:
                                    if features['Irrigation_Type'] <= 0.5000000000:
                                        return 7.4600000000
                                    else:
                                        return 6.8400000000
                                else:
                                    if features['K'] <= 35.0000000000:
                                        return 8.4000000000
                                    else:
                                        return 7.9200000000
                        else:
                            if features['Rainfall'] <= 2761.1199951172:
                                if features['Soil_pH'] <= 5.1949999332:
                                    return 8.2400000000
                                else:
                                    if features['Soil_pH'] <= 5.6549999714:
                                        return 10.5016666667
                                    else:
                                        return 9.8100000000
                            else:
                                return 7.1100000000
                    else:
                        if features['Fertilizer_Used'] <= 222.6250000000:
                            if features['Irrigation_Type'] <= 2.0000000000:
                                if features['Wind_Speed'] <= 5.3699998856:
                                    return 8.3600000000
                                else:
                                    return 7.7900000000
                            else:
                                return 9.2000000000
                        else:
                            if features['K'] <= 27.0000000000:
                                return 8.1500000000
                            else:
                                if features['Temperature'] <= 12.1749997139:
                                    if features['Soil_Moisture'] <= 52.9149990082:
                                        return 9.9300000000
                                    else:
                                        return 8.8700000000
                                else:
                                    if features['Fertilizer_Used'] <= 343.4899902344:
                                        return 10.6875000000
                                    else:
                                        return 9.4900000000
