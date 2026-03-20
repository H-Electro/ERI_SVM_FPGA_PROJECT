def predict_tree(features):
    if features['Fertilizer_Used'] <= 192.3549957275:
        if features['Rainfall'] <= 1173.4500122070:
            if features['Fertilizer_Used'] <= 130.1450042725:
                if features['Soil_Moisture'] <= 39.8999996185:
                    if features['Temperature'] <= 13.0100002289:
                        if features['Humidity'] <= 56.4400005341:
                            if features['K'] <= 55.5000000000:
                                return 8.9100000000
                            else:
                                if features['K'] <= 106.0000000000:
                                    return 10.0000000000
                                else:
                                    return 9.7200000000
                        else:
                            if features['Sunlight_Hours'] <= 8.2450001240:
                                if features['Wind_Speed'] <= 6.2249999046:
                                    return 8.4000000000
                                else:
                                    return 8.0500000000
                            else:
                                return 7.4500000000
                    else:
                        if features['Pesticide_Used'] <= 13.2100000381:
                            if features['Region'] <= 1.5000000000:
                                if features['K'] <= 62.0000000000:
                                    if features['N'] <= 75.5000000000:
                                        return 6.1500000000
                                    else:
                                        return 5.7350000000
                                else:
                                    if features['Pesticide_Used'] <= 7.0000002384:
                                        return 7.0750000000
                                    else:
                                        return 6.4133333333
                            else:
                                if features['Rainfall'] <= 866.8750000000:
                                    if features['P'] <= 55.0000000000:
                                        return 7.1414285714
                                    else:
                                        return 8.2866666667
                                else:
                                    if features['K'] <= 44.5000000000:
                                        return 6.8025000000
                                    else:
                                        return 6.0150000000
                        else:
                            if features['Fertilizer_Used'] <= 64.1749992371:
                                if features['P'] <= 85.5000000000:
                                    if features['Altitude'] <= 1035.5000000000:
                                        return 7.0750000000
                                    else:
                                        return 6.7600000000
                                else:
                                    return 5.7400000000
                            else:
                                if features['Wind_Speed'] <= 1.7549999952:
                                    if features['N'] <= 89.5000000000:
                                        return 9.2900000000
                                    else:
                                        return 9.5100000000
                                else:
                                    if features['Wind_Speed'] <= 13.5450000763:
                                        return 8.0085714286
                                    else:
                                        return 7.0740000000
                else:
                    if features['Humidity'] <= 84.5950012207:
                        if features['Rainfall'] <= 605.0899963379:
                            if features['Soil_pH'] <= 5.5099999905:
                                if features['Altitude'] <= 1215.0000000000:
                                    if features['Season'] <= 0.5000000000:
                                        return 7.1266666667
                                    else:
                                        return 7.6600000000
                                else:
                                    if features['Soil_pH'] <= 4.8949999809:
                                        return 5.9500000000
                                    else:
                                        return 6.5950000000
                            else:
                                if features['Sunlight_Hours'] <= 7.7800002098:
                                    if features['Wind_Speed'] <= 9.7049999237:
                                        return 8.3100000000
                                    else:
                                        return 9.2900000000
                                else:
                                    if features['Soil_pH'] <= 7.1949999332:
                                        return 7.9875000000
                                    else:
                                        return 7.3625000000
                        else:
                            if features['Soil_Moisture'] <= 50.1250000000:
                                if features['Altitude'] <= 488.0000000000:
                                    if features['K'] <= 73.0000000000:
                                        return 9.2900000000
                                    else:
                                        return 10.0500000000
                                else:
                                    if features['N'] <= 159.0000000000:
                                        return 8.1136363636
                                    else:
                                        return 6.6150000000
                            else:
                                if features['Fertilizer_Used'] <= 63.1550006866:
                                    return 6.5300000000
                                else:
                                    if features['Altitude'] <= 502.5000000000:
                                        return 10.0400000000
                                    else:
                                        return 8.8168421053
                    else:
                        if features['Rainfall'] <= 731.6000061035:
                            if features['Soil_Moisture'] <= 44.5799999237:
                                if features['N'] <= 89.0000000000:
                                    return 8.6200000000
                                else:
                                    return 8.8300000000
                            else:
                                if features['Organic_Carbon'] <= 0.4200000018:
                                    return 9.5300000000
                                else:
                                    if features['K'] <= 55.0000000000:
                                        return 9.3700000000
                                    else:
                                        return 9.2900000000
                        else:
                            if features['N'] <= 80.0000000000:
                                return 10.8000000000
                            else:
                                if features['Soil_Type'] <= 2.5000000000:
                                    return 9.8700000000
                                else:
                                    return 10.3200000000
            else:
                if features['K'] <= 141.0000000000:
                    if features['Soil_Moisture'] <= 38.5550003052:
                        if features['Sunlight_Hours'] <= 5.0949997902:
                            if features['Fertilizer_Used'] <= 164.5250015259:
                                if features['Pesticide_Used'] <= 11.5050001144:
                                    if features['Humidity'] <= 47.1550006866:
                                        return 7.8800000000
                                    else:
                                        return 7.2100000000
                                else:
                                    if features['K'] <= 71.5000000000:
                                        return 9.0700000000
                                    else:
                                        return 8.4350000000
                            else:
                                if features['Soil_pH'] <= 5.9099998474:
                                    if features['Soil_pH'] <= 5.3099999428:
                                        return 8.5850000000
                                    else:
                                        return 9.4100000000
                                else:
                                    if features['Wind_Speed'] <= 8.8200001717:
                                        return 9.8900000000
                                    else:
                                        return 10.5950000000
                        else:
                            if features['Pesticide_Used'] <= 24.4399995804:
                                if features['Fertilizer_Used'] <= 157.1949996948:
                                    if features['Rainfall'] <= 802.4700012207:
                                        return 7.5050000000
                                    else:
                                        return 8.5533333333
                                else:
                                    if features['Soil_Moisture'] <= 21.8950004578:
                                        return 7.8450000000
                                    else:
                                        return 8.6625000000
                            else:
                                if features['Wind_Speed'] <= 4.2999999523:
                                    return 6.3600000000
                                else:
                                    return 6.6500000000
                    else:
                        if features['Temperature'] <= 22.1149997711:
                            if features['Sunlight_Hours'] <= 9.6849999428:
                                if features['Soil_pH'] <= 7.0749998093:
                                    if features['Altitude'] <= 395.0000000000:
                                        return 7.9550000000
                                    else:
                                        return 9.2237500000
                                else:
                                    if features['Pesticide_Used'] <= 4.7199999094:
                                        return 9.1200000000
                                    else:
                                        return 10.1875000000
                            else:
                                if features['Temperature'] <= 16.0100002289:
                                    return 12.2000000000
                                else:
                                    if features['Organic_Carbon'] <= 0.7700000107:
                                        return 10.2000000000
                                    else:
                                        return 10.5900000000
                        else:
                            if features['Pesticide_Used'] <= 2.6650000215:
                                if features['Organic_Carbon'] <= 1.2550000250:
                                    return 7.5900000000
                                else:
                                    return 6.1700000000
                            else:
                                if features['Pesticide_Used'] <= 23.0149993896:
                                    if features['P'] <= 79.5000000000:
                                        return 8.8437037037
                                    else:
                                        return 9.9660000000
                                else:
                                    if features['N'] <= 67.5000000000:
                                        return 7.3300000000
                                    else:
                                        return 8.3350000000
                else:
                    if features['Wind_Speed'] <= 5.9100000858:
                        if features['Pesticide_Used'] <= 4.9500000477:
                            return 11.5700000000
                        else:
                            if features['Soil_pH'] <= 5.9749999046:
                                if features['Temperature'] <= 33.9499988556:
                                    return 10.2800000000
                                else:
                                    return 10.4700000000
                            else:
                                if features['Wind_Speed'] <= 4.0000000000:
                                    return 10.8800000000
                                else:
                                    return 10.6700000000
                    else:
                        if features['Temperature'] <= 23.3149995804:
                            if features['Soil_pH'] <= 5.5249998569:
                                return 10.5900000000
                            else:
                                if features['Soil_pH'] <= 6.4900000095:
                                    return 10.0500000000
                                else:
                                    return 10.2300000000
                        else:
                            if features['Wind_Speed'] <= 7.0349998474:
                                if features['Fertilizer_Used'] <= 156.3750000000:
                                    return 9.4100000000
                                else:
                                    return 9.4500000000
                            else:
                                if features['Humidity'] <= 67.3749980927:
                                    return 8.3900000000
                                else:
                                    return 8.6900000000
        else:
            if features['Rainfall'] <= 2229.6900634766:
                if features['N'] <= 138.5000000000:
                    if features['K'] <= 101.5000000000:
                        if features['Soil_Moisture'] <= 40.1499996185:
                            if features['Soil_pH'] <= 8.0050001144:
                                if features['Temperature'] <= 27.3750000000:
                                    if features['Sunlight_Hours'] <= 9.6199998856:
                                        return 9.2616666667
                                    else:
                                        return 8.1183333333
                                else:
                                    if features['P'] <= 59.0000000000:
                                        return 8.0443750000
                                    else:
                                        return 8.9775000000
                            else:
                                if features['Organic_Carbon'] <= 1.0200000107:
                                    if features['Pesticide_Used'] <= 6.2799997330:
                                        return 8.0800000000
                                    else:
                                        return 7.6900000000
                                else:
                                    if features['Organic_Carbon'] <= 1.3100000024:
                                        return 7.1700000000
                                    else:
                                        return 6.9700000000
                        else:
                            if features['Wind_Speed'] <= 2.3600000143:
                                if features['Wind_Speed'] <= 2.0850000381:
                                    if features['K'] <= 60.0000000000:
                                        return 11.7000000000
                                    else:
                                        return 11.4400000000
                                else:
                                    return 11.1000000000
                            else:
                                if features['Humidity'] <= 82.7299995422:
                                    if features['Wind_Speed'] <= 15.9549999237:
                                        return 9.3157500000
                                    else:
                                        return 8.1950000000
                                else:
                                    if features['Soil_pH'] <= 5.7300000191:
                                        return 9.1650000000
                                    else:
                                        return 11.1200000000
                    else:
                        if features['Fertilizer_Used'] <= 158.3649978638:
                            if features['Temperature'] <= 36.9899997711:
                                if features['Humidity'] <= 57.1650009155:
                                    if features['Sunlight_Hours'] <= 5.8500001431:
                                        return 9.0540000000
                                    else:
                                        return 10.3407692308
                                else:
                                    if features['Pesticide_Used'] <= 22.4200000763:
                                        return 9.3475000000
                                    else:
                                        return 7.1300000000
                            else:
                                if features['Wind_Speed'] <= 3.2449999452:
                                    return 9.2600000000
                                else:
                                    if features['Altitude'] <= 1927.0000000000:
                                        return 8.1433333333
                                    else:
                                        return 8.5500000000
                        else:
                            if features['Pesticide_Used'] <= 15.3699998856:
                                if features['P'] <= 53.0000000000:
                                    if features['Fertilizer_Used'] <= 187.9599990845:
                                        return 9.5200000000
                                    else:
                                        return 8.9100000000
                                else:
                                    if features['Humidity'] <= 46.3100013733:
                                        return 10.7000000000
                                    else:
                                        return 10.2466666667
                            else:
                                if features['Rainfall'] <= 2041.7650146484:
                                    if features['Irrigation_Type'] <= 0.5000000000:
                                        return 11.1350000000
                                    else:
                                        return 10.6350000000
                                else:
                                    if features['Humidity'] <= 51.9699993134:
                                        return 11.5200000000
                                    else:
                                        return 11.4400000000
                else:
                    if features['Humidity'] <= 36.5100002289:
                        if features['Region'] <= 2.0000000000:
                            return 7.5100000000
                        else:
                            if features['Temperature'] <= 20.5299997330:
                                return 8.7900000000
                            else:
                                if features['Soil_Moisture'] <= 26.2149991989:
                                    return 8.4000000000
                                else:
                                    return 8.1200000000
                    else:
                        if features['Pesticide_Used'] <= 16.7849998474:
                            if features['Region'] <= 1.5000000000:
                                if features['Sunlight_Hours'] <= 5.2400000095:
                                    if features['Soil_Moisture'] <= 47.0349998474:
                                        return 10.8200000000
                                    else:
                                        return 11.1700000000
                                else:
                                    if features['K'] <= 124.0000000000:
                                        return 9.4683333333
                                    else:
                                        return 10.3480000000
                            else:
                                if features['Fertilizer_Used'] <= 132.2900009155:
                                    if features['Soil_Moisture'] <= 54.8899993896:
                                        return 9.8328571429
                                    else:
                                        return 10.9000000000
                                else:
                                    if features['Altitude'] <= 575.0000000000:
                                        return 10.4733333333
                                    else:
                                        return 11.5966666667
                        else:
                            if features['Soil_Moisture'] <= 37.5200004578:
                                if features['Organic_Carbon'] <= 1.2950000167:
                                    if features['Sunlight_Hours'] <= 7.0850000381:
                                        return 8.1333333333
                                    else:
                                        return 8.3750000000
                                else:
                                    if features['K'] <= 88.0000000000:
                                        return 9.4800000000
                                    else:
                                        return 10.1100000000
                            else:
                                if features['Pesticide_Used'] <= 22.7999992371:
                                    if features['Wind_Speed'] <= 11.8150000572:
                                        return 9.4100000000
                                    else:
                                        return 9.9550000000
                                else:
                                    if features['Rainfall'] <= 1781.3499755859:
                                        return 11.0850000000
                                    else:
                                        return 10.3750000000
            else:
                if features['Fertilizer_Used'] <= 122.6649971008:
                    if features['Soil_Moisture'] <= 24.6250000000:
                        if features['Soil_pH'] <= 5.9349999428:
                            if features['Soil_Type'] <= 0.5000000000:
                                return 9.2200000000
                            else:
                                if features['Soil_Moisture'] <= 18.3249998093:
                                    return 7.5400000000
                                else:
                                    if features['Sunlight_Hours'] <= 5.8299999237:
                                        return 8.5000000000
                                    else:
                                        return 8.0500000000
                        else:
                            if features['Rainfall'] <= 2665.7950439453:
                                if features['Soil_pH'] <= 7.4200000763:
                                    if features['Season'] <= 0.5000000000:
                                        return 9.5800000000
                                    else:
                                        return 9.8150000000
                                else:
                                    if features['Soil_pH'] <= 7.6849999428:
                                        return 9.3850000000
                                    else:
                                        return 9.2700000000
                            else:
                                return 8.0000000000
                    else:
                        if features['Soil_Moisture'] <= 62.1700000763:
                            if features['Humidity'] <= 89.5550003052:
                                if features['Temperature'] <= 35.6450004578:
                                    if features['K'] <= 44.5000000000:
                                        return 8.9166666667
                                    else:
                                        return 9.8077142857
                                else:
                                    if features['Altitude'] <= 1106.0000000000:
                                        return 11.1360000000
                                    else:
                                        return 9.2500000000
                            else:
                                return 12.3600000000
                        else:
                            return 12.4500000000
                else:
                    if features['Soil_pH'] <= 7.8949999809:
                        if features['Wind_Speed'] <= 6.3000001907:
                            if features['P'] <= 45.5000000000:
                                if features['Sunlight_Hours'] <= 6.5749998093:
                                    if features['Organic_Carbon'] <= 1.2599999905:
                                        return 10.2200000000
                                    else:
                                        return 9.5000000000
                                else:
                                    if features['Pesticide_Used'] <= 13.3800001144:
                                        return 11.6700000000
                                    else:
                                        return 10.9600000000
                            else:
                                if features['Sunlight_Hours'] <= 8.2950000763:
                                    if features['Soil_pH'] <= 6.6549999714:
                                        return 12.9300000000
                                    else:
                                        return 14.3200000000
                                else:
                                    if features['N'] <= 58.5000000000:
                                        return 11.1500000000
                                    else:
                                        return 12.5400000000
                        else:
                            if features['Pesticide_Used'] <= 13.6949996948:
                                if features['Humidity'] <= 54.0300006866:
                                    if features['Sunlight_Hours'] <= 8.5749998093:
                                        return 10.1728571429
                                    else:
                                        return 11.0780000000
                                else:
                                    if features['Fertilizer_Used'] <= 158.8550033569:
                                        return 9.4900000000
                                    else:
                                        return 10.1911111111
                            else:
                                if features['K'] <= 102.5000000000:
                                    if features['Soil_pH'] <= 5.4949998856:
                                        return 9.9025000000
                                    else:
                                        return 11.0350000000
                                else:
                                    if features['Pesticide_Used'] <= 21.4049997330:
                                        return 11.9100000000
                                    else:
                                        return 13.3900000000
                    else:
                        if features['Soil_Type'] <= 0.5000000000:
                            return 9.1500000000
                        else:
                            return 6.8100000000
    else:
        if features['Rainfall'] <= 1543.9949951172:
            if features['Soil_Moisture'] <= 40.8950004578:
                if features['Fertilizer_Used'] <= 270.3550109863:
                    if features['Soil_Moisture'] <= 22.7049999237:
                        if features['Humidity'] <= 86.1199989319:
                            if features['Organic_Carbon'] <= 1.5199999809:
                                if features['P'] <= 45.5000000000:
                                    if features['Sunlight_Hours'] <= 5.3800001144:
                                        return 8.2350000000
                                    else:
                                        return 8.5433333333
                                else:
                                    if features['K'] <= 87.0000000000:
                                        return 8.1633333333
                                    else:
                                        return 7.8360000000
                            else:
                                return 9.4000000000
                        else:
                            return 10.0300000000
                    else:
                        if features['Rainfall'] <= 808.1700134277:
                            if features['Region'] <= 0.5000000000:
                                if features['Pesticide_Used'] <= 17.7199997902:
                                    if features['Soil_Moisture'] <= 27.1300001144:
                                        return 10.5900000000
                                    else:
                                        return 11.3300000000
                                else:
                                    if features['Soil_pH'] <= 6.4199998379:
                                        return 8.5300000000
                                    else:
                                        return 8.8100000000
                            else:
                                if features['K'] <= 145.5000000000:
                                    if features['Organic_Carbon'] <= 1.0799999833:
                                        return 8.9276470588
                                    else:
                                        return 8.1772727273
                                else:
                                    return 10.9800000000
                        else:
                            if features['N'] <= 41.0000000000:
                                if features['Humidity'] <= 79.6850013733:
                                    if features['Fertilizer_Used'] <= 215.3750000000:
                                        return 8.4000000000
                                    else:
                                        return 8.7900000000
                                else:
                                    return 7.0100000000
                            else:
                                if features['Fertilizer_Used'] <= 232.8100051880:
                                    if features['Humidity'] <= 67.3050003052:
                                        return 10.9272727273
                                    else:
                                        return 9.7750000000
                                else:
                                    if features['Soil_pH'] <= 6.7750000954:
                                        return 9.9636363636
                                    else:
                                        return 8.8485714286
                else:
                    if features['Temperature'] <= 20.8099994659:
                        if features['Altitude'] <= 1381.5000000000:
                            if features['Region'] <= 3.5000000000:
                                if features['Rainfall'] <= 330.9450073242:
                                    if features['Soil_Type'] <= 1.5000000000:
                                        return 11.2800000000
                                    else:
                                        return 10.7900000000
                                else:
                                    if features['Soil_Moisture'] <= 34.2250003815:
                                        return 8.9130769231
                                    else:
                                        return 10.0125000000
                            else:
                                if features['K'] <= 101.0000000000:
                                    if features['Rainfall'] <= 1501.4299926758:
                                        return 9.9000000000
                                    else:
                                        return 10.0400000000
                                else:
                                    if features['Fertilizer_Used'] <= 294.9700012207:
                                        return 11.9000000000
                                    else:
                                        return 10.8800000000
                        else:
                            if features['Altitude'] <= 1450.5000000000:
                                return 7.1200000000
                            else:
                                if features['Wind_Speed'] <= 4.4199999571:
                                    if features['Wind_Speed'] <= 2.2050000429:
                                        return 9.6100000000
                                    else:
                                        return 9.3700000000
                                else:
                                    if features['Fertilizer_Used'] <= 279.4450073242:
                                        return 8.7200000000
                                    else:
                                        return 8.4075000000
                    else:
                        if features['Soil_pH'] <= 5.0999999046:
                            if features['N'] <= 82.0000000000:
                                return 7.2200000000
                            else:
                                return 8.8100000000
                        else:
                            if features['Season'] <= 0.5000000000:
                                if features['K'] <= 29.5000000000:
                                    if features['Rainfall'] <= 392.4150085449:
                                        return 10.4700000000
                                    else:
                                        return 10.0150000000
                                else:
                                    if features['Temperature'] <= 33.5100002289:
                                        return 10.9522222222
                                    else:
                                        return 11.6920000000
                            else:
                                if features['Altitude'] <= 1420.5000000000:
                                    if features['Fertilizer_Used'] <= 291.2250061035:
                                        return 9.3375000000
                                    else:
                                        return 10.1718750000
                                else:
                                    if features['Pesticide_Used'] <= 12.4950003624:
                                        return 10.2500000000
                                    else:
                                        return 11.7766666667
            else:
                if features['Fertilizer_Used'] <= 310.6400146484:
                    if features['Rainfall'] <= 1086.3599853516:
                        if features['Fertilizer_Used'] <= 265.8900146484:
                            if features['Soil_pH'] <= 7.3550000191:
                                if features['Soil_Moisture'] <= 55.7549991608:
                                    if features['Rainfall'] <= 921.7649841309:
                                        return 9.4485000000
                                    else:
                                        return 11.1850000000
                                else:
                                    if features['Rainfall'] <= 908.2449951172:
                                        return 10.8136363636
                                    else:
                                        return 9.5550000000
                            else:
                                if features['K'] <= 55.0000000000:
                                    if features['Soil_Moisture'] <= 57.4350013733:
                                        return 8.6380000000
                                    else:
                                        return 7.7650000000
                                else:
                                    if features['Soil_Type'] <= 1.5000000000:
                                        return 10.0266666667
                                    else:
                                        return 9.4800000000
                        else:
                            if features['Organic_Carbon'] <= 0.6800000072:
                                if features['P'] <= 38.5000000000:
                                    if features['Soil_Type'] <= 0.5000000000:
                                        return 10.5000000000
                                    else:
                                        return 10.5700000000
                                else:
                                    if features['Region'] <= 1.5000000000:
                                        return 8.9000000000
                                    else:
                                        return 9.3400000000
                            else:
                                if features['Soil_pH'] <= 6.5799999237:
                                    if features['N'] <= 102.5000000000:
                                        return 10.8600000000
                                    else:
                                        return 11.6900000000
                                else:
                                    if features['N'] <= 96.5000000000:
                                        return 10.3033333333
                                    else:
                                        return 10.8316666667
                    else:
                        if features['Pesticide_Used'] <= 20.8399991989:
                            if features['K'] <= 74.5000000000:
                                if features['Wind_Speed'] <= 16.4000005722:
                                    if features['Soil_pH'] <= 5.2200000286:
                                        return 10.0083333333
                                    else:
                                        return 11.1270000000
                                else:
                                    if features['Organic_Carbon'] <= 1.4299999475:
                                        return 8.4500000000
                                    else:
                                        return 8.4600000000
                            else:
                                if features['K'] <= 81.5000000000:
                                    if features['Altitude'] <= 1993.0000000000:
                                        return 11.9650000000
                                    else:
                                        return 14.2300000000
                                else:
                                    if features['Humidity'] <= 39.3400001526:
                                        return 12.6233333333
                                    else:
                                        return 11.0104545455
                        else:
                            if features['Humidity'] <= 54.9400005341:
                                if features['Altitude'] <= 444.5000000000:
                                    return 11.4200000000
                                else:
                                    return 11.4600000000
                            else:
                                if features['P'] <= 17.0000000000:
                                    return 6.8700000000
                                else:
                                    if features['P'] <= 54.5000000000:
                                        return 9.5175000000
                                    else:
                                        return 8.6200000000
                else:
                    if features['Rainfall'] <= 900.2449951172:
                        if features['N'] <= 131.0000000000:
                            if features['Altitude'] <= 1562.5000000000:
                                if features['Soil_pH'] <= 5.3199999332:
                                    if features['Region'] <= 0.5000000000:
                                        return 9.1200000000
                                    else:
                                        return 9.6950000000
                                else:
                                    if features['Fertilizer_Used'] <= 314.0500030518:
                                        return 9.5900000000
                                    else:
                                        return 10.6171428571
                            else:
                                if features['Rainfall'] <= 686.0899963379:
                                    return 11.2700000000
                                else:
                                    return 12.0800000000
                        else:
                            if features['Wind_Speed'] <= 10.9300003052:
                                if features['Fertilizer_Used'] <= 337.2850036621:
                                    return 12.2800000000
                                else:
                                    return 12.5500000000
                            else:
                                if features['Humidity'] <= 66.7449989319:
                                    return 12.7100000000
                                else:
                                    return 12.9900000000
                    else:
                        if features['Wind_Speed'] <= 9.0599999428:
                            if features['Rainfall'] <= 1340.2449951172:
                                if features['N'] <= 92.0000000000:
                                    if features['Organic_Carbon'] <= 1.2549999952:
                                        return 12.5850000000
                                    else:
                                        return 12.9200000000
                                else:
                                    if features['Soil_Type'] <= 1.0000000000:
                                        return 13.4300000000
                                    else:
                                        return 13.1000000000
                            else:
                                if features['Region'] <= 3.5000000000:
                                    if features['Region'] <= 2.5000000000:
                                        return 12.3000000000
                                    else:
                                        return 11.9300000000
                                else:
                                    return 11.2300000000
                        else:
                            if features['K'] <= 56.5000000000:
                                if features['Organic_Carbon'] <= 1.0000000298:
                                    return 11.7000000000
                                else:
                                    return 11.4200000000
                            else:
                                if features['Wind_Speed'] <= 17.1250000000:
                                    if features['Pesticide_Used'] <= 6.8850000501:
                                        return 10.8400000000
                                    else:
                                        return 10.9400000000
                                else:
                                    return 11.0900000000
        else:
            if features['Soil_Moisture'] <= 53.3899993896:
                if features['Fertilizer_Used'] <= 305.4100036621:
                    if features['Rainfall'] <= 2342.6300048828:
                        if features['Wind_Speed'] <= 14.0649995804:
                            if features['Altitude'] <= 2045.5000000000:
                                if features['Temperature'] <= 17.4549999237:
                                    if features['Soil_pH'] <= 7.1399998665:
                                        return 12.3433333333
                                    else:
                                        return 10.6116666667
                                else:
                                    if features['Fertilizer_Used'] <= 289.3049926758:
                                        return 10.2676363636
                                    else:
                                        return 11.1890909091
                            else:
                                if features['Rainfall'] <= 2147.6250000000:
                                    if features['P'] <= 68.5000000000:
                                        return 12.2950000000
                                    else:
                                        return 12.9800000000
                                else:
                                    if features['Altitude'] <= 2173.0000000000:
                                        return 11.1000000000
                                    else:
                                        return 11.7500000000
                        else:
                            if features['N'] <= 130.5000000000:
                                if features['Temperature'] <= 16.2100000381:
                                    if features['K'] <= 75.0000000000:
                                        return 6.6000000000
                                    else:
                                        return 8.5425000000
                                else:
                                    if features['Pesticide_Used'] <= 3.3350000381:
                                        return 10.7066666667
                                    else:
                                        return 9.3076923077
                            else:
                                if features['Altitude'] <= 863.5000000000:
                                    if features['P'] <= 72.5000000000:
                                        return 10.1800000000
                                    else:
                                        return 8.6800000000
                                else:
                                    if features['Organic_Carbon'] <= 1.3199999928:
                                        return 11.9933333333
                                    else:
                                        return 10.7650000000
                    else:
                        if features['Soil_Moisture'] <= 45.3800010681:
                            if features['Humidity'] <= 39.0900001526:
                                if features['Soil_pH'] <= 6.3750000000:
                                    if features['Soil_pH'] <= 5.5450000763:
                                        return 8.4400000000
                                    else:
                                        return 8.6600000000
                                else:
                                    if features['Wind_Speed'] <= 13.3000001907:
                                        return 11.0000000000
                                    else:
                                        return 10.7100000000
                            else:
                                if features['Wind_Speed'] <= 5.7550001144:
                                    if features['Humidity'] <= 77.5600013733:
                                        return 12.2318181818
                                    else:
                                        return 11.2157142857
                                else:
                                    if features['Organic_Carbon'] <= 0.9399999976:
                                        return 11.5395000000
                                    else:
                                        return 10.6717647059
                        else:
                            if features['N'] <= 171.5000000000:
                                if features['Organic_Carbon'] <= 0.5099999905:
                                    if features['Wind_Speed'] <= 7.2249999046:
                                        return 12.2533333333
                                    else:
                                        return 11.2700000000
                                else:
                                    if features['Humidity'] <= 77.7749977112:
                                        return 13.1900000000
                                    else:
                                        return 12.2200000000
                            else:
                                if features['Organic_Carbon'] <= 0.8649999946:
                                    return 11.7100000000
                                else:
                                    return 10.6200000000
                else:
                    if features['Rainfall'] <= 2115.1149902344:
                        if features['Pesticide_Used'] <= 4.2650001049:
                            if features['Temperature'] <= 22.5549993515:
                                if features['Pesticide_Used'] <= 0.9800000191:
                                    if features['Soil_Type'] <= 2.0000000000:
                                        return 10.8700000000
                                    else:
                                        return 11.2900000000
                                else:
                                    if features['Soil_Moisture'] <= 31.2050008774:
                                        return 11.9800000000
                                    else:
                                        return 11.5900000000
                            else:
                                if features['Soil_Type'] <= 1.5000000000:
                                    if features['Organic_Carbon'] <= 1.0199999809:
                                        return 13.1500000000
                                    else:
                                        return 13.5200000000
                                else:
                                    if features['Irrigation_Type'] <= 0.5000000000:
                                        return 12.5500000000
                                    else:
                                        return 12.5500000000
                        else:
                            if features['Wind_Speed'] <= 4.8050000668:
                                if features['Temperature'] <= 31.1399993896:
                                    if features['N'] <= 95.0000000000:
                                        return 10.5800000000
                                    else:
                                        return 11.1233333333
                                else:
                                    if features['Sunlight_Hours'] <= 6.6050000191:
                                        return 9.9100000000
                                    else:
                                        return 9.6600000000
                            else:
                                if features['Pesticide_Used'] <= 22.2550001144:
                                    if features['Pesticide_Used'] <= 15.1549997330:
                                        return 11.6661538462
                                    else:
                                        return 10.9085714286
                                else:
                                    return 12.9000000000
                    else:
                        if features['Soil_Moisture'] <= 32.4549999237:
                            if features['Rainfall'] <= 2475.6650390625:
                                if features['N'] <= 120.0000000000:
                                    if features['N'] <= 94.0000000000:
                                        return 11.6950000000
                                    else:
                                        return 12.4633333333
                                else:
                                    if features['Wind_Speed'] <= 12.7749996185:
                                        return 13.5650000000
                                    else:
                                        return 12.9400000000
                            else:
                                if features['Organic_Carbon'] <= 0.5150000006:
                                    if features['Sunlight_Hours'] <= 10.2899999619:
                                        return 10.1050000000
                                    else:
                                        return 11.0700000000
                                else:
                                    if features['Altitude'] <= 1343.5000000000:
                                        return 11.6783333333
                                    else:
                                        return 10.8133333333
                        else:
                            if features['P'] <= 71.5000000000:
                                if features['Sunlight_Hours'] <= 8.1149997711:
                                    if features['Sunlight_Hours'] <= 7.0549998283:
                                        return 12.6544444444
                                    else:
                                        return 12.0600000000
                                else:
                                    if features['Altitude'] <= 991.5000000000:
                                        return 14.3900000000
                                    else:
                                        return 13.1150000000
                            else:
                                if features['Region'] <= 3.0000000000:
                                    if features['Soil_pH'] <= 6.5350000858:
                                        return 11.8200000000
                                    else:
                                        return 11.6700000000
                                else:
                                    return 11.0600000000
            else:
                if features['Fertilizer_Used'] <= 233.6550064087:
                    if features['Rainfall'] <= 2227.2099609375:
                        if features['Altitude'] <= 1037.0000000000:
                            if features['Humidity'] <= 51.9649982452:
                                if features['Season'] <= 0.5000000000:
                                    return 10.3300000000
                                else:
                                    if features['Temperature'] <= 13.7199997902:
                                        return 9.4400000000
                                    else:
                                        return 9.6050000000
                            else:
                                if features['Rainfall'] <= 1807.0150146484:
                                    return 10.0500000000
                                else:
                                    if features['Altitude'] <= 487.0000000000:
                                        return 10.8200000000
                                    else:
                                        return 10.5250000000
                        else:
                            if features['P'] <= 96.0000000000:
                                if features['Irrigation_Type'] <= 1.5000000000:
                                    return 11.2200000000
                                else:
                                    if features['Temperature'] <= 18.7649998665:
                                        return 11.8600000000
                                    else:
                                        return 11.6400000000
                            else:
                                return 12.7400000000
                    else:
                        if features['Soil_pH'] <= 5.6649999619:
                            if features['P'] <= 60.5000000000:
                                return 13.7900000000
                            else:
                                return 13.0000000000
                        else:
                            if features['P'] <= 45.0000000000:
                                if features['Soil_pH'] <= 6.6300001144:
                                    if features['Altitude'] <= 1276.0000000000:
                                        return 11.8400000000
                                    else:
                                        return 11.6900000000
                                else:
                                    if features['Soil_pH'] <= 7.2400000095:
                                        return 12.8700000000
                                    else:
                                        return 12.3000000000
                            else:
                                if features['Rainfall'] <= 2339.5749511719:
                                    if features['Irrigation_Type'] <= 1.5000000000:
                                        return 11.6600000000
                                    else:
                                        return 11.9700000000
                                else:
                                    if features['Humidity'] <= 37.2099990845:
                                        return 11.0000000000
                                    else:
                                        return 11.1800000000
                else:
                    if features['N'] <= 111.5000000000:
                        if features['Temperature'] <= 11.6949996948:
                            if features['Season'] <= 1.5000000000:
                                return 15.6000000000
                            else:
                                return 13.4900000000
                        else:
                            if features['Altitude'] <= 1859.5000000000:
                                if features['Sunlight_Hours'] <= 5.3650000095:
                                    if features['Organic_Carbon'] <= 1.4150000215:
                                        return 10.7400000000
                                    else:
                                        return 10.3000000000
                                else:
                                    if features['Rainfall'] <= 2350.8499755859:
                                        return 11.6415789474
                                    else:
                                        return 12.4011111111
                            else:
                                if features['N'] <= 50.5000000000:
                                    return 12.1400000000
                                else:
                                    if features['Soil_pH'] <= 7.1050000191:
                                        return 13.3500000000
                                    else:
                                        return 13.7000000000
                    else:
                        if features['Rainfall'] <= 2288.9750976562:
                            if features['Rainfall'] <= 1963.7500000000:
                                if features['Wind_Speed'] <= 17.6000003815:
                                    if features['Sunlight_Hours'] <= 5.0750000477:
                                        return 12.7750000000
                                    else:
                                        return 11.9766666667
                                else:
                                    return 13.6100000000
                            else:
                                if features['Fertilizer_Used'] <= 260.0749969482:
                                    return 12.0200000000
                                else:
                                    if features['Fertilizer_Used'] <= 298.7750091553:
                                        return 13.4066666667
                                    else:
                                        return 12.8725000000
                        else:
                            if features['Temperature'] <= 30.0849990845:
                                if features['Altitude'] <= 86.0000000000:
                                    return 13.8000000000
                                else:
                                    if features['Soil_pH'] <= 7.2149999142:
                                        return 13.1440000000
                                    else:
                                        return 12.7850000000
                            else:
                                if features['Organic_Carbon'] <= 0.8999999762:
                                    if features['Altitude'] <= 1765.5000000000:
                                        return 14.7050000000
                                    else:
                                        return 13.9466666667
                                else:
                                    if features['Altitude'] <= 1497.0000000000:
                                        return 15.1600000000
                                    else:
                                        return 15.5600000000
