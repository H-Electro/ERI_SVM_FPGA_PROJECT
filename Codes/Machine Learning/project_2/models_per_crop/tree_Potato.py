def predict_tree(features):
    if features['Fertilizer_Used'] <= 238.9849929810:
        if features['Rainfall'] <= 1363.5650024414:
            if features['Fertilizer_Used'] <= 126.2049980164:
                if features['Soil_Moisture'] <= 37.1399993896:
                    if features['Temperature'] <= 34.9049987793:
                        if features['K'] <= 99.5000000000:
                            if features['N'] <= 118.5000000000:
                                if features['Rainfall'] <= 718.6149902344:
                                    if features['Altitude'] <= 559.5000000000:
                                        return 21.4000000000
                                    else:
                                        return 20.5840000000
                                else:
                                    if features['Altitude'] <= 369.0000000000:
                                        return 23.1100000000
                                    else:
                                        return 21.7570000000
                            else:
                                if features['Soil_pH'] <= 6.9749999046:
                                    if features['Season'] <= 0.5000000000:
                                        return 23.0300000000
                                    else:
                                        return 22.5600000000
                                else:
                                    if features['Soil_pH'] <= 7.7799999714:
                                        return 22.1150000000
                                    else:
                                        return 21.4200000000
                        else:
                            if features['Soil_Type'] <= 1.5000000000:
                                if features['Sunlight_Hours'] <= 7.2999999523:
                                    if features['Pesticide_Used'] <= 10.7200003862:
                                        return 22.9000000000
                                    else:
                                        return 23.3700000000
                                else:
                                    if features['Sunlight_Hours'] <= 8.2999999523:
                                        return 24.0700000000
                                    else:
                                        return 23.7700000000
                            else:
                                if features['Temperature'] <= 22.4250001907:
                                    if features['Soil_pH'] <= 7.5000000000:
                                        return 23.1300000000
                                    else:
                                        return 22.4500000000
                                else:
                                    if features['Fertilizer_Used'] <= 75.6499977112:
                                        return 23.0200000000
                                    else:
                                        return 21.3700000000
                    else:
                        if features['Wind_Speed'] <= 14.7199997902:
                            if features['Fertilizer_Used'] <= 91.6049995422:
                                if features['Humidity'] <= 45.3149986267:
                                    if features['Altitude'] <= 2110.0000000000:
                                        return 23.3100000000
                                    else:
                                        return 23.3700000000
                                else:
                                    if features['Sunlight_Hours'] <= 8.6100001335:
                                        return 22.7133333333
                                    else:
                                        return 22.1700000000
                            else:
                                if features['P'] <= 54.5000000000:
                                    if features['Irrigation_Type'] <= 1.5000000000:
                                        return 23.7100000000
                                    else:
                                        return 23.2966666667
                                else:
                                    if features['P'] <= 70.5000000000:
                                        return 24.6300000000
                                    else:
                                        return 23.4650000000
                        else:
                            if features['Season'] <= 1.0000000000:
                                return 21.7200000000
                            else:
                                if features['Soil_Type'] <= 1.0000000000:
                                    return 21.1900000000
                                else:
                                    return 20.8300000000
                else:
                    if features['K'] <= 36.5000000000:
                        if features['Humidity'] <= 48.0600013733:
                            if features['Sunlight_Hours'] <= 10.2799997330:
                                if features['Humidity'] <= 43.1700000763:
                                    return 21.3800000000
                                else:
                                    return 21.4200000000
                            else:
                                return 20.3400000000
                        else:
                            if features['Pesticide_Used'] <= 9.7649998665:
                                if features['N'] <= 87.0000000000:
                                    return 23.0600000000
                                else:
                                    if features['Pesticide_Used'] <= 5.5650000572:
                                        return 23.7400000000
                                    else:
                                        return 23.9500000000
                            else:
                                if features['Wind_Speed'] <= 3.8400000334:
                                    return 21.6000000000
                                else:
                                    if features['Altitude'] <= 1698.5000000000:
                                        return 22.5850000000
                                    else:
                                        return 22.2300000000
                    else:
                        if features['N'] <= 133.5000000000:
                            if features['P'] <= 28.5000000000:
                                if features['K'] <= 111.0000000000:
                                    if features['Pesticide_Used'] <= 0.8849999905:
                                        return 25.0400000000
                                    else:
                                        return 24.4850000000
                                else:
                                    if features['Irrigation_Type'] <= 1.5000000000:
                                        return 23.5550000000
                                    else:
                                        return 23.9700000000
                            else:
                                if features['Rainfall'] <= 370.8549957275:
                                    if features['Soil_Moisture'] <= 45.1700000763:
                                        return 23.0700000000
                                    else:
                                        return 21.6566666667
                                else:
                                    if features['Soil_pH'] <= 5.8350000381:
                                        return 22.7292307692
                                    else:
                                        return 23.5918750000
                        else:
                            if features['Soil_Type'] <= 0.5000000000:
                                if features['Sunlight_Hours'] <= 6.8799998760:
                                    return 25.0800000000
                                else:
                                    return 25.5700000000
                            else:
                                if features['Irrigation_Type'] <= 2.5000000000:
                                    if features['N'] <= 136.5000000000:
                                        return 25.3200000000
                                    else:
                                        return 24.2316666667
                                else:
                                    if features['Soil_pH'] <= 7.7650001049:
                                        return 23.3450000000
                                    else:
                                        return 23.7400000000
            else:
                if features['Soil_Moisture'] <= 28.9949998856:
                    if features['Soil_pH'] <= 6.9800000191:
                        if features['Soil_pH'] <= 6.0799999237:
                            if features['Temperature'] <= 20.8100004196:
                                if features['P'] <= 77.0000000000:
                                    if features['Sunlight_Hours'] <= 6.2899999619:
                                        return 22.9950000000
                                    else:
                                        return 23.8333333333
                                else:
                                    if features['Soil_Type'] <= 0.5000000000:
                                        return 25.4000000000
                                    else:
                                        return 25.6700000000
                            else:
                                if features['Temperature'] <= 30.8400001526:
                                    if features['P'] <= 22.0000000000:
                                        return 22.8000000000
                                    else:
                                        return 21.3433333333
                                else:
                                    if features['Sunlight_Hours'] <= 7.7249999046:
                                        return 23.2600000000
                                    else:
                                        return 22.3375000000
                        else:
                            if features['N'] <= 83.5000000000:
                                if features['Organic_Carbon'] <= 1.3750000000:
                                    if features['Sunlight_Hours'] <= 7.6499998569:
                                        return 23.5000000000
                                    else:
                                        return 23.8933333333
                                else:
                                    if features['Fertilizer_Used'] <= 218.4150009155:
                                        return 22.8800000000
                                    else:
                                        return 23.1900000000
                            else:
                                if features['Temperature'] <= 27.9399995804:
                                    if features['Rainfall'] <= 717.7799987793:
                                        return 23.5250000000
                                    else:
                                        return 24.8820000000
                                else:
                                    if features['Wind_Speed'] <= 6.6949999332:
                                        return 26.5100000000
                                    else:
                                        return 25.9850000000
                    else:
                        if features['Soil_Moisture'] <= 22.2799997330:
                            if features['Rainfall'] <= 770.9249877930:
                                if features['K'] <= 79.5000000000:
                                    if features['Soil_pH'] <= 7.2950000763:
                                        return 22.0400000000
                                    else:
                                        return 21.0633333333
                                else:
                                    if features['Rainfall'] <= 382.6300048828:
                                        return 22.0550000000
                                    else:
                                        return 22.6425000000
                            else:
                                if features['Rainfall'] <= 1271.1100463867:
                                    if features['Soil_pH'] <= 7.7500000000:
                                        return 22.9500000000
                                    else:
                                        return 22.2500000000
                                else:
                                    return 24.1500000000
                        else:
                            if features['Sunlight_Hours'] <= 4.4500000477:
                                return 20.7600000000
                            else:
                                if features['Altitude'] <= 553.5000000000:
                                    if features['Wind_Speed'] <= 8.3650002480:
                                        return 22.1300000000
                                    else:
                                        return 22.8200000000
                                else:
                                    if features['N'] <= 151.5000000000:
                                        return 23.5870000000
                                    else:
                                        return 24.5200000000
                else:
                    if features['Soil_Moisture'] <= 57.0900001526:
                        if features['Altitude'] <= 276.0000000000:
                            if features['Soil_Type'] <= 0.5000000000:
                                if features['Altitude'] <= 55.0000000000:
                                    if features['Region'] <= 0.5000000000:
                                        return 26.3500000000
                                    else:
                                        return 26.3000000000
                                else:
                                    if features['Soil_pH'] <= 6.0000000000:
                                        return 25.1000000000
                                    else:
                                        return 25.6550000000
                            else:
                                if features['Humidity'] <= 61.3249988556:
                                    if features['Sunlight_Hours'] <= 7.8599998951:
                                        return 24.6700000000
                                    else:
                                        return 23.5500000000
                                else:
                                    if features['Region'] <= 2.5000000000:
                                        return 25.4400000000
                                    else:
                                        return 24.9400000000
                        else:
                            if features['Fertilizer_Used'] <= 198.0600051880:
                                if features['Humidity'] <= 31.0749998093:
                                    if features['Soil_pH'] <= 7.0399999619:
                                        return 25.4200000000
                                    else:
                                        return 26.7100000000
                                else:
                                    if features['Wind_Speed'] <= 16.4200000763:
                                        return 23.5366666667
                                    else:
                                        return 24.9466666667
                            else:
                                if features['P'] <= 59.5000000000:
                                    if features['Humidity'] <= 36.2749996185:
                                        return 22.7250000000
                                    else:
                                        return 24.2020000000
                                else:
                                    if features['Season'] <= 0.5000000000:
                                        return 25.3810000000
                                    else:
                                        return 24.5246153846
                    else:
                        if features['Soil_Moisture'] <= 59.0750007629:
                            if features['Sunlight_Hours'] <= 6.7899999619:
                                if features['Soil_Moisture'] <= 58.5149993896:
                                    if features['N'] <= 53.0000000000:
                                        return 26.6300000000
                                    else:
                                        return 26.3700000000
                                else:
                                    if features['Fertilizer_Used'] <= 190.6399993896:
                                        return 25.9800000000
                                    else:
                                        return 25.9700000000
                            else:
                                if features['Fertilizer_Used'] <= 209.5150070190:
                                    if features['Irrigation_Type'] <= 1.5000000000:
                                        return 25.6750000000
                                    else:
                                        return 25.4300000000
                                else:
                                    if features['Organic_Carbon'] <= 0.7299999893:
                                        return 24.3200000000
                                    else:
                                        return 24.5800000000
                        else:
                            if features['Altitude'] <= 1996.5000000000:
                                if features['Pesticide_Used'] <= 22.9000005722:
                                    if features['Fertilizer_Used'] <= 146.5950012207:
                                        return 24.3433333333
                                    else:
                                        return 25.4113333333
                                else:
                                    if features['Organic_Carbon'] <= 0.9149999917:
                                        return 23.9100000000
                                    else:
                                        return 23.3500000000
                            else:
                                if features['P'] <= 79.5000000000:
                                    return 24.1300000000
                                else:
                                    if features['Sunlight_Hours'] <= 8.0799996853:
                                        return 22.9400000000
                                    else:
                                        return 22.6900000000
        else:
            if features['Soil_Moisture'] <= 45.6649990082:
                if features['Rainfall'] <= 2071.1700439453:
                    if features['Wind_Speed'] <= 13.2750000954:
                        if features['Fertilizer_Used'] <= 131.1399993896:
                            if features['P'] <= 98.0000000000:
                                if features['Organic_Carbon'] <= 1.4149999619:
                                    if features['Rainfall'] <= 1633.1600341797:
                                        return 22.8137500000
                                    else:
                                        return 23.9757692308
                                else:
                                    if features['Altitude'] <= 1569.0000000000:
                                        return 24.6650000000
                                    else:
                                        return 25.8050000000
                            else:
                                return 26.8300000000
                        else:
                            if features['Pesticide_Used'] <= 3.7249999046:
                                if features['K'] <= 118.0000000000:
                                    if features['Irrigation_Type'] <= 0.5000000000:
                                        return 23.8300000000
                                    else:
                                        return 22.9700000000
                                else:
                                    return 26.1700000000
                            else:
                                if features['Sunlight_Hours'] <= 10.3899998665:
                                    if features['Rainfall'] <= 1901.2199707031:
                                        return 25.4319444444
                                    else:
                                        return 24.3100000000
                                else:
                                    if features['Fertilizer_Used'] <= 178.1849975586:
                                        return 24.6750000000
                                    else:
                                        return 23.2500000000
                    else:
                        if features['N'] <= 156.5000000000:
                            if features['Humidity'] <= 60.3550014496:
                                if features['P'] <= 96.5000000000:
                                    if features['Soil_pH'] <= 8.0999999046:
                                        return 23.7828571429
                                    else:
                                        return 22.0100000000
                                else:
                                    if features['P'] <= 97.5000000000:
                                        return 24.8700000000
                                    else:
                                        return 25.4800000000
                            else:
                                if features['Humidity'] <= 73.0300025940:
                                    if features['N'] <= 105.0000000000:
                                        return 21.9760000000
                                    else:
                                        return 23.1725000000
                                else:
                                    if features['Soil_Moisture'] <= 37.8549995422:
                                        return 23.8560000000
                                    else:
                                        return 21.9000000000
                        else:
                            if features['Sunlight_Hours'] <= 7.1449999809:
                                if features['Altitude'] <= 1747.0000000000:
                                    if features['Soil_pH'] <= 6.2450001240:
                                        return 23.0150000000
                                    else:
                                        return 23.7633333333
                                else:
                                    return 25.4800000000
                            else:
                                if features['K'] <= 83.5000000000:
                                    if features['N'] <= 167.0000000000:
                                        return 25.3900000000
                                    else:
                                        return 25.8300000000
                                else:
                                    if features['Organic_Carbon'] <= 1.0550000072:
                                        return 26.5400000000
                                    else:
                                        return 27.5500000000
                else:
                    if features['Fertilizer_Used'] <= 128.4350051880:
                        if features['Soil_Moisture'] <= 21.3100004196:
                            if features['Pesticide_Used'] <= 9.7300000191:
                                if features['K'] <= 93.5000000000:
                                    if features['Organic_Carbon'] <= 0.3649999946:
                                        return 22.4600000000
                                    else:
                                        return 22.2450000000
                                else:
                                    return 23.0300000000
                            else:
                                if features['Altitude'] <= 1825.5000000000:
                                    if features['Temperature'] <= 30.0750007629:
                                        return 23.7550000000
                                    else:
                                        return 24.2950000000
                                else:
                                    return 24.9600000000
                        else:
                            if features['Soil_pH'] <= 7.2850000858:
                                if features['P'] <= 55.5000000000:
                                    if features['Fertilizer_Used'] <= 96.3049964905:
                                        return 25.3300000000
                                    else:
                                        return 24.2600000000
                                else:
                                    if features['Fertilizer_Used'] <= 101.3799972534:
                                        return 25.1171428571
                                    else:
                                        return 25.9166666667
                            else:
                                if features['Altitude'] <= 1591.5000000000:
                                    if features['Irrigation_Type'] <= 0.5000000000:
                                        return 24.4625000000
                                    else:
                                        return 23.2622222222
                                else:
                                    if features['Altitude'] <= 1940.5000000000:
                                        return 24.4700000000
                                    else:
                                        return 25.2400000000
                    else:
                        if features['P'] <= 80.0000000000:
                            if features['Organic_Carbon'] <= 0.3100000024:
                                return 22.5300000000
                            else:
                                if features['Soil_Moisture'] <= 15.8700003624:
                                    return 22.5800000000
                                else:
                                    if features['Wind_Speed'] <= 3.1800000668:
                                        return 26.1657142857
                                    else:
                                        return 25.1840816327
                        else:
                            if features['Rainfall'] <= 2708.1499023438:
                                if features['Organic_Carbon'] <= 0.7899999917:
                                    if features['N'] <= 71.5000000000:
                                        return 24.3200000000
                                    else:
                                        return 25.8316666667
                                else:
                                    if features['Altitude'] <= 1985.0000000000:
                                        return 26.9622222222
                                    else:
                                        return 25.1700000000
                            else:
                                if features['Fertilizer_Used'] <= 176.8349990845:
                                    return 24.1900000000
                                else:
                                    return 24.3500000000
            else:
                if features['Fertilizer_Used'] <= 110.5799980164:
                    if features['Rainfall'] <= 2233.9100341797:
                        if features['Soil_Moisture'] <= 49.0599994659:
                            if features['Rainfall'] <= 1596.4149780273:
                                if features['Altitude'] <= 1665.5000000000:
                                    return 26.0900000000
                                else:
                                    return 25.4500000000
                            else:
                                if features['Fertilizer_Used'] <= 76.5699996948:
                                    return 24.2700000000
                                else:
                                    if features['Wind_Speed'] <= 9.9500000477:
                                        return 25.2750000000
                                    else:
                                        return 24.8750000000
                        else:
                            if features['Organic_Carbon'] <= 1.5149999857:
                                if features['Rainfall'] <= 1672.9600219727:
                                    if features['P'] <= 58.5000000000:
                                        return 23.9600000000
                                    else:
                                        return 23.0820000000
                                else:
                                    if features['Sunlight_Hours'] <= 4.5600001812:
                                        return 25.6700000000
                                    else:
                                        return 24.2688888889
                            else:
                                if features['Pesticide_Used'] <= 16.5549998283:
                                    return 22.7100000000
                                else:
                                    return 21.5800000000
                    else:
                        if features['Temperature'] <= 31.0050001144:
                            if features['Altitude'] <= 1628.5000000000:
                                if features['Soil_Type'] <= 0.5000000000:
                                    if features['Fertilizer_Used'] <= 92.4200019836:
                                        return 25.4200000000
                                    else:
                                        return 24.7500000000
                                else:
                                    if features['Wind_Speed'] <= 6.1949999332:
                                        return 27.1750000000
                                    else:
                                        return 26.4600000000
                            else:
                                if features['N'] <= 81.0000000000:
                                    return 25.5200000000
                                else:
                                    if features['Organic_Carbon'] <= 0.9849999845:
                                        return 24.6500000000
                                    else:
                                        return 24.9100000000
                        else:
                            if features['Irrigation_Type'] <= 2.5000000000:
                                if features['Soil_Type'] <= 1.0000000000:
                                    return 24.0800000000
                                else:
                                    return 24.1200000000
                            else:
                                return 23.9600000000
                else:
                    if features['Rainfall'] <= 2468.3900146484:
                        if features['K'] <= 123.5000000000:
                            if features['N'] <= 153.0000000000:
                                if features['Soil_Moisture'] <= 51.2650012970:
                                    if features['Pesticide_Used'] <= 14.6700000763:
                                        return 23.9150000000
                                    else:
                                        return 25.2960000000
                                else:
                                    if features['Wind_Speed'] <= 13.8200001717:
                                        return 25.8184375000
                                    else:
                                        return 24.3763636364
                            else:
                                if features['N'] <= 167.5000000000:
                                    if features['Region'] <= 2.0000000000:
                                        return 26.6100000000
                                    else:
                                        return 27.6950000000
                                else:
                                    if features['Humidity'] <= 79.0099983215:
                                        return 25.7240000000
                                    else:
                                        return 24.4000000000
                        else:
                            if features['K'] <= 145.0000000000:
                                if features['Soil_pH'] <= 6.0899999142:
                                    if features['K'] <= 124.5000000000:
                                        return 26.8400000000
                                    else:
                                        return 25.2000000000
                                else:
                                    if features['P'] <= 93.5000000000:
                                        return 26.5222222222
                                    else:
                                        return 28.1700000000
                            else:
                                if features['Soil_Moisture'] <= 47.2449989319:
                                    return 26.9300000000
                                else:
                                    if features['Rainfall'] <= 1859.8800048828:
                                        return 28.0000000000
                                    else:
                                        return 28.4700000000
                    else:
                        if features['K'] <= 82.0000000000:
                            if features['Temperature'] <= 26.0150003433:
                                if features['K'] <= 35.5000000000:
                                    if features['Soil_Moisture'] <= 56.1900005341:
                                        return 28.1900000000
                                    else:
                                        return 27.0100000000
                                else:
                                    if features['Fertilizer_Used'] <= 181.0449981689:
                                        return 25.9540000000
                                    else:
                                        return 26.8675000000
                            else:
                                if features['Rainfall'] <= 2749.7850341797:
                                    if features['Rainfall'] <= 2642.9150390625:
                                        return 25.3560000000
                                    else:
                                        return 26.3000000000
                                else:
                                    return 24.1900000000
                        else:
                            if features['Temperature'] <= 14.7050004005:
                                if features['Pesticide_Used'] <= 17.6999998093:
                                    if features['Sunlight_Hours'] <= 6.2899999619:
                                        return 26.8400000000
                                    else:
                                        return 26.8300000000
                                else:
                                    if features['K'] <= 122.0000000000:
                                        return 25.9500000000
                                    else:
                                        return 25.3800000000
                            else:
                                if features['Sunlight_Hours'] <= 7.2149999142:
                                    if features['Sunlight_Hours'] <= 5.7000000477:
                                        return 27.7400000000
                                    else:
                                        return 28.4633333333
                                else:
                                    if features['Rainfall'] <= 2497.0000000000:
                                        return 26.3000000000
                                    else:
                                        return 27.3125000000
    else:
        if features['Rainfall'] <= 1455.1799926758:
            if features['Soil_Moisture'] <= 24.4049997330:
                if features['Rainfall'] <= 1099.5549926758:
                    if features['Wind_Speed'] <= 14.8250002861:
                        if features['Soil_Moisture'] <= 16.8299999237:
                            if features['Temperature'] <= 31.5150003433:
                                if features['Rainfall'] <= 658.2000122070:
                                    return 22.1800000000
                                else:
                                    if features['Soil_pH'] <= 6.6050000191:
                                        return 23.1250000000
                                    else:
                                        return 23.5300000000
                            else:
                                if features['Wind_Speed'] <= 3.1399999857:
                                    return 24.3700000000
                                else:
                                    return 24.4900000000
                        else:
                            if features['P'] <= 55.5000000000:
                                if features['Soil_Moisture'] <= 18.1400003433:
                                    if features['Soil_pH'] <= 6.4049999714:
                                        return 25.2600000000
                                    else:
                                        return 24.7100000000
                                else:
                                    if features['Organic_Carbon'] <= 1.1499999762:
                                        return 23.5966666667
                                    else:
                                        return 24.2066666667
                            else:
                                if features['Organic_Carbon'] <= 1.0599999726:
                                    if features['Temperature'] <= 35.8899993896:
                                        return 25.0000000000
                                    else:
                                        return 25.3700000000
                                else:
                                    if features['Temperature'] <= 20.9800004959:
                                        return 24.3400000000
                                    else:
                                        return 24.7100000000
                    else:
                        if features['N'] <= 117.5000000000:
                            if features['Fertilizer_Used'] <= 333.2200012207:
                                if features['Pesticide_Used'] <= 7.7399997711:
                                    if features['Sunlight_Hours'] <= 6.8600001335:
                                        return 22.8200000000
                                    else:
                                        return 22.3250000000
                                else:
                                    if features['Altitude'] <= 870.0000000000:
                                        return 21.8500000000
                                    else:
                                        return 21.4600000000
                            else:
                                return 23.8700000000
                        else:
                            if features['Season'] <= 1.0000000000:
                                if features['Rainfall'] <= 692.0350036621:
                                    return 23.5300000000
                                else:
                                    return 23.7900000000
                            else:
                                if features['Pesticide_Used'] <= 9.7550004125:
                                    return 24.7800000000
                                else:
                                    return 24.8500000000
                else:
                    if features['Humidity'] <= 42.7300014496:
                        if features['Rainfall'] <= 1237.9400024414:
                            if features['Fertilizer_Used'] <= 293.3900070190:
                                return 24.1500000000
                            else:
                                return 23.6800000000
                        else:
                            if features['Pesticide_Used'] <= 12.0649998784:
                                return 24.6500000000
                            else:
                                return 24.9900000000
                    else:
                        if features['N'] <= 112.5000000000:
                            if features['P'] <= 54.5000000000:
                                if features['Soil_Type'] <= 1.5000000000:
                                    return 25.9800000000
                                else:
                                    return 26.3200000000
                            else:
                                if features['Temperature'] <= 23.1149997711:
                                    return 25.7500000000
                                else:
                                    if features['Soil_Moisture'] <= 15.5450000763:
                                        return 25.4200000000
                                    else:
                                        return 25.3400000000
                        else:
                            if features['Soil_Moisture'] <= 18.7899999619:
                                return 24.1800000000
                            else:
                                if features['Soil_Moisture'] <= 22.7500000000:
                                    if features['Fertilizer_Used'] <= 290.6200027466:
                                        return 24.8100000000
                                    else:
                                        return 24.9400000000
                                else:
                                    return 25.2600000000
            else:
                if features['N'] <= 167.5000000000:
                    if features['K'] <= 83.0000000000:
                        if features['Soil_pH'] <= 5.4850001335:
                            if features['Rainfall'] <= 1022.1750183105:
                                if features['Humidity'] <= 44.7000007629:
                                    return 21.8900000000
                                else:
                                    if features['Soil_Moisture'] <= 45.9400005341:
                                        return 23.1300000000
                                    else:
                                        return 23.7750000000
                            else:
                                if features['Humidity'] <= 64.6800003052:
                                    if features['Temperature'] <= 20.9150009155:
                                        return 24.4400000000
                                    else:
                                        return 25.3133333333
                                else:
                                    if features['Soil_pH'] <= 4.9299998283:
                                        return 24.6100000000
                                    else:
                                        return 24.1600000000
                        else:
                            if features['Pesticide_Used'] <= 9.5699996948:
                                if features['P'] <= 70.0000000000:
                                    if features['Temperature'] <= 14.1849999428:
                                        return 23.5866666667
                                    else:
                                        return 24.3850000000
                                else:
                                    if features['Temperature'] <= 12.3200001717:
                                        return 23.7000000000
                                    else:
                                        return 25.6180000000
                            else:
                                if features['K'] <= 45.5000000000:
                                    if features['Pesticide_Used'] <= 13.3550000191:
                                        return 25.2960000000
                                    else:
                                        return 24.4266666667
                                else:
                                    if features['Soil_pH'] <= 5.8050000668:
                                        return 24.7950000000
                                    else:
                                        return 26.0587500000
                    else:
                        if features['Soil_pH'] <= 7.8150000572:
                            if features['N'] <= 152.0000000000:
                                if features['Soil_Moisture'] <= 51.0200004578:
                                    if features['Fertilizer_Used'] <= 268.7350006104:
                                        return 24.6586666667
                                    else:
                                        return 25.5813793103
                                else:
                                    if features['Soil_pH'] <= 5.6400001049:
                                        return 25.2625000000
                                    else:
                                        return 26.6240000000
                            else:
                                if features['Temperature'] <= 12.8200001717:
                                    if features['Temperature'] <= 12.1150002480:
                                        return 27.2900000000
                                    else:
                                        return 26.6600000000
                                else:
                                    if features['Sunlight_Hours'] <= 7.7200000286:
                                        return 28.2000000000
                                    else:
                                        return 27.5800000000
                        else:
                            if features['Region'] <= 2.5000000000:
                                if features['Humidity'] <= 81.1700019836:
                                    if features['Fertilizer_Used'] <= 334.9700012207:
                                        return 23.9742857143
                                    else:
                                        return 22.6200000000
                                else:
                                    return 25.5500000000
                            else:
                                if features['Soil_pH'] <= 8.1599998474:
                                    if features['Region'] <= 3.5000000000:
                                        return 24.8400000000
                                    else:
                                        return 25.1500000000
                                else:
                                    return 26.5400000000
                else:
                    if features['Rainfall'] <= 768.9299926758:
                        if features['Region'] <= 1.5000000000:
                            if features['Sunlight_Hours'] <= 7.0199999809:
                                return 26.9600000000
                            else:
                                return 26.3300000000
                        else:
                            if features['Altitude'] <= 704.5000000000:
                                return 25.2300000000
                            else:
                                if features['Season'] <= 1.0000000000:
                                    return 24.8000000000
                                else:
                                    if features['Region'] <= 3.5000000000:
                                        return 24.3600000000
                                    else:
                                        return 24.5400000000
                    else:
                        if features['Altitude'] <= 935.0000000000:
                            if features['Soil_Type'] <= 0.5000000000:
                                if features['Altitude'] <= 351.0000000000:
                                    if features['Fertilizer_Used'] <= 345.6649932861:
                                        return 26.2100000000
                                    else:
                                        return 26.2500000000
                                else:
                                    return 26.6100000000
                            else:
                                if features['Rainfall'] <= 915.4099731445:
                                    if features['Humidity'] <= 55.6700000763:
                                        return 26.8400000000
                                    else:
                                        return 27.0000000000
                                else:
                                    return 27.6100000000
                        else:
                            if features['Season'] <= 0.5000000000:
                                if features['Soil_Moisture'] <= 47.7550010681:
                                    return 27.9400000000
                                else:
                                    return 27.7100000000
                            else:
                                return 29.1700000000
        else:
            if features['Soil_Moisture'] <= 39.7799987793:
                if features['Wind_Speed'] <= 12.4800000191:
                    if features['Fertilizer_Used'] <= 276.7050018311:
                        if features['Soil_pH'] <= 5.1150000095:
                            if features['Organic_Carbon'] <= 1.4050000310:
                                if features['Organic_Carbon'] <= 1.3100000024:
                                    if features['Sunlight_Hours'] <= 6.3249998093:
                                        return 23.8800000000
                                    else:
                                        return 24.0800000000
                                else:
                                    return 24.4300000000
                            else:
                                return 22.6100000000
                        else:
                            if features['Wind_Speed'] <= 4.3150000572:
                                if features['P'] <= 51.5000000000:
                                    if features['Soil_Moisture'] <= 25.3449993134:
                                        return 26.0200000000
                                    else:
                                        return 26.5150000000
                                else:
                                    if features['Region'] <= 3.0000000000:
                                        return 27.8000000000
                                    else:
                                        return 27.3500000000
                            else:
                                if features['N'] <= 47.5000000000:
                                    return 27.2600000000
                                else:
                                    if features['Rainfall'] <= 2227.7249755859:
                                        return 25.1022222222
                                    else:
                                        return 25.7285714286
                    else:
                        if features['Temperature'] <= 35.0249996185:
                            if features['Temperature'] <= 30.1949996948:
                                if features['Altitude'] <= 1964.0000000000:
                                    if features['K'] <= 75.0000000000:
                                        return 25.9764285714
                                    else:
                                        return 26.6852000000
                                else:
                                    if features['Soil_Type'] <= 2.5000000000:
                                        return 26.8825000000
                                    else:
                                        return 28.4133333333
                            else:
                                if features['Pesticide_Used'] <= 24.3199996948:
                                    if features['Irrigation_Type'] <= 2.5000000000:
                                        return 27.6757142857
                                    else:
                                        return 26.7500000000
                                else:
                                    return 29.1400000000
                        else:
                            if features['Soil_pH'] <= 6.7549998760:
                                if features['K'] <= 99.0000000000:
                                    if features['Organic_Carbon'] <= 0.9299999774:
                                        return 25.9666666667
                                    else:
                                        return 24.5550000000
                                else:
                                    if features['Temperature'] <= 39.2299995422:
                                        return 23.6100000000
                                    else:
                                        return 23.8900000000
                            else:
                                if features['Altitude'] <= 1703.0000000000:
                                    if features['Soil_pH'] <= 7.4099998474:
                                        return 26.4000000000
                                    else:
                                        return 26.9400000000
                                else:
                                    return 27.4900000000
                else:
                    if features['Rainfall'] <= 2379.8299560547:
                        if features['Fertilizer_Used'] <= 312.7049865723:
                            if features['Sunlight_Hours'] <= 5.9749999046:
                                if features['Temperature'] <= 25.4000005722:
                                    if features['Region'] <= 2.5000000000:
                                        return 24.4900000000
                                    else:
                                        return 24.2766666667
                                else:
                                    if features['N'] <= 160.5000000000:
                                        return 23.8666666667
                                    else:
                                        return 23.3800000000
                            else:
                                if features['Altitude'] <= 682.5000000000:
                                    if features['K'] <= 92.0000000000:
                                        return 24.2050000000
                                    else:
                                        return 24.6366666667
                                else:
                                    if features['Soil_pH'] <= 7.0299999714:
                                        return 24.8216666667
                                    else:
                                        return 25.4875000000
                        else:
                            if features['Rainfall'] <= 1712.7550048828:
                                if features['Soil_Moisture'] <= 35.9100017548:
                                    return 27.0900000000
                                else:
                                    return 27.7700000000
                            else:
                                if features['P'] <= 53.5000000000:
                                    if features['Humidity'] <= 58.8100013733:
                                        return 24.9800000000
                                    else:
                                        return 25.3800000000
                                else:
                                    if features['Irrigation_Type'] <= 1.5000000000:
                                        return 26.0333333333
                                    else:
                                        return 25.5700000000
                    else:
                        if features['Fertilizer_Used'] <= 336.5700073242:
                            if features['P'] <= 36.5000000000:
                                if features['N'] <= 47.0000000000:
                                    if features['N'] <= 41.5000000000:
                                        return 25.7100000000
                                    else:
                                        return 26.2900000000
                                else:
                                    if features['P'] <= 29.5000000000:
                                        return 25.1833333333
                                    else:
                                        return 24.5600000000
                            else:
                                if features['N'] <= 43.5000000000:
                                    if features['Rainfall'] <= 2474.9849853516:
                                        return 26.8000000000
                                    else:
                                        return 26.8400000000
                                else:
                                    if features['P'] <= 67.5000000000:
                                        return 26.2400000000
                                    else:
                                        return 26.4233333333
                        else:
                            if features['P'] <= 25.0000000000:
                                if features['Season'] <= 0.5000000000:
                                    return 26.8600000000
                                else:
                                    return 26.0800000000
                            else:
                                if features['Wind_Speed'] <= 14.6900000572:
                                    return 27.8400000000
                                else:
                                    return 27.9600000000
            else:
                if features['Soil_pH'] <= 5.6349999905:
                    if features['Pesticide_Used'] <= 18.6150007248:
                        if features['Temperature'] <= 29.9549999237:
                            if features['Fertilizer_Used'] <= 264.4450073242:
                                if features['Sunlight_Hours'] <= 5.6349999905:
                                    if features['Wind_Speed'] <= 8.1900002956:
                                        return 26.0700000000
                                    else:
                                        return 26.2600000000
                                else:
                                    if features['Soil_Type'] <= 0.5000000000:
                                        return 25.8750000000
                                    else:
                                        return 25.7700000000
                            else:
                                if features['Fertilizer_Used'] <= 307.4949951172:
                                    if features['Fertilizer_Used'] <= 280.6700134277:
                                        return 25.1400000000
                                    else:
                                        return 24.7166666667
                                else:
                                    if features['N'] <= 56.0000000000:
                                        return 26.1900000000
                                    else:
                                        return 25.5000000000
                        else:
                            if features['Wind_Speed'] <= 13.0350003242:
                                if features['Soil_Moisture'] <= 48.6499996185:
                                    return 27.4700000000
                                else:
                                    if features['Rainfall'] <= 2024.9949951172:
                                        return 26.4950000000
                                    else:
                                        return 26.5800000000
                            else:
                                return 25.2000000000
                    else:
                        if features['K'] <= 116.0000000000:
                            if features['Rainfall'] <= 2673.2150878906:
                                if features['Pesticide_Used'] <= 22.0949993134:
                                    if features['Fertilizer_Used'] <= 293.8549957275:
                                        return 26.8200000000
                                    else:
                                        return 26.7300000000
                                else:
                                    return 26.6300000000
                            else:
                                if features['Rainfall'] <= 2763.1450195312:
                                    return 27.0600000000
                                else:
                                    return 26.9200000000
                        else:
                            if features['Soil_pH'] <= 5.2300000191:
                                return 26.0000000000
                            else:
                                return 26.4600000000
                else:
                    if features['Rainfall'] <= 2020.1099853516:
                        if features['Wind_Speed'] <= 13.5199999809:
                            if features['Wind_Speed'] <= 9.9549999237:
                                if features['P'] <= 76.0000000000:
                                    if features['Temperature'] <= 11.9249997139:
                                        return 28.4600000000
                                    else:
                                        return 26.4366666667
                                else:
                                    if features['Wind_Speed'] <= 4.2049999237:
                                        return 27.7000000000
                                    else:
                                        return 27.1133333333
                            else:
                                if features['Organic_Carbon'] <= 0.8350000083:
                                    if features['Season'] <= 1.0000000000:
                                        return 27.5550000000
                                    else:
                                        return 27.3400000000
                                else:
                                    if features['Soil_Type'] <= 0.5000000000:
                                        return 28.3600000000
                                    else:
                                        return 29.1400000000
                        else:
                            if features['Humidity'] <= 70.1150016785:
                                if features['Temperature'] <= 25.8249998093:
                                    if features['Sunlight_Hours'] <= 7.9600000381:
                                        return 26.0350000000
                                    else:
                                        return 26.5350000000
                                else:
                                    if features['Temperature'] <= 34.0100002289:
                                        return 27.0500000000
                                    else:
                                        return 27.2800000000
                            else:
                                if features['Soil_Type'] <= 0.5000000000:
                                    return 26.0500000000
                                else:
                                    if features['Irrigation_Type'] <= 1.0000000000:
                                        return 24.2100000000
                                    else:
                                        return 24.3100000000
                    else:
                        if features['Fertilizer_Used'] <= 304.2299957275:
                            if features['Organic_Carbon'] <= 0.8499999940:
                                if features['Organic_Carbon'] <= 0.3649999946:
                                    if features['Soil_pH'] <= 6.8849999905:
                                        return 28.5700000000
                                    else:
                                        return 27.9200000000
                                else:
                                    if features['Temperature'] <= 27.4200000763:
                                        return 26.7000000000
                                    else:
                                        return 25.7033333333
                            else:
                                if features['K'] <= 55.0000000000:
                                    if features['Organic_Carbon'] <= 0.9199999869:
                                        return 25.1000000000
                                    else:
                                        return 27.0100000000
                                else:
                                    if features['N'] <= 134.0000000000:
                                        return 27.6863636364
                                    else:
                                        return 28.9233333333
                        else:
                            if features['P'] <= 51.0000000000:
                                if features['Soil_pH'] <= 5.9400000572:
                                    return 27.4500000000
                                else:
                                    if features['Rainfall'] <= 2263.4300537109:
                                        return 27.1800000000
                                    else:
                                        return 26.9800000000
                            else:
                                if features['Pesticide_Used'] <= 23.0350008011:
                                    if features['Organic_Carbon'] <= 1.2099999785:
                                        return 28.8827272727
                                    else:
                                        return 28.0050000000
                                else:
                                    return 26.3800000000
