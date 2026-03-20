def predict_tree(features):
    if features['Fertilizer_Used'] <= 234.9199981689:
        if features['Rainfall'] <= 1341.9199829102:
            if features['Soil_Moisture'] <= 38.6799983978:
                if features['K'] <= 57.5000000000:
                    if features['N'] <= 135.0000000000:
                        if features['Wind_Speed'] <= 15.0899996758:
                            if features['K'] <= 55.0000000000:
                                if features['Wind_Speed'] <= 3.2300000191:
                                    if features['Rainfall'] <= 1277.0850219727:
                                        return 73.1333333333
                                    else:
                                        return 72.8300000000
                                else:
                                    if features['Temperature'] <= 28.2250003815:
                                        return 72.0323076923
                                    else:
                                        return 70.7733333333
                            else:
                                if features['Soil_Moisture'] <= 19.5900001526:
                                    return 73.7500000000
                                else:
                                    return 73.9300000000
                        else:
                            if features['N'] <= 49.0000000000:
                                if features['Soil_pH'] <= 7.9949998856:
                                    if features['Irrigation_Type'] <= 1.0000000000:
                                        return 70.7800000000
                                    else:
                                        return 71.0400000000
                                else:
                                    if features['Rainfall'] <= 344.6599884033:
                                        return 70.2400000000
                                    else:
                                        return 70.4300000000
                            else:
                                if features['Humidity'] <= 68.1649971008:
                                    if features['Sunlight_Hours'] <= 7.3400001526:
                                        return 72.3600000000
                                    else:
                                        return 72.3400000000
                                else:
                                    if features['Rainfall'] <= 903.3250122070:
                                        return 71.0800000000
                                    else:
                                        return 71.8200000000
                    else:
                        if features['Season'] <= 0.5000000000:
                            if features['Sunlight_Hours'] <= 5.7899999619:
                                return 72.3500000000
                            else:
                                return 70.8800000000
                        else:
                            if features['Temperature'] <= 25.0450000763:
                                if features['Humidity'] <= 88.7449989319:
                                    if features['Soil_Type'] <= 2.5000000000:
                                        return 72.6780000000
                                    else:
                                        return 73.2800000000
                                else:
                                    return 74.1300000000
                            else:
                                if features['Wind_Speed'] <= 11.7899999619:
                                    if features['Temperature'] <= 31.6950006485:
                                        return 73.8250000000
                                    else:
                                        return 73.7400000000
                                else:
                                    return 74.5900000000
                else:
                    if features['Soil_pH'] <= 5.0699999332:
                        if features['Irrigation_Type'] <= 0.5000000000:
                            if features['Humidity'] <= 69.7250003815:
                                if features['Wind_Speed'] <= 6.7200000286:
                                    return 70.7900000000
                                else:
                                    return 70.6400000000
                            else:
                                return 70.1200000000
                        else:
                            if features['Organic_Carbon'] <= 1.1399999857:
                                if features['N'] <= 83.0000000000:
                                    if features['Humidity'] <= 66.3349990845:
                                        return 73.0200000000
                                    else:
                                        return 72.9700000000
                                else:
                                    if features['Humidity'] <= 71.7950000763:
                                        return 73.6100000000
                                    else:
                                        return 74.0400000000
                            else:
                                if features['Region'] <= 1.0000000000:
                                    return 71.7200000000
                                else:
                                    return 72.1500000000
                    else:
                        if features['Rainfall'] <= 827.3400268555:
                            if features['Soil_pH'] <= 7.5350000858:
                                if features['Region'] <= 1.5000000000:
                                    if features['Soil_pH'] <= 5.7100000381:
                                        return 70.7800000000
                                    else:
                                        return 72.9018181818
                                else:
                                    if features['Pesticide_Used'] <= 5.5599999428:
                                        return 72.6775000000
                                    else:
                                        return 73.8833333333
                            else:
                                if features['Altitude'] <= 1173.0000000000:
                                    if features['Fertilizer_Used'] <= 106.4799995422:
                                        return 71.0250000000
                                    else:
                                        return 71.2300000000
                                else:
                                    if features['Rainfall'] <= 373.9750061035:
                                        return 72.3100000000
                                    else:
                                        return 72.9200000000
                        else:
                            if features['Humidity'] <= 59.0550003052:
                                if features['Fertilizer_Used'] <= 185.0249938965:
                                    if features['Altitude'] <= 243.5000000000:
                                        return 74.4150000000
                                    else:
                                        return 72.8011764706
                                else:
                                    if features['Humidity'] <= 37.3249988556:
                                        return 73.4275000000
                                    else:
                                        return 74.5471428571
                            else:
                                if features['Fertilizer_Used'] <= 91.3299980164:
                                    if features['Soil_pH'] <= 7.0550000668:
                                        return 74.0000000000
                                    else:
                                        return 72.5266666667
                                else:
                                    if features['P'] <= 74.0000000000:
                                        return 74.3706250000
                                    else:
                                        return 74.8475000000
            else:
                if features['Fertilizer_Used'] <= 119.7800025940:
                    if features['Wind_Speed'] <= 11.9600000381:
                        if features['Soil_pH'] <= 7.2649998665:
                            if features['N'] <= 40.0000000000:
                                if features['Rainfall'] <= 448.9700012207:
                                    return 71.4100000000
                                else:
                                    if features['Region'] <= 2.5000000000:
                                        return 72.7200000000
                                    else:
                                        return 73.4000000000
                            else:
                                if features['Irrigation_Type'] <= 1.5000000000:
                                    if features['Pesticide_Used'] <= 11.7449998856:
                                        return 74.6140000000
                                    else:
                                        return 73.3262500000
                                else:
                                    if features['Soil_Type'] <= 0.5000000000:
                                        return 74.4050000000
                                    else:
                                        return 74.9250000000
                        else:
                            if features['Altitude'] <= 1044.5000000000:
                                if features['Wind_Speed'] <= 2.3349999189:
                                    return 72.4100000000
                                else:
                                    if features['K'] <= 59.5000000000:
                                        return 71.1400000000
                                    else:
                                        return 71.7300000000
                            else:
                                if features['P'] <= 25.0000000000:
                                    return 73.4700000000
                                else:
                                    if features['Soil_pH'] <= 7.5499999523:
                                        return 72.6200000000
                                    else:
                                        return 72.9500000000
                    else:
                        if features['Fertilizer_Used'] <= 84.8699989319:
                            if features['Region'] <= 0.5000000000:
                                return 70.8000000000
                            else:
                                if features['K'] <= 77.5000000000:
                                    return 71.7200000000
                                else:
                                    if features['Fertilizer_Used'] <= 77.3499984741:
                                        return 72.4400000000
                                    else:
                                        return 72.2433333333
                        else:
                            if features['Temperature'] <= 33.9600009918:
                                if features['Pesticide_Used'] <= 15.1999998093:
                                    if features['Fertilizer_Used'] <= 103.3400001526:
                                        return 72.4733333333
                                    else:
                                        return 73.0333333333
                                else:
                                    if features['Soil_Moisture'] <= 42.6149997711:
                                        return 72.2700000000
                                    else:
                                        return 71.9350000000
                            else:
                                if features['P'] <= 86.0000000000:
                                    if features['K'] <= 119.5000000000:
                                        return 73.6850000000
                                    else:
                                        return 73.0500000000
                                else:
                                    return 74.7900000000
                else:
                    if features['Rainfall'] <= 457.2849884033:
                        if features['K'] <= 94.0000000000:
                            if features['Soil_Type'] <= 0.5000000000:
                                if features['Altitude'] <= 554.0000000000:
                                    return 73.0700000000
                                else:
                                    return 73.7600000000
                            else:
                                if features['K'] <= 56.5000000000:
                                    if features['Soil_pH'] <= 6.6349999905:
                                        return 72.0900000000
                                    else:
                                        return 71.6900000000
                                else:
                                    if features['K'] <= 74.0000000000:
                                        return 72.7300000000
                                    else:
                                        return 72.3100000000
                        else:
                            if features['K'] <= 146.0000000000:
                                if features['Soil_pH'] <= 5.3650000095:
                                    return 74.2200000000
                                else:
                                    if features['N'] <= 120.5000000000:
                                        return 74.7500000000
                                    else:
                                        return 74.7900000000
                            else:
                                if features['Region'] <= 1.5000000000:
                                    return 72.6800000000
                                else:
                                    return 73.3800000000
                    else:
                        if features['Irrigation_Type'] <= 2.5000000000:
                            if features['Soil_pH'] <= 7.2799999714:
                                if features['N'] <= 95.5000000000:
                                    if features['Organic_Carbon'] <= 0.5600000024:
                                        return 75.0000000000
                                    else:
                                        return 73.6661904762
                                else:
                                    if features['Wind_Speed'] <= 4.8750000000:
                                        return 75.5585714286
                                    else:
                                        return 74.5703703704
                            else:
                                if features['Soil_Type'] <= 2.5000000000:
                                    if features['Sunlight_Hours'] <= 9.3600001335:
                                        return 72.3616666667
                                    else:
                                        return 74.5400000000
                                else:
                                    if features['Pesticide_Used'] <= 18.7849998474:
                                        return 73.5533333333
                                    else:
                                        return 74.7150000000
                        else:
                            if features['N'] <= 71.5000000000:
                                if features['Altitude'] <= 1232.5000000000:
                                    if features['Temperature'] <= 29.5950002670:
                                        return 74.1266666667
                                    else:
                                        return 75.5200000000
                                else:
                                    if features['K'] <= 43.5000000000:
                                        return 72.5400000000
                                    else:
                                        return 73.1500000000
                            else:
                                if features['Soil_pH'] <= 5.1699998379:
                                    if features['N'] <= 149.5000000000:
                                        return 73.1900000000
                                    else:
                                        return 73.2000000000
                                else:
                                    if features['Organic_Carbon'] <= 1.4199999571:
                                        return 76.1506666667
                                    else:
                                        return 74.4450000000
        else:
            if features['Rainfall'] <= 2323.4100341797:
                if features['Fertilizer_Used'] <= 130.6850051880:
                    if features['Soil_pH'] <= 5.4749999046:
                        if features['Wind_Speed'] <= 13.1449999809:
                            if features['N'] <= 76.5000000000:
                                if features['Sunlight_Hours'] <= 8.9100000858:
                                    if features['Fertilizer_Used'] <= 120.0649986267:
                                        return 73.3050000000
                                    else:
                                        return 73.1200000000
                                else:
                                    if features['Temperature'] <= 23.3549990654:
                                        return 72.3300000000
                                    else:
                                        return 72.3600000000
                            else:
                                if features['Organic_Carbon'] <= 0.6099999845:
                                    if features['Soil_Type'] <= 1.5000000000:
                                        return 73.9100000000
                                    else:
                                        return 73.7800000000
                                else:
                                    if features['Soil_Moisture'] <= 60.7550010681:
                                        return 74.1775000000
                                    else:
                                        return 74.4900000000
                        else:
                            if features['Soil_pH'] <= 5.3750000000:
                                if features['Sunlight_Hours'] <= 9.8699998856:
                                    if features['Humidity'] <= 39.8149995804:
                                        return 72.1800000000
                                    else:
                                        return 72.6900000000
                                else:
                                    return 73.5100000000
                            else:
                                return 71.0800000000
                    else:
                        if features['Soil_pH'] <= 8.0650000572:
                            if features['Soil_Moisture'] <= 36.6449985504:
                                if features['N'] <= 98.5000000000:
                                    if features['Pesticide_Used'] <= 14.8849997520:
                                        return 73.6030000000
                                    else:
                                        return 72.0200000000
                                else:
                                    if features['Soil_pH'] <= 6.3150000572:
                                        return 75.0266666667
                                    else:
                                        return 73.9875000000
                            else:
                                if features['Soil_pH'] <= 5.5150001049:
                                    return 76.7400000000
                                else:
                                    if features['Fertilizer_Used'] <= 127.2999992371:
                                        return 74.5848888889
                                    else:
                                        return 73.6960000000
                        else:
                            if features['Soil_Moisture'] <= 50.4950008392:
                                if features['N'] <= 85.5000000000:
                                    if features['Season'] <= 1.5000000000:
                                        return 72.7000000000
                                    else:
                                        return 72.6900000000
                                else:
                                    return 71.4500000000
                            else:
                                if features['Soil_Moisture'] <= 61.8400001526:
                                    if features['K'] <= 66.5000000000:
                                        return 73.5100000000
                                    else:
                                        return 73.0600000000
                                else:
                                    return 74.3000000000
                else:
                    if features['Wind_Speed'] <= 13.3150000572:
                        if features['Soil_Moisture'] <= 34.4200000763:
                            if features['P'] <= 71.0000000000:
                                if features['Altitude'] <= 197.5000000000:
                                    if features['Temperature'] <= 14.1400003433:
                                        return 72.2800000000
                                    else:
                                        return 73.2200000000
                                else:
                                    if features['Region'] <= 0.5000000000:
                                        return 73.5650000000
                                    else:
                                        return 74.4160000000
                            else:
                                if features['Humidity'] <= 53.9250011444:
                                    if features['Temperature'] <= 34.7849998474:
                                        return 74.5700000000
                                    else:
                                        return 72.6600000000
                                else:
                                    if features['Season'] <= 0.5000000000:
                                        return 75.3466666667
                                    else:
                                        return 76.2680000000
                        else:
                            if features['K'] <= 124.5000000000:
                                if features['Humidity'] <= 81.7800025940:
                                    if features['Fertilizer_Used'] <= 136.3249969482:
                                        return 73.2166666667
                                    else:
                                        return 75.0254545455
                                else:
                                    if features['Soil_Type'] <= 2.5000000000:
                                        return 76.4100000000
                                    else:
                                        return 75.0200000000
                            else:
                                if features['Fertilizer_Used'] <= 204.7649993896:
                                    if features['Sunlight_Hours'] <= 6.4850001335:
                                        return 74.9600000000
                                    else:
                                        return 75.8257142857
                                else:
                                    if features['Sunlight_Hours'] <= 6.9349999428:
                                        return 77.3950000000
                                    else:
                                        return 76.7950000000
                    else:
                        if features['Sunlight_Hours'] <= 6.0000000000:
                            if features['Temperature'] <= 30.9250001907:
                                if features['Wind_Speed'] <= 15.9500002861:
                                    if features['N'] <= 92.5000000000:
                                        return 72.9066666667
                                    else:
                                        return 73.6333333333
                                else:
                                    if features['Fertilizer_Used'] <= 148.2000045776:
                                        return 74.4500000000
                                    else:
                                        return 74.0200000000
                            else:
                                if features['Humidity'] <= 52.2849998474:
                                    return 70.9600000000
                                else:
                                    return 73.0100000000
                        else:
                            if features['P'] <= 22.5000000000:
                                if features['K'] <= 104.5000000000:
                                    if features['Organic_Carbon'] <= 0.6999999732:
                                        return 75.2100000000
                                    else:
                                        return 75.7000000000
                                else:
                                    if features['Humidity'] <= 41.6100006104:
                                        return 76.5600000000
                                    else:
                                        return 76.7500000000
                            else:
                                if features['Organic_Carbon'] <= 1.1549999714:
                                    if features['Fertilizer_Used'] <= 137.2749938965:
                                        return 76.1000000000
                                    else:
                                        return 73.9847619048
                                else:
                                    if features['Soil_pH'] <= 6.3350000381:
                                        return 75.5528571429
                                    else:
                                        return 74.2700000000
            else:
                if features['Soil_pH'] <= 7.2100000381:
                    if features['K'] <= 115.5000000000:
                        if features['Fertilizer_Used'] <= 120.4350013733:
                            if features['N'] <= 59.0000000000:
                                return 71.5200000000
                            else:
                                if features['P'] <= 52.0000000000:
                                    if features['K'] <= 103.0000000000:
                                        return 74.0766666667
                                    else:
                                        return 75.7200000000
                                else:
                                    if features['Soil_Type'] <= 0.5000000000:
                                        return 73.9650000000
                                    else:
                                        return 75.6540000000
                        else:
                            if features['Region'] <= 0.5000000000:
                                if features['N'] <= 105.5000000000:
                                    if features['Irrigation_Type'] <= 2.5000000000:
                                        return 73.9700000000
                                    else:
                                        return 72.7100000000
                                else:
                                    if features['Rainfall'] <= 2452.0400390625:
                                        return 74.5300000000
                                    else:
                                        return 76.0166666667
                            else:
                                if features['Soil_Moisture'] <= 43.8899993896:
                                    if features['Organic_Carbon'] <= 1.4350000024:
                                        return 75.2885714286
                                    else:
                                        return 76.1800000000
                                else:
                                    if features['Sunlight_Hours'] <= 9.0850000381:
                                        return 75.8955555556
                                    else:
                                        return 77.0328571429
                    else:
                        if features['Wind_Speed'] <= 12.3499999046:
                            if features['Organic_Carbon'] <= 0.4300000072:
                                if features['Rainfall'] <= 2719.6300048828:
                                    return 78.3100000000
                                else:
                                    return 78.8100000000
                            else:
                                if features['Fertilizer_Used'] <= 200.8399963379:
                                    if features['Temperature'] <= 29.0200004578:
                                        return 76.4742857143
                                    else:
                                        return 75.3400000000
                                else:
                                    if features['Pesticide_Used'] <= 17.5100002289:
                                        return 77.1025000000
                                    else:
                                        return 77.7066666667
                        else:
                            if features['Soil_Moisture'] <= 21.0000000000:
                                return 74.4600000000
                            else:
                                if features['Sunlight_Hours'] <= 10.8850002289:
                                    if features['N'] <= 83.5000000000:
                                        return 75.4825000000
                                    else:
                                        return 75.2500000000
                                else:
                                    return 76.2700000000
                else:
                    if features['K'] <= 63.5000000000:
                        if features['Soil_Moisture'] <= 45.1049995422:
                            if features['Fertilizer_Used'] <= 155.9100036621:
                                if features['Altitude'] <= 1729.0000000000:
                                    if features['Organic_Carbon'] <= 0.8599999845:
                                        return 71.5800000000
                                    else:
                                        return 72.5350000000
                                else:
                                    if features['Temperature'] <= 23.5999999046:
                                        return 73.1900000000
                                    else:
                                        return 73.4250000000
                            else:
                                if features['Soil_pH'] <= 8.1749997139:
                                    if features['Soil_Moisture'] <= 36.7500000000:
                                        return 73.9900000000
                                    else:
                                        return 74.4233333333
                                else:
                                    return 73.1700000000
                        else:
                            if features['Wind_Speed'] <= 12.1999998093:
                                if features['Soil_Type'] <= 0.5000000000:
                                    return 76.7600000000
                                else:
                                    if features['Organic_Carbon'] <= 0.8849999905:
                                        return 76.0600000000
                                    else:
                                        return 75.6500000000
                            else:
                                return 73.9900000000
                    else:
                        if features['Organic_Carbon'] <= 0.4299999923:
                            if features['Rainfall'] <= 2571.4699707031:
                                if features['Organic_Carbon'] <= 0.3900000006:
                                    return 76.1900000000
                                else:
                                    return 75.8100000000
                            else:
                                return 77.1700000000
                        else:
                            if features['Fertilizer_Used'] <= 153.0100021362:
                                if features['N'] <= 150.5000000000:
                                    if features['Rainfall'] <= 2641.9050292969:
                                        return 74.1463636364
                                    else:
                                        return 74.8900000000
                                else:
                                    if features['Organic_Carbon'] <= 0.6250000000:
                                        return 74.2600000000
                                    else:
                                        return 75.6700000000
                            else:
                                if features['Wind_Speed'] <= 7.0599999428:
                                    if features['Sunlight_Hours'] <= 8.2100002766:
                                        return 74.2400000000
                                    else:
                                        return 73.9000000000
                                else:
                                    if features['Humidity'] <= 59.5850009918:
                                        return 75.5566666667
                                    else:
                                        return 76.2225000000
    else:
        if features['Rainfall'] <= 1612.7300415039:
            if features['Soil_Moisture'] <= 35.4200000763:
                if features['Soil_pH'] <= 5.4349999428:
                    if features['Humidity'] <= 35.1449985504:
                        if features['Sunlight_Hours'] <= 7.4299998283:
                            return 72.1800000000
                        else:
                            return 72.3300000000
                    else:
                        if features['Sunlight_Hours'] <= 10.3299999237:
                            if features['Rainfall'] <= 1522.4749755859:
                                if features['Soil_Moisture'] <= 16.8050003052:
                                    if features['Soil_pH'] <= 5.0750000477:
                                        return 73.7650000000
                                    else:
                                        return 73.0900000000
                                else:
                                    if features['K'] <= 51.0000000000:
                                        return 73.3500000000
                                    else:
                                        return 74.1641666667
                            else:
                                return 75.3200000000
                        else:
                            if features['Humidity'] <= 58.7450008392:
                                return 72.6800000000
                            else:
                                if features['Organic_Carbon'] <= 0.9099999964:
                                    return 73.1500000000
                                else:
                                    return 72.9300000000
                else:
                    if features['Rainfall'] <= 1111.8850097656:
                        if features['Soil_pH'] <= 7.2650001049:
                            if features['Humidity'] <= 75.9599990845:
                                if features['Pesticide_Used'] <= 21.4500007629:
                                    if features['Pesticide_Used'] <= 14.7349996567:
                                        return 75.0862500000
                                    else:
                                        return 74.0642857143
                                else:
                                    if features['Rainfall'] <= 721.9950103760:
                                        return 76.9700000000
                                    else:
                                        return 76.6900000000
                            else:
                                if features['Pesticide_Used'] <= 16.5250000954:
                                    if features['Fertilizer_Used'] <= 324.0800018311:
                                        return 73.6642857143
                                    else:
                                        return 73.0000000000
                                else:
                                    if features['Pesticide_Used'] <= 20.7400007248:
                                        return 74.2075000000
                                    else:
                                        return 75.0450000000
                        else:
                            if features['Rainfall'] <= 631.7550048828:
                                if features['N'] <= 39.0000000000:
                                    return 71.8100000000
                                else:
                                    if features['Sunlight_Hours'] <= 8.1950001717:
                                        return 72.9850000000
                                    else:
                                        return 73.3950000000
                            else:
                                if features['Temperature'] <= 12.6950001717:
                                    return 71.8000000000
                                else:
                                    if features['P'] <= 52.0000000000:
                                        return 75.0960000000
                                    else:
                                        return 74.0150000000
                    else:
                        if features['N'] <= 71.0000000000:
                            if features['Temperature'] <= 20.6949996948:
                                if features['Soil_pH'] <= 5.6150000095:
                                    return 75.0300000000
                                else:
                                    if features['Humidity'] <= 50.7049999237:
                                        return 74.2100000000
                                    else:
                                        return 73.8820000000
                            else:
                                if features['Organic_Carbon'] <= 0.7750000060:
                                    if features['Pesticide_Used'] <= 9.9349997044:
                                        return 74.6700000000
                                    else:
                                        return 74.1500000000
                                else:
                                    if features['K'] <= 96.0000000000:
                                        return 75.1533333333
                                    else:
                                        return 75.4633333333
                        else:
                            if features['Soil_pH'] <= 6.9849998951:
                                if features['Sunlight_Hours'] <= 9.8150000572:
                                    if features['N'] <= 91.5000000000:
                                        return 76.0250000000
                                    else:
                                        return 76.4233333333
                                else:
                                    return 77.2900000000
                            else:
                                if features['P'] <= 40.5000000000:
                                    if features['Altitude'] <= 1815.5000000000:
                                        return 75.8775000000
                                    else:
                                        return 75.0500000000
                                else:
                                    if features['P'] <= 45.0000000000:
                                        return 74.4300000000
                                    else:
                                        return 75.1633333333
            else:
                if features['Rainfall'] <= 714.5950012207:
                    if features['Soil_pH'] <= 5.8150000572:
                        if features['Fertilizer_Used'] <= 327.8950042725:
                            if features['Humidity'] <= 31.3299999237:
                                return 76.8100000000
                            else:
                                if features['Wind_Speed'] <= 7.1150000095:
                                    if features['Humidity'] <= 36.0550003052:
                                        return 72.5300000000
                                    else:
                                        return 73.6650000000
                                else:
                                    if features['Organic_Carbon'] <= 1.3249999881:
                                        return 74.4425000000
                                    else:
                                        return 75.1750000000
                        else:
                            if features['Rainfall'] <= 399.7099914551:
                                return 72.7300000000
                            else:
                                return 71.8500000000
                    else:
                        if features['Fertilizer_Used'] <= 243.7450027466:
                            if features['Altitude'] <= 544.0000000000:
                                return 72.5800000000
                            else:
                                return 74.2300000000
                        else:
                            if features['Wind_Speed'] <= 1.5250000358:
                                return 77.3800000000
                            else:
                                if features['Temperature'] <= 14.6900000572:
                                    if features['Region'] <= 3.5000000000:
                                        return 74.8333333333
                                    else:
                                        return 73.8700000000
                                else:
                                    if features['Pesticide_Used'] <= 13.7450003624:
                                        return 75.2988235294
                                    else:
                                        return 75.8723076923
                else:
                    if features['Soil_Moisture'] <= 58.8500003815:
                        if features['Wind_Speed'] <= 8.1399998665:
                            if features['N'] <= 170.5000000000:
                                if features['Soil_pH'] <= 5.7799999714:
                                    if features['N'] <= 159.5000000000:
                                        return 75.4546153846
                                    else:
                                        return 73.8300000000
                                else:
                                    if features['Organic_Carbon'] <= 0.4249999970:
                                        return 77.0900000000
                                    else:
                                        return 75.9281818182
                            else:
                                if features['Season'] <= 1.5000000000:
                                    if features['Temperature'] <= 21.9799995422:
                                        return 77.1500000000
                                    else:
                                        return 75.8000000000
                                else:
                                    return 78.6400000000
                        else:
                            if features['Rainfall'] <= 1216.9050292969:
                                if features['P'] <= 42.5000000000:
                                    if features['Pesticide_Used'] <= 10.4749999046:
                                        return 75.6600000000
                                    else:
                                        return 73.2550000000
                                else:
                                    if features['Humidity'] <= 59.9100017548:
                                        return 75.5414285714
                                    else:
                                        return 74.6122222222
                            else:
                                if features['Soil_Type'] <= 1.5000000000:
                                    if features['P'] <= 50.5000000000:
                                        return 74.7200000000
                                    else:
                                        return 76.6133333333
                                else:
                                    if features['Sunlight_Hours'] <= 7.6749999523:
                                        return 76.7316666667
                                    else:
                                        return 75.7000000000
                    else:
                        if features['Organic_Carbon'] <= 1.1200000048:
                            if features['K'] <= 22.5000000000:
                                if features['Soil_Moisture'] <= 61.8050003052:
                                    return 74.5400000000
                                else:
                                    return 74.8900000000
                            else:
                                if features['Region'] <= 0.5000000000:
                                    if features['Wind_Speed'] <= 11.6599998474:
                                        return 76.6400000000
                                    else:
                                        return 78.5800000000
                                else:
                                    if features['N'] <= 101.0000000000:
                                        return 76.6300000000
                                    else:
                                        return 75.8383333333
                        else:
                            if features['N'] <= 147.0000000000:
                                if features['Rainfall'] <= 1355.4099731445:
                                    if features['Soil_Moisture'] <= 60.7849998474:
                                        return 77.6800000000
                                    else:
                                        return 77.1950000000
                                else:
                                    return 76.4900000000
                            else:
                                if features['Season'] <= 1.5000000000:
                                    return 78.5300000000
                                else:
                                    return 79.2200000000
        else:
            if features['Fertilizer_Used'] <= 317.9199981689:
                if features['N'] <= 110.0000000000:
                    if features['Soil_Moisture'] <= 49.9650001526:
                        if features['Wind_Speed'] <= 11.3350000381:
                            if features['Sunlight_Hours'] <= 10.5150003433:
                                if features['Organic_Carbon'] <= 0.3200000077:
                                    return 73.4800000000
                                else:
                                    if features['Soil_Moisture'] <= 45.7700004578:
                                        return 76.2428571429
                                    else:
                                        return 75.3900000000
                            else:
                                if features['Rainfall'] <= 1700.6000366211:
                                    return 73.5700000000
                                else:
                                    if features['Rainfall'] <= 2519.5949707031:
                                        return 74.9800000000
                                    else:
                                        return 76.0400000000
                        else:
                            if features['Soil_pH'] <= 7.1050000191:
                                if features['Humidity'] <= 31.3699998856:
                                    return 72.7200000000
                                else:
                                    if features['K'] <= 22.5000000000:
                                        return 73.3500000000
                                    else:
                                        return 75.5194736842
                            else:
                                if features['Wind_Speed'] <= 15.2350001335:
                                    if features['Fertilizer_Used'] <= 254.6750030518:
                                        return 74.0200000000
                                    else:
                                        return 73.7950000000
                                else:
                                    return 73.3100000000
                    else:
                        if features['Fertilizer_Used'] <= 253.3099975586:
                            if features['Soil_pH'] <= 7.6849999428:
                                if features['P'] <= 53.5000000000:
                                    return 76.1100000000
                                else:
                                    return 75.5900000000
                            else:
                                if features['Fertilizer_Used'] <= 247.0999984741:
                                    return 73.8800000000
                                else:
                                    return 73.2300000000
                        else:
                            if features['Organic_Carbon'] <= 1.1700000167:
                                if features['Pesticide_Used'] <= 15.7100000381:
                                    if features['K'] <= 90.0000000000:
                                        return 78.3266666667
                                    else:
                                        return 77.0733333333
                                else:
                                    if features['Pesticide_Used'] <= 17.3850002289:
                                        return 75.6700000000
                                    else:
                                        return 76.8880000000
                            else:
                                if features['N'] <= 30.5000000000:
                                    return 74.4000000000
                                else:
                                    if features['Altitude'] <= 1091.0000000000:
                                        return 75.9766666667
                                    else:
                                        return 76.5625000000
                else:
                    if features['Wind_Speed'] <= 10.7199997902:
                        if features['Sunlight_Hours'] <= 5.8999998569:
                            if features['Rainfall'] <= 2197.6500244141:
                                if features['Soil_pH'] <= 6.0449998379:
                                    if features['P'] <= 45.0000000000:
                                        return 76.7700000000
                                    else:
                                        return 76.3900000000
                                else:
                                    if features['Pesticide_Used'] <= 0.3150000051:
                                        return 76.5800000000
                                    else:
                                        return 77.5060000000
                            else:
                                if features['Soil_Moisture'] <= 39.9899997711:
                                    if features['Organic_Carbon'] <= 1.0450000167:
                                        return 78.2250000000
                                    else:
                                        return 77.9000000000
                                else:
                                    if features['Temperature'] <= 23.3850002289:
                                        return 80.9900000000
                                    else:
                                        return 79.8400000000
                        else:
                            if features['Humidity'] <= 84.0349998474:
                                if features['Soil_pH'] <= 5.7100000381:
                                    if features['Pesticide_Used'] <= 13.7500000000:
                                        return 76.3140000000
                                    else:
                                        return 75.3250000000
                                else:
                                    if features['Humidity'] <= 57.4949989319:
                                        return 77.6020000000
                                    else:
                                        return 76.6200000000
                            else:
                                if features['Pesticide_Used'] <= 7.7550001144:
                                    return 74.8800000000
                                else:
                                    if features['Sunlight_Hours'] <= 6.6900000572:
                                        return 74.4200000000
                                    else:
                                        return 74.2900000000
                    else:
                        if features['Fertilizer_Used'] <= 248.6999969482:
                            if features['Pesticide_Used'] <= 3.7850000858:
                                if features['K'] <= 78.0000000000:
                                    return 75.8600000000
                                else:
                                    return 76.0100000000
                            else:
                                if features['Humidity'] <= 77.7249984741:
                                    if features['P'] <= 70.0000000000:
                                        return 74.4650000000
                                    else:
                                        return 74.2600000000
                                else:
                                    return 73.7400000000
                        else:
                            if features['Soil_Type'] <= 2.5000000000:
                                if features['Wind_Speed'] <= 15.5450005531:
                                    if features['Sunlight_Hours'] <= 6.4400000572:
                                        return 76.5033333333
                                    else:
                                        return 77.6650000000
                                else:
                                    if features['Rainfall'] <= 2478.9549560547:
                                        return 76.0450000000
                                    else:
                                        return 75.1950000000
                            else:
                                if features['Soil_pH'] <= 6.4249999523:
                                    if features['N'] <= 121.5000000000:
                                        return 76.4100000000
                                    else:
                                        return 75.1966666667
                                else:
                                    if features['Humidity'] <= 75.0050010681:
                                        return 76.7300000000
                                    else:
                                        return 76.4500000000
            else:
                if features['Soil_Moisture'] <= 40.7399997711:
                    if features['Wind_Speed'] <= 16.0050005913:
                        if features['Soil_pH'] <= 7.6099998951:
                            if features['Soil_pH'] <= 5.2549998760:
                                if features['P'] <= 30.5000000000:
                                    if features['Wind_Speed'] <= 4.8650001287:
                                        return 75.5900000000
                                    else:
                                        return 75.1200000000
                                else:
                                    if features['Soil_Type'] <= 1.0000000000:
                                        return 76.0400000000
                                    else:
                                        return 76.4600000000
                            else:
                                if features['Humidity'] <= 35.6450004578:
                                    if features['Season'] <= 1.5000000000:
                                        return 78.0200000000
                                    else:
                                        return 78.7900000000
                                else:
                                    if features['K'] <= 65.5000000000:
                                        return 76.3300000000
                                    else:
                                        return 77.2071428571
                        else:
                            if features['Fertilizer_Used'] <= 334.0800018311:
                                if features['Sunlight_Hours'] <= 5.7899999619:
                                    return 74.1700000000
                                else:
                                    return 75.1200000000
                            else:
                                return 76.1200000000
                    else:
                        if features['Region'] <= 3.0000000000:
                            if features['Rainfall'] <= 2008.1750488281:
                                if features['P'] <= 79.0000000000:
                                    if features['Region'] <= 1.5000000000:
                                        return 75.1100000000
                                    else:
                                        return 75.2400000000
                                else:
                                    return 74.5800000000
                            else:
                                if features['Fertilizer_Used'] <= 340.9799957275:
                                    if features['Wind_Speed'] <= 17.0649995804:
                                        return 75.7600000000
                                    else:
                                        return 75.6100000000
                                else:
                                    return 75.9300000000
                        else:
                            return 77.0000000000
                else:
                    if features['Humidity'] <= 85.9850006104:
                        if features['Fertilizer_Used'] <= 344.6900024414:
                            if features['Soil_pH'] <= 4.9349999428:
                                return 75.5100000000
                            else:
                                if features['N'] <= 49.5000000000:
                                    if features['Sunlight_Hours'] <= 8.8650002480:
                                        return 76.3066666667
                                    else:
                                        return 77.6800000000
                                else:
                                    if features['Fertilizer_Used'] <= 343.1700134277:
                                        return 77.7295238095
                                    else:
                                        return 76.8600000000
                        else:
                            if features['N'] <= 99.0000000000:
                                if features['Sunlight_Hours'] <= 8.4500002861:
                                    if features['K'] <= 68.0000000000:
                                        return 79.5100000000
                                    else:
                                        return 79.1100000000
                                else:
                                    if features['Humidity'] <= 58.9549999237:
                                        return 78.2000000000
                                    else:
                                        return 78.5200000000
                            else:
                                if features['Soil_Moisture'] <= 43.8250007629:
                                    return 77.3100000000
                                else:
                                    return 76.8700000000
                    else:
                        if features['Temperature'] <= 19.5450000763:
                            if features['Soil_Type'] <= 2.5000000000:
                                if features['N'] <= 153.5000000000:
                                    if features['Wind_Speed'] <= 12.3400003910:
                                        return 77.1600000000
                                    else:
                                        return 77.3000000000
                                else:
                                    return 77.4500000000
                            else:
                                if features['Rainfall'] <= 2424.3549804688:
                                    return 76.9100000000
                                else:
                                    return 76.9600000000
                        else:
                            if features['Soil_pH'] <= 7.5199997425:
                                if features['Region'] <= 1.5000000000:
                                    return 74.5700000000
                                else:
                                    return 75.1400000000
                            else:
                                return 75.7800000000
