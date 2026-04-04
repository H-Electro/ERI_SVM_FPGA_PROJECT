def predict_tree(features):
    if features['Fertilizer_Used'] <= 233.8899993896:
        if features['Rainfall'] <= 992.1300048828:
            if features['K'] <= 126.5000000000:
                if features['Wind_Speed'] <= 13.5300002098:
                    if features['Soil_Moisture'] <= 48.3549995422:
                        if features['Soil_pH'] <= 7.2599999905:
                            if features['K'] <= 101.5000000000:
                                return 73.0700000000
                            else:
                                return 74.0250000000
                        else:
                            return 72.4300000000
                    else:
                        if features['Fertilizer_Used'] <= 153.6699981689:
                            return 73.4200000000
                        else:
                            return 74.2700000000
                else:
                    if features['K'] <= 79.5000000000:
                        return 71.8900000000
                    else:
                        return 72.9400000000
            else:
                if features['N'] <= 117.5000000000:
                    return 73.6300000000
                else:
                    return 74.8500000000
        else:
            if features['Rainfall'] <= 2230.3349609375:
                if features['Soil_Moisture'] <= 51.3899993896:
                    if features['Fertilizer_Used'] <= 97.5149993896:
                        if features['N'] <= 136.5000000000:
                            if features['Rainfall'] <= 1742.2000122070:
                                return 72.8500000000
                            else:
                                return 73.4200000000
                        else:
                            return 74.5600000000
                    else:
                        if features['Soil_pH'] <= 7.2249999046:
                            if features['Soil_pH'] <= 6.0550000668:
                                return 74.0300000000
                            else:
                                return 74.6100000000
                        else:
                            if features['Fertilizer_Used'] <= 169.5650024414:
                                return 73.3800000000
                            else:
                                return 74.0900000000
                else:
                    if features['P'] <= 76.0000000000:
                        if features['N'] <= 111.0000000000:
                            if features['Altitude'] <= 1355.0000000000:
                                return 74.5700000000
                            else:
                                return 73.6500000000
                        else:
                            return 74.8300000000
                    else:
                        return 75.6400000000
            else:
                if features['Soil_pH'] <= 7.8849999905:
                    if features['Fertilizer_Used'] <= 135.2050018311:
                        if features['K'] <= 55.0000000000:
                            return 74.0950000000
                        else:
                            if features['Rainfall'] <= 2544.1350097656:
                                return 74.9600000000
                            else:
                                return 75.2550000000
                    else:
                        if features['Soil_Moisture'] <= 23.2100000381:
                            return 74.7400000000
                        else:
                            if features['Fertilizer_Used'] <= 183.9150009155:
                                return 75.5200000000
                            else:
                                return 76.1500000000
                else:
                    return 74.0100000000
    else:
        if features['Rainfall'] <= 1612.7300415039:
            if features['Soil_Moisture'] <= 36.4400005341:
                if features['Soil_pH'] <= 5.4349999428:
                    return 73.8200000000
                else:
                    if features['Humidity'] <= 79.5499992371:
                        if features['P'] <= 85.5000000000:
                            if features['Fertilizer_Used'] <= 286.8149871826:
                                return 74.1800000000
                            else:
                                return 74.9700000000
                        else:
                            return 75.5100000000
                    else:
                        return 73.9100000000
            else:
                if features['Rainfall'] <= 667.9899902344:
                    if features['Soil_pH'] <= 5.8150000572:
                        return 74.2550000000
                    else:
                        return 75.3050000000
                else:
                    if features['Soil_Moisture'] <= 53.3449993134:
                        if features['Soil_pH'] <= 5.7299997807:
                            return 75.0800000000
                        else:
                            if features['Sunlight_Hours'] <= 8.2399997711:
                                return 75.5300000000
                            else:
                                return 75.9550000000
                    else:
                        if features['K'] <= 52.5000000000:
                            return 75.4400000000
                        else:
                            if features['Altitude'] <= 1089.0000000000:
                                return 76.2400000000
                            else:
                                return 77.0750000000
        else:
            if features['Fertilizer_Used'] <= 317.9199981689:
                if features['Soil_Moisture'] <= 49.9650001526:
                    if features['Wind_Speed'] <= 9.1750001907:
                        if features['N'] <= 103.0000000000:
                            if features['P'] <= 48.5000000000:
                                return 75.6900000000
                            else:
                                return 76.2900000000
                        else:
                            return 76.8600000000
                    else:
                        if features['Sunlight_Hours'] <= 5.9749999046:
                            return 76.1000000000
                        else:
                            if features['Rainfall'] <= 1941.8049926758:
                                return 75.8200000000
                            else:
                                return 75.3150000000
                else:
                    if features['Humidity'] <= 51.4650001526:
                        return 77.2450000000
                    else:
                        if features['Altitude'] <= 922.0000000000:
                            return 75.7200000000
                        else:
                            return 76.7000000000
            else:
                if features['Soil_Moisture'] <= 37.7449989319:
                    if features['Rainfall'] <= 2254.1550292969:
                        return 76.0900000000
                    else:
                        return 76.7800000000
                else:
                    if features['Wind_Speed'] <= 12.4800000191:
                        return 77.6100000000
                    else:
                        return 77.0500000000
