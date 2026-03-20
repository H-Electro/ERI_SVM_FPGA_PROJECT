def predict_tree(features):
    if features['Fertilizer_Used'] <= 201.8300018311:
        if features['Rainfall'] <= 1731.0900268555:
            if features['Fertilizer_Used'] <= 140.2049942017:
                if features['Rainfall'] <= 897.4299926758:
                    if features['Soil_Moisture'] <= 58.0300006866:
                        if features['Fertilizer_Used'] <= 103.2300033569:
                            if features['Soil_Moisture'] <= 25.1350002289:
                                if features['Humidity'] <= 35.3850002289:
                                    return 4.0700000000
                                else:
                                    if features['Pesticide_Used'] <= 7.1949999332:
                                        return 6.9250000000
                                    else:
                                        return 5.8011111111
                            else:
                                if features['K'] <= 43.5000000000:
                                    if features['Soil_Moisture'] <= 35.5049991608:
                                        return 5.0100000000
                                    else:
                                        return 4.8600000000
                                else:
                                    if features['Soil_pH'] <= 6.9200000763:
                                        return 7.4108333333
                                    else:
                                        return 6.6266666667
                        else:
                            if features['K'] <= 105.5000000000:
                                if features['Altitude'] <= 264.0000000000:
                                    if features['Rainfall'] <= 725.9299926758:
                                        return 5.2900000000
                                    else:
                                        return 4.7500000000
                                else:
                                    if features['K'] <= 33.5000000000:
                                        return 7.7600000000
                                    else:
                                        return 6.8486363636
                            else:
                                if features['N'] <= 110.0000000000:
                                    if features['Fertilizer_Used'] <= 121.0050010681:
                                        return 8.2233333333
                                    else:
                                        return 6.4225000000
                                else:
                                    if features['Soil_pH'] <= 5.5099999905:
                                        return 7.5400000000
                                    else:
                                        return 9.0183333333
                    else:
                        if features['Soil_pH'] <= 6.2799999714:
                            if features['Sunlight_Hours'] <= 8.3200001717:
                                if features['Organic_Carbon'] <= 0.8950000107:
                                    if features['Humidity'] <= 65.6850013733:
                                        return 7.5900000000
                                    else:
                                        return 7.7900000000
                                else:
                                    return 8.3200000000
                            else:
                                if features['Pesticide_Used'] <= 17.3750000000:
                                    if features['Temperature'] <= 15.0749998093:
                                        return 7.1400000000
                                    else:
                                        return 7.2400000000
                                else:
                                    return 6.9700000000
                        else:
                            if features['Temperature'] <= 29.5600004196:
                                if features['Humidity'] <= 70.1750030518:
                                    if features['P'] <= 49.5000000000:
                                        return 8.2000000000
                                    else:
                                        return 7.9500000000
                                else:
                                    if features['Wind_Speed'] <= 13.0000004768:
                                        return 7.6600000000
                                    else:
                                        return 7.6900000000
                            else:
                                if features['Sunlight_Hours'] <= 7.4400002956:
                                    if features['P'] <= 56.0000000000:
                                        return 9.0300000000
                                    else:
                                        return 8.6800000000
                                else:
                                    if features['P'] <= 61.0000000000:
                                        return 9.4900000000
                                    else:
                                        return 9.6300000000
                else:
                    if features['Wind_Speed'] <= 6.2300000191:
                        if features['K'] <= 129.0000000000:
                            if features['Humidity'] <= 57.7500000000:
                                if features['Wind_Speed'] <= 3.5099999905:
                                    if features['Pesticide_Used'] <= 21.4800004959:
                                        return 9.0100000000
                                    else:
                                        return 7.9750000000
                                else:
                                    if features['Sunlight_Hours'] <= 6.5799999237:
                                        return 8.2200000000
                                    else:
                                        return 6.9585714286
                            else:
                                if features['Altitude'] <= 1125.0000000000:
                                    if features['Fertilizer_Used'] <= 73.8250007629:
                                        return 7.2233333333
                                    else:
                                        return 8.1850000000
                                else:
                                    if features['Soil_pH'] <= 6.1650002003:
                                        return 8.3080000000
                                    else:
                                        return 9.2371428571
                        else:
                            if features['Irrigation_Type'] <= 1.5000000000:
                                if features['Sunlight_Hours'] <= 7.9650001526:
                                    if features['Rainfall'] <= 1239.4150390625:
                                        return 9.1300000000
                                    else:
                                        return 9.8300000000
                                else:
                                    if features['Altitude'] <= 1537.5000000000:
                                        return 11.3000000000
                                    else:
                                        return 10.6200000000
                            else:
                                if features['Temperature'] <= 30.2650003433:
                                    if features['Soil_pH'] <= 7.0349998474:
                                        return 10.3300000000
                                    else:
                                        return 9.5050000000
                                else:
                                    if features['K'] <= 141.0000000000:
                                        return 8.7350000000
                                    else:
                                        return 7.6000000000
                    else:
                        if features['Soil_Moisture'] <= 38.4849987030:
                            if features['Fertilizer_Used'] <= 77.9749984741:
                                if features['Sunlight_Hours'] <= 9.9200000763:
                                    if features['Pesticide_Used'] <= 6.1300001144:
                                        return 5.8800000000
                                    else:
                                        return 6.4175000000
                                else:
                                    if features['Humidity'] <= 59.0150012970:
                                        return 8.8800000000
                                    else:
                                        return 7.8500000000
                            else:
                                if features['Fertilizer_Used'] <= 113.9350013733:
                                    if features['Wind_Speed'] <= 11.8299999237:
                                        return 7.5012500000
                                    else:
                                        return 8.3940000000
                                else:
                                    if features['Wind_Speed'] <= 11.8349995613:
                                        return 6.8400000000
                                    else:
                                        return 7.3220000000
                        else:
                            if features['N'] <= 57.5000000000:
                                if features['K'] <= 56.5000000000:
                                    if features['Soil_Moisture'] <= 54.3600006104:
                                        return 8.3600000000
                                    else:
                                        return 7.6700000000
                                else:
                                    if features['Humidity'] <= 75.4500007629:
                                        return 7.1366666667
                                    else:
                                        return 6.3833333333
                            else:
                                if features['K'] <= 73.0000000000:
                                    if features['Wind_Speed'] <= 8.9099998474:
                                        return 6.4725000000
                                    else:
                                        return 8.2350000000
                                else:
                                    if features['K'] <= 134.0000000000:
                                        return 9.2381818182
                                    else:
                                        return 8.4360000000
            else:
                if features['Soil_Moisture'] <= 44.0450000763:
                    if features['Soil_pH'] <= 7.9850001335:
                        if features['N'] <= 85.0000000000:
                            if features['Soil_pH'] <= 7.3150000572:
                                if features['Soil_pH'] <= 5.3300001621:
                                    if features['P'] <= 81.5000000000:
                                        return 7.4175000000
                                    else:
                                        return 5.5400000000
                                else:
                                    if features['Pesticide_Used'] <= 22.6100006104:
                                        return 8.7964705882
                                    else:
                                        return 5.9900000000
                            else:
                                if features['Fertilizer_Used'] <= 198.1100006104:
                                    if features['Altitude'] <= 770.5000000000:
                                        return 7.7475000000
                                    else:
                                        return 6.3685714286
                                else:
                                    return 9.1800000000
                        else:
                            if features['N'] <= 90.5000000000:
                                if features['Soil_pH'] <= 5.6549999714:
                                    return 10.9300000000
                                else:
                                    return 11.0700000000
                            else:
                                if features['P'] <= 44.5000000000:
                                    if features['Rainfall'] <= 1147.2299804688:
                                        return 7.1471428571
                                    else:
                                        return 8.8950000000
                                else:
                                    if features['Altitude'] <= 2087.5000000000:
                                        return 8.6277777778
                                    else:
                                        return 9.8725000000
                    else:
                        if features['K'] <= 107.5000000000:
                            if features['P'] <= 83.5000000000:
                                if features['Season'] <= 1.5000000000:
                                    if features['N'] <= 50.0000000000:
                                        return 5.2700000000
                                    else:
                                        return 5.5850000000
                                else:
                                    if features['Organic_Carbon'] <= 0.5349999964:
                                        return 5.8200000000
                                    else:
                                        return 6.0400000000
                            else:
                                if features['Irrigation_Type'] <= 1.0000000000:
                                    return 7.1100000000
                                else:
                                    return 6.9900000000
                        else:
                            return 9.2000000000
                else:
                    if features['Sunlight_Hours'] <= 10.0050001144:
                        if features['Soil_Type'] <= 2.5000000000:
                            if features['N'] <= 135.0000000000:
                                if features['Altitude'] <= 391.5000000000:
                                    if features['Wind_Speed'] <= 14.7200002670:
                                        return 7.0400000000
                                    else:
                                        return 6.1000000000
                                else:
                                    if features['K'] <= 122.5000000000:
                                        return 8.2814814815
                                    else:
                                        return 9.3840000000
                            else:
                                if features['Soil_pH'] <= 6.1850001812:
                                    if features['Altitude'] <= 418.0000000000:
                                        return 9.3550000000
                                    else:
                                        return 8.1833333333
                                else:
                                    if features['K'] <= 131.5000000000:
                                        return 10.6400000000
                                    else:
                                        return 9.4100000000
                        else:
                            if features['Soil_pH'] <= 7.0400002003:
                                if features['N'] <= 91.5000000000:
                                    return 11.8000000000
                                else:
                                    if features['Organic_Carbon'] <= 1.1649999917:
                                        return 10.1900000000
                                    else:
                                        return 10.8300000000
                            else:
                                if features['K'] <= 130.0000000000:
                                    if features['Pesticide_Used'] <= 15.8250002861:
                                        return 9.5550000000
                                    else:
                                        return 9.0700000000
                                else:
                                    return 7.4700000000
                    else:
                        if features['Wind_Speed'] <= 5.7649998665:
                            if features['Pesticide_Used'] <= 14.6599998474:
                                if features['Soil_pH'] <= 6.6850001812:
                                    return 9.6200000000
                                else:
                                    if features['P'] <= 43.5000000000:
                                        return 10.7200000000
                                    else:
                                        return 10.4500000000
                            else:
                                if features['Region'] <= 2.5000000000:
                                    return 11.3500000000
                                else:
                                    return 11.4900000000
                        else:
                            if features['Humidity'] <= 59.7050018311:
                                if features['Sunlight_Hours'] <= 10.3649997711:
                                    if features['K'] <= 59.0000000000:
                                        return 10.3600000000
                                    else:
                                        return 10.5500000000
                                else:
                                    if features['Humidity'] <= 43.7299995422:
                                        return 9.7600000000
                                    else:
                                        return 10.0150000000
                            else:
                                if features['Humidity'] <= 79.8199996948:
                                    if features['K'] <= 76.0000000000:
                                        return 8.5100000000
                                    else:
                                        return 8.7750000000
                                else:
                                    return 9.1400000000
        else:
            if features['Fertilizer_Used'] <= 134.1699981689:
                if features['Soil_Moisture'] <= 40.8199996948:
                    if features['Soil_pH'] <= 7.2149999142:
                        if features['K'] <= 41.0000000000:
                            if features['Altitude'] <= 1307.5000000000:
                                if features['Altitude'] <= 375.5000000000:
                                    return 8.3800000000
                                else:
                                    if features['Sunlight_Hours'] <= 5.7650001049:
                                        return 6.5000000000
                                    else:
                                        return 7.1500000000
                            else:
                                if features['Soil_Moisture'] <= 32.6450004578:
                                    return 8.6800000000
                                else:
                                    return 9.1400000000
                        else:
                            if features['Organic_Carbon'] <= 1.4900000095:
                                if features['Rainfall'] <= 2071.8449707031:
                                    if features['Humidity'] <= 50.4499988556:
                                        return 8.7828571429
                                    else:
                                        return 7.2000000000
                                else:
                                    if features['Fertilizer_Used'] <= 101.0400009155:
                                        return 8.9164705882
                                    else:
                                        return 10.1690000000
                            else:
                                if features['Season'] <= 1.5000000000:
                                    if features['K'] <= 113.0000000000:
                                        return 10.7000000000
                                    else:
                                        return 11.4700000000
                                else:
                                    if features['Humidity'] <= 70.0599975586:
                                        return 10.2200000000
                                    else:
                                        return 9.4400000000
                    else:
                        if features['Humidity'] <= 57.1900005341:
                            if features['Soil_Type'] <= 1.5000000000:
                                if features['Sunlight_Hours'] <= 5.3099999428:
                                    return 9.6800000000
                                else:
                                    return 10.3300000000
                            else:
                                if features['Soil_Moisture'] <= 34.8950004578:
                                    return 8.3200000000
                                else:
                                    if features['Altitude'] <= 1002.5000000000:
                                        return 8.4700000000
                                    else:
                                        return 8.5800000000
                        else:
                            if features['Wind_Speed'] <= 10.2450003624:
                                if features['Temperature'] <= 27.9599990845:
                                    if features['Sunlight_Hours'] <= 7.8600001335:
                                        return 7.4600000000
                                    else:
                                        return 7.1100000000
                                else:
                                    if features['Altitude'] <= 1096.0000000000:
                                        return 8.4250000000
                                    else:
                                        return 7.7750000000
                            else:
                                if features['P'] <= 47.0000000000:
                                    if features['Soil_pH'] <= 7.2850000858:
                                        return 6.3800000000
                                    else:
                                        return 6.7900000000
                                else:
                                    return 5.7700000000
                else:
                    if features['Rainfall'] <= 2272.8099365234:
                        if features['Temperature'] <= 18.0199995041:
                            if features['Soil_Moisture'] <= 56.1099987030:
                                if features['Humidity'] <= 51.9650001526:
                                    if features['Irrigation_Type'] <= 1.5000000000:
                                        return 8.7500000000
                                    else:
                                        return 8.7400000000
                                else:
                                    return 8.3900000000
                            else:
                                if features['P'] <= 41.0000000000:
                                    return 7.9500000000
                                else:
                                    return 7.7300000000
                        else:
                            if features['Region'] <= 1.5000000000:
                                if features['K'] <= 118.5000000000:
                                    if features['Temperature'] <= 36.9099998474:
                                        return 8.2133333333
                                    else:
                                        return 9.6933333333
                                else:
                                    if features['N'] <= 111.0000000000:
                                        return 10.2550000000
                                    else:
                                        return 9.7550000000
                            else:
                                if features['Soil_Moisture'] <= 43.2500000000:
                                    if features['Pesticide_Used'] <= 15.5450003147:
                                        return 9.1100000000
                                    else:
                                        return 8.2400000000
                                else:
                                    if features['Sunlight_Hours'] <= 10.0450000763:
                                        return 10.2320000000
                                    else:
                                        return 8.9700000000
                    else:
                        if features['Organic_Carbon'] <= 0.8800000250:
                            if features['N'] <= 80.0000000000:
                                if features['N'] <= 61.5000000000:
                                    return 8.4500000000
                                else:
                                    return 7.1500000000
                            else:
                                if features['Altitude'] <= 1090.0000000000:
                                    if features['Soil_pH'] <= 6.9250001907:
                                        return 10.4200000000
                                    else:
                                        return 9.9200000000
                                else:
                                    if features['Pesticide_Used'] <= 16.7849998474:
                                        return 9.6150000000
                                    else:
                                        return 9.0300000000
                        else:
                            if features['Humidity'] <= 70.4050025940:
                                if features['Wind_Speed'] <= 8.1450002193:
                                    if features['Temperature'] <= 14.9900002480:
                                        return 11.3700000000
                                    else:
                                        return 11.6950000000
                                else:
                                    if features['Soil_Type'] <= 1.0000000000:
                                        return 11.3800000000
                                    else:
                                        return 10.2300000000
                            else:
                                if features['Irrigation_Type'] <= 0.5000000000:
                                    if features['Soil_Moisture'] <= 51.5300006866:
                                        return 9.1300000000
                                    else:
                                        return 9.7200000000
                                else:
                                    if features['Temperature'] <= 32.0200004578:
                                        return 10.9500000000
                                    else:
                                        return 10.2300000000
            else:
                if features['Sunlight_Hours'] <= 8.4699997902:
                    if features['Humidity'] <= 48.1700000763:
                        if features['Humidity'] <= 31.3199996948:
                            if features['Humidity'] <= 30.9500007629:
                                if features['Temperature'] <= 14.1649999619:
                                    return 8.8900000000
                                else:
                                    return 8.4700000000
                            else:
                                if features['Soil_pH'] <= 7.5049998760:
                                    if features['Organic_Carbon'] <= 0.8850000203:
                                        return 10.1200000000
                                    else:
                                        return 9.8700000000
                                else:
                                    return 9.5200000000
                        else:
                            if features['N'] <= 52.0000000000:
                                if features['Soil_pH'] <= 7.3550000191:
                                    if features['Region'] <= 0.5000000000:
                                        return 10.0400000000
                                    else:
                                        return 11.0500000000
                                else:
                                    if features['Altitude'] <= 1040.5000000000:
                                        return 8.9900000000
                                    else:
                                        return 9.1600000000
                            else:
                                if features['Temperature'] <= 26.9949998856:
                                    if features['Sunlight_Hours'] <= 6.2599999905:
                                        return 10.1820000000
                                    else:
                                        return 11.0875000000
                                else:
                                    if features['Temperature'] <= 33.1400012970:
                                        return 11.8950000000
                                    else:
                                        return 10.7366666667
                    else:
                        if features['Altitude'] <= 734.0000000000:
                            if features['Soil_pH'] <= 6.3949999809:
                                if features['Organic_Carbon'] <= 0.4950000048:
                                    if features['Temperature'] <= 23.7400007248:
                                        return 9.9300000000
                                    else:
                                        return 9.1700000000
                                else:
                                    if features['Temperature'] <= 15.0900001526:
                                        return 8.1900000000
                                    else:
                                        return 8.7866666667
                            else:
                                if features['Fertilizer_Used'] <= 151.1600036621:
                                    if features['Fertilizer_Used'] <= 146.0900039673:
                                        return 9.8166666667
                                    else:
                                        return 9.0850000000
                                else:
                                    if features['Sunlight_Hours'] <= 5.5899999142:
                                        return 10.3300000000
                                    else:
                                        return 10.5000000000
                        else:
                            if features['Wind_Speed'] <= 16.2749996185:
                                if features['Soil_Moisture'] <= 56.9150009155:
                                    if features['Temperature'] <= 18.4300003052:
                                        return 10.4450000000
                                    else:
                                        return 9.7936363636
                                else:
                                    if features['Fertilizer_Used'] <= 190.6250000000:
                                        return 10.2850000000
                                    else:
                                        return 11.5050000000
                            else:
                                if features['K'] <= 102.5000000000:
                                    if features['Temperature'] <= 26.2049999237:
                                        return 8.5900000000
                                    else:
                                        return 8.8200000000
                                else:
                                    if features['Temperature'] <= 20.0850000381:
                                        return 9.1300000000
                                    else:
                                        return 9.2300000000
                else:
                    if features['Soil_pH'] <= 7.4000000954:
                        if features['Soil_pH'] <= 5.7299997807:
                            if features['Humidity'] <= 56.2550010681:
                                if features['N'] <= 88.0000000000:
                                    if features['N'] <= 40.5000000000:
                                        return 6.9500000000
                                    else:
                                        return 7.6150000000
                                else:
                                    return 8.3400000000
                            else:
                                if features['Soil_Type'] <= 1.5000000000:
                                    if features['Soil_Moisture'] <= 43.6499996185:
                                        return 8.3700000000
                                    else:
                                        return 9.1600000000
                                else:
                                    if features['Soil_pH'] <= 5.1800000668:
                                        return 9.8800000000
                                    else:
                                        return 10.3350000000
                        else:
                            if features['Altitude'] <= 1939.0000000000:
                                if features['Altitude'] <= 553.5000000000:
                                    if features['Pesticide_Used'] <= 21.3599996567:
                                        return 9.4300000000
                                    else:
                                        return 10.2800000000
                                else:
                                    if features['N'] <= 133.5000000000:
                                        return 10.0462500000
                                    else:
                                        return 10.6500000000
                            else:
                                if features['Soil_pH'] <= 6.4449999332:
                                    return 11.4500000000
                                else:
                                    return 11.8800000000
                    else:
                        if features['Rainfall'] <= 2229.9549560547:
                            if features['N'] <= 100.5000000000:
                                if features['Wind_Speed'] <= 15.1150002480:
                                    if features['Soil_Type'] <= 0.5000000000:
                                        return 7.4600000000
                                    else:
                                        return 7.2100000000
                                else:
                                    if features['Soil_pH'] <= 7.8499999046:
                                        return 7.7000000000
                                    else:
                                        return 7.9400000000
                            else:
                                if features['P'] <= 59.0000000000:
                                    if features['Fertilizer_Used'] <= 169.9599990845:
                                        return 7.7800000000
                                    else:
                                        return 7.9900000000
                                else:
                                    if features['Soil_pH'] <= 7.8150000572:
                                        return 8.4700000000
                                    else:
                                        return 8.5400000000
                        else:
                            if features['Rainfall'] <= 2322.4699707031:
                                if features['Soil_Moisture'] <= 48.6450004578:
                                    if features['Sunlight_Hours'] <= 10.0799999237:
                                        return 9.3900000000
                                    else:
                                        return 9.4300000000
                                else:
                                    return 9.4700000000
                            else:
                                if features['Altitude'] <= 742.5000000000:
                                    return 7.8200000000
                                else:
                                    if features['K'] <= 57.5000000000:
                                        return 8.5300000000
                                    else:
                                        return 8.6500000000
    else:
        if features['Rainfall'] <= 1553.9000244141:
            if features['Soil_Moisture'] <= 42.4000015259:
                if features['Fertilizer_Used'] <= 298.8450012207:
                    if features['Soil_Moisture'] <= 30.4099998474:
                        if features['Rainfall'] <= 704.2500000000:
                            if features['Pesticide_Used'] <= 11.4949998856:
                                if features['Altitude'] <= 267.0000000000:
                                    if features['Organic_Carbon'] <= 0.8799999952:
                                        return 6.0500000000
                                    else:
                                        return 6.7500000000
                                else:
                                    if features['Humidity'] <= 34.4650001526:
                                        return 7.6700000000
                                    else:
                                        return 7.2520000000
                            else:
                                if features['K'] <= 93.5000000000:
                                    if features['Soil_Moisture'] <= 16.8700003624:
                                        return 8.7200000000
                                    else:
                                        return 7.5600000000
                                else:
                                    if features['Altitude'] <= 1464.5000000000:
                                        return 8.5275000000
                                    else:
                                        return 9.7900000000
                        else:
                            if features['Soil_pH'] <= 8.0999999046:
                                if features['Soil_Moisture'] <= 28.8750000000:
                                    if features['K'] <= 120.5000000000:
                                        return 8.7783333333
                                    else:
                                        return 9.6390909091
                                else:
                                    if features['Season'] <= 1.5000000000:
                                        return 7.9375000000
                                    else:
                                        return 7.2666666667
                            else:
                                if features['Season'] <= 1.0000000000:
                                    return 6.6200000000
                                else:
                                    return 6.0600000000
                    else:
                        if features['Wind_Speed'] <= 12.1050000191:
                            if features['Soil_Moisture'] <= 31.0699996948:
                                if features['Fertilizer_Used'] <= 241.4650039673:
                                    if features['Region'] <= 3.5000000000:
                                        return 11.5200000000
                                    else:
                                        return 11.2800000000
                                else:
                                    if features['Sunlight_Hours'] <= 8.4800000191:
                                        return 10.3800000000
                                    else:
                                        return 10.8200000000
                            else:
                                if features['Rainfall'] <= 1414.7300415039:
                                    if features['Humidity'] <= 82.2900009155:
                                        return 9.2366666667
                                    else:
                                        return 10.6900000000
                                else:
                                    if features['P'] <= 37.5000000000:
                                        return 9.3600000000
                                    else:
                                        return 10.9175000000
                        else:
                            if features['Soil_pH'] <= 7.1349999905:
                                if features['Fertilizer_Used'] <= 288.1799926758:
                                    if features['N'] <= 146.5000000000:
                                        return 9.5018181818
                                    else:
                                        return 7.8400000000
                                else:
                                    if features['Temperature'] <= 33.4849996567:
                                        return 7.7050000000
                                    else:
                                        return 8.7000000000
                            else:
                                if features['N'] <= 111.5000000000:
                                    if features['Soil_pH'] <= 7.1600000858:
                                        return 8.3000000000
                                    else:
                                        return 7.4660000000
                                else:
                                    if features['Pesticide_Used'] <= 13.7649998665:
                                        return 7.9700000000
                                    else:
                                        return 9.5650000000
                else:
                    if features['Humidity'] <= 85.5750007629:
                        if features['Sunlight_Hours'] <= 10.4650001526:
                            if features['Sunlight_Hours'] <= 4.1000001431:
                                return 6.8800000000
                            else:
                                if features['Sunlight_Hours'] <= 6.9700000286:
                                    if features['Humidity'] <= 82.2299995422:
                                        return 9.8925000000
                                    else:
                                        return 8.3750000000
                                else:
                                    if features['Organic_Carbon'] <= 0.9050000012:
                                        return 9.6023529412
                                    else:
                                        return 8.8642857143
                        else:
                            if features['Soil_Moisture'] <= 24.7250003815:
                                if features['Organic_Carbon'] <= 0.6499999911:
                                    return 7.2200000000
                                else:
                                    return 9.9500000000
                            else:
                                if features['Rainfall'] <= 1286.6250000000:
                                    if features['Altitude'] <= 1748.5000000000:
                                        return 10.2975000000
                                    else:
                                        return 11.1300000000
                                else:
                                    if features['Temperature'] <= 25.2449998856:
                                        return 11.6800000000
                                    else:
                                        return 11.1200000000
                    else:
                        if features['Humidity'] <= 89.7000007629:
                            if features['Soil_pH'] <= 5.0149998665:
                                return 10.0800000000
                            else:
                                if features['Humidity'] <= 88.1800003052:
                                    if features['Rainfall'] <= 929.3149871826:
                                        return 11.2700000000
                                    else:
                                        return 11.1500000000
                                else:
                                    return 11.0300000000
                        else:
                            return 12.2700000000
            else:
                if features['K'] <= 76.5000000000:
                    if features['Soil_pH'] <= 5.6300001144:
                        if features['Wind_Speed'] <= 17.0150003433:
                            if features['Humidity'] <= 59.2149982452:
                                if features['N'] <= 111.5000000000:
                                    if features['Region'] <= 2.0000000000:
                                        return 8.4300000000
                                    else:
                                        return 7.7400000000
                                else:
                                    if features['Humidity'] <= 47.5499992371:
                                        return 9.2700000000
                                    else:
                                        return 8.7800000000
                            else:
                                if features['P'] <= 29.0000000000:
                                    if features['Altitude'] <= 1112.0000000000:
                                        return 6.4800000000
                                    else:
                                        return 6.7600000000
                                else:
                                    if features['Soil_pH'] <= 4.9299998283:
                                        return 8.8900000000
                                    else:
                                        return 7.7675000000
                        else:
                            return 10.8500000000
                    else:
                        if features['Fertilizer_Used'] <= 332.9199981689:
                            if features['Humidity'] <= 49.3299999237:
                                if features['Sunlight_Hours'] <= 6.7599999905:
                                    if features['Soil_Type'] <= 1.0000000000:
                                        return 7.0900000000
                                    else:
                                        return 8.0000000000
                                else:
                                    if features['Altitude'] <= 842.5000000000:
                                        return 8.6600000000
                                    else:
                                        return 10.0750000000
                            else:
                                if features['P'] <= 34.0000000000:
                                    if features['Rainfall'] <= 1434.4149780273:
                                        return 8.4333333333
                                    else:
                                        return 10.5100000000
                                else:
                                    if features['Rainfall'] <= 733.1800231934:
                                        return 9.6030000000
                                    else:
                                        return 10.5833333333
                        else:
                            if features['Irrigation_Type'] <= 0.5000000000:
                                return 12.4300000000
                            else:
                                if features['P'] <= 36.5000000000:
                                    if features['Pesticide_Used'] <= 16.4600000381:
                                        return 11.1700000000
                                    else:
                                        return 11.4100000000
                                else:
                                    if features['P'] <= 45.0000000000:
                                        return 10.7400000000
                                    else:
                                        return 10.9700000000
                else:
                    if features['Fertilizer_Used'] <= 249.7550048828:
                        if features['Rainfall'] <= 1201.3450317383:
                            if features['Organic_Carbon'] <= 1.3750000000:
                                if features['Soil_pH'] <= 5.1899998188:
                                    if features['Rainfall'] <= 986.7100219727:
                                        return 9.0666666667
                                    else:
                                        return 8.1100000000
                                else:
                                    if features['Soil_Moisture'] <= 58.2750015259:
                                        return 10.3140000000
                                    else:
                                        return 9.5000000000
                            else:
                                if features['Wind_Speed'] <= 15.9250001907:
                                    if features['Soil_Moisture'] <= 61.5699996948:
                                        return 7.5533333333
                                    else:
                                        return 8.5800000000
                                else:
                                    if features['Soil_Moisture'] <= 53.4699993134:
                                        return 9.8800000000
                                    else:
                                        return 9.7300000000
                        else:
                            if features['N'] <= 138.5000000000:
                                if features['Organic_Carbon'] <= 0.7800000012:
                                    if features['N'] <= 106.0000000000:
                                        return 9.9100000000
                                    else:
                                        return 10.3133333333
                                else:
                                    if features['Humidity'] <= 40.9850006104:
                                        return 8.9900000000
                                    else:
                                        return 9.4566666667
                            else:
                                if features['K'] <= 106.5000000000:
                                    return 11.5000000000
                                else:
                                    return 11.4000000000
                    else:
                        if features['Organic_Carbon'] <= 0.4800000042:
                            if features['N'] <= 124.0000000000:
                                if features['P'] <= 72.5000000000:
                                    if features['Temperature'] <= 19.2699999809:
                                        return 8.9500000000
                                    else:
                                        return 9.1800000000
                                else:
                                    return 8.2100000000
                            else:
                                if features['Soil_Moisture'] <= 53.2649993896:
                                    return 9.8700000000
                                else:
                                    return 10.7000000000
                        else:
                            if features['Soil_pH'] <= 8.1949996948:
                                if features['Humidity'] <= 31.3849992752:
                                    return 13.3800000000
                                else:
                                    if features['Rainfall'] <= 425.4950103760:
                                        return 9.2650000000
                                    else:
                                        return 10.9376785714
                            else:
                                return 7.9200000000
        else:
            if features['Fertilizer_Used'] <= 284.4949951172:
                if features['Soil_Moisture'] <= 44.1399993896:
                    if features['Wind_Speed'] <= 5.6150000095:
                        if features['Fertilizer_Used'] <= 211.2200012207:
                            if features['Organic_Carbon'] <= 1.1800000072:
                                if features['K'] <= 86.5000000000:
                                    return 10.4700000000
                                else:
                                    return 10.6400000000
                            else:
                                if features['Soil_pH'] <= 7.6050000191:
                                    return 9.2800000000
                                else:
                                    return 8.2200000000
                        else:
                            if features['P'] <= 83.0000000000:
                                if features['Region'] <= 3.5000000000:
                                    if features['Region'] <= 2.5000000000:
                                        return 10.9006666667
                                    else:
                                        return 11.5842857143
                                else:
                                    if features['Fertilizer_Used'] <= 227.9100036621:
                                        return 11.4850000000
                                    else:
                                        return 10.2614285714
                            else:
                                if features['Rainfall'] <= 2264.8500366211:
                                    if features['Rainfall'] <= 1706.9149780273:
                                        return 9.0300000000
                                    else:
                                        return 9.4300000000
                                else:
                                    if features['Wind_Speed'] <= 3.9750000238:
                                        return 10.6700000000
                                    else:
                                        return 10.2400000000
                    else:
                        if features['Rainfall'] <= 1794.8750000000:
                            if features['K'] <= 98.0000000000:
                                if features['Humidity'] <= 40.4549999237:
                                    return 9.2600000000
                                else:
                                    if features['P'] <= 70.0000000000:
                                        return 8.3700000000
                                    else:
                                        return 7.7050000000
                            else:
                                if features['Pesticide_Used'] <= 19.9300003052:
                                    if features['Temperature'] <= 13.6099996567:
                                        return 9.4400000000
                                    else:
                                        return 10.4133333333
                                else:
                                    if features['Soil_Moisture'] <= 27.3500003815:
                                        return 9.0500000000
                                    else:
                                        return 8.3800000000
                        else:
                            if features['P'] <= 28.5000000000:
                                if features['Humidity'] <= 40.2699985504:
                                    if features['Wind_Speed'] <= 9.5199999809:
                                        return 8.9400000000
                                    else:
                                        return 10.6000000000
                                else:
                                    if features['Humidity'] <= 81.5650024414:
                                        return 8.4971428571
                                    else:
                                        return 9.6600000000
                            else:
                                if features['Organic_Carbon'] <= 1.5649999976:
                                    if features['Fertilizer_Used'] <= 252.3949966431:
                                        return 10.1507142857
                                    else:
                                        return 11.1025000000
                                else:
                                    if features['Rainfall'] <= 2084.4899902344:
                                        return 8.1300000000
                                    else:
                                        return 7.5800000000
                else:
                    if features['Rainfall'] <= 2188.6250000000:
                        if features['Organic_Carbon'] <= 1.1000000238:
                            if features['Pesticide_Used'] <= 6.7999999523:
                                if features['Soil_pH'] <= 5.6000001431:
                                    return 9.1300000000
                                else:
                                    if features['Organic_Carbon'] <= 0.7899999917:
                                        return 10.8866666667
                                    else:
                                        return 10.3350000000
                            else:
                                if features['Soil_pH'] <= 6.1250000000:
                                    if features['Pesticide_Used'] <= 19.0250005722:
                                        return 11.9300000000
                                    else:
                                        return 12.3000000000
                                else:
                                    if features['Soil_Type'] <= 1.0000000000:
                                        return 11.6933333333
                                    else:
                                        return 10.8280000000
                        else:
                            if features['P'] <= 91.0000000000:
                                if features['Sunlight_Hours'] <= 5.5150001049:
                                    if features['P'] <= 47.5000000000:
                                        return 9.8466666667
                                    else:
                                        return 11.6900000000
                                else:
                                    if features['Altitude'] <= 1640.5000000000:
                                        return 9.0237500000
                                    else:
                                        return 9.9075000000
                            else:
                                if features['Soil_Moisture'] <= 56.2900009155:
                                    return 11.3600000000
                                else:
                                    return 11.5200000000
                    else:
                        if features['K'] <= 79.5000000000:
                            if features['Soil_pH'] <= 7.4049999714:
                                if features['Humidity'] <= 69.3650016785:
                                    if features['Wind_Speed'] <= 12.6449999809:
                                        return 11.5112500000
                                    else:
                                        return 11.9850000000
                                else:
                                    if features['Organic_Carbon'] <= 0.9749999642:
                                        return 9.7850000000
                                    else:
                                        return 10.8583333333
                            else:
                                if features['N'] <= 64.0000000000:
                                    return 9.0800000000
                                else:
                                    if features['Organic_Carbon'] <= 1.1850000024:
                                        return 10.4700000000
                                    else:
                                        return 9.9600000000
                        else:
                            if features['K'] <= 94.0000000000:
                                if features['Rainfall'] <= 2579.2500000000:
                                    if features['Temperature'] <= 18.8499994278:
                                        return 12.3450000000
                                    else:
                                        return 12.1100000000
                                else:
                                    if features['Soil_Moisture'] <= 44.7100009918:
                                        return 12.8700000000
                                    else:
                                        return 12.5350000000
                            else:
                                if features['Soil_pH'] <= 7.0749998093:
                                    if features['Sunlight_Hours'] <= 4.9800000191:
                                        return 12.1566666667
                                    else:
                                        return 11.3544444444
                                else:
                                    if features['Soil_Moisture'] <= 50.9400005341:
                                        return 10.0700000000
                                    else:
                                        return 10.5900000000
            else:
                if features['N'] <= 138.5000000000:
                    if features['Rainfall'] <= 2543.8599853516:
                        if features['P'] <= 32.5000000000:
                            if features['Irrigation_Type'] <= 2.5000000000:
                                if features['N'] <= 70.0000000000:
                                    if features['Altitude'] <= 1900.5000000000:
                                        return 9.0980000000
                                    else:
                                        return 10.9200000000
                                else:
                                    if features['N'] <= 132.5000000000:
                                        return 11.1037500000
                                    else:
                                        return 9.8650000000
                            else:
                                if features['P'] <= 30.0000000000:
                                    return 7.7400000000
                                else:
                                    return 8.1700000000
                        else:
                            if features['Soil_pH'] <= 8.1199998856:
                                if features['Humidity'] <= 89.9049987793:
                                    if features['Organic_Carbon'] <= 1.5649999976:
                                        return 11.0631081081
                                    else:
                                        return 12.4600000000
                                else:
                                    return 8.4700000000
                            else:
                                if features['Altitude'] <= 953.5000000000:
                                    return 8.7700000000
                                else:
                                    if features['P'] <= 38.5000000000:
                                        return 9.3200000000
                                    else:
                                        return 9.2500000000
                    else:
                        if features['Pesticide_Used'] <= 10.9300003052:
                            if features['N'] <= 56.5000000000:
                                if features['Wind_Speed'] <= 9.4499998093:
                                    if features['Altitude'] <= 1807.0000000000:
                                        return 10.0700000000
                                    else:
                                        return 10.0500000000
                                else:
                                    return 10.2300000000
                            else:
                                if features['Wind_Speed'] <= 4.6800000668:
                                    return 13.3000000000
                                else:
                                    if features['Wind_Speed'] <= 15.5600004196:
                                        return 11.5585714286
                                    else:
                                        return 10.0600000000
                        else:
                            if features['N'] <= 79.5000000000:
                                if features['Humidity'] <= 60.2749996185:
                                    if features['Sunlight_Hours'] <= 4.3799998760:
                                        return 12.9600000000
                                    else:
                                        return 12.2850000000
                                else:
                                    if features['Fertilizer_Used'] <= 327.5950012207:
                                        return 12.0766666667
                                    else:
                                        return 11.3350000000
                            else:
                                return 14.2000000000
                else:
                    if features['Soil_Moisture'] <= 44.2550010681:
                        if features['Soil_pH'] <= 5.5950000286:
                            if features['Temperature'] <= 33.0999994278:
                                if features['Humidity'] <= 61.6049995422:
                                    return 11.0800000000
                                else:
                                    return 10.9400000000
                            else:
                                if features['Altitude'] <= 1329.0000000000:
                                    return 9.4500000000
                                else:
                                    return 9.6900000000
                        else:
                            if features['Altitude'] <= 1860.5000000000:
                                if features['Organic_Carbon'] <= 0.8499999940:
                                    if features['Temperature'] <= 27.0500001907:
                                        return 10.8400000000
                                    else:
                                        return 11.1400000000
                                else:
                                    if features['K'] <= 122.5000000000:
                                        return 12.1411111111
                                    else:
                                        return 11.4100000000
                            else:
                                if features['K'] <= 73.5000000000:
                                    return 10.3200000000
                                else:
                                    return 10.8200000000
                    else:
                        if features['Soil_pH'] <= 5.7549998760:
                            if features['N'] <= 152.0000000000:
                                if features['Sunlight_Hours'] <= 8.4150002003:
                                    return 12.0100000000
                                else:
                                    return 11.8600000000
                            else:
                                if features['Season'] <= 0.5000000000:
                                    return 11.3600000000
                                else:
                                    if features['Organic_Carbon'] <= 1.1549999714:
                                        return 11.5300000000
                                    else:
                                        return 11.4500000000
                        else:
                            if features['Pesticide_Used'] <= 10.6050000191:
                                if features['Soil_pH'] <= 5.9600000381:
                                    return 12.8500000000
                                else:
                                    if features['Soil_Moisture'] <= 57.6149997711:
                                        return 13.1133333333
                                    else:
                                        return 13.2000000000
                            else:
                                if features['Altitude'] <= 609.5000000000:
                                    if features['K'] <= 124.0000000000:
                                        return 11.9300000000
                                    else:
                                        return 11.4800000000
                                else:
                                    if features['Organic_Carbon'] <= 1.2150000036:
                                        return 12.6200000000
                                    else:
                                        return 12.4000000000
