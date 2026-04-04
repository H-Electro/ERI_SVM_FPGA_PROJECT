def predict_tree(features):
    if features['num__Fertilizer_Used'] <= 216.1450042725:
        if features['num__Rainfall'] <= 1450.5599975586:
            if features['num__Soil_Moisture'] <= 21.1399993896:
                if features['num__Fertilizer_Used'] <= 141.1500015259:
                    return 4.3850000000
                else:
                    return 4.9000000000
            else:
                if features['num__Fertilizer_Used'] <= 108.8699989319:
                    if features['num__Wind_Speed'] <= 3.8299999237:
                        return 6.3850000000
                    else:
                        if features['num__K'] <= 87.5000000000:
                            if features['num__Rainfall'] <= 1019.6199951172:
                                return 4.3800000000
                            else:
                                return 5.3500000000
                        else:
                            if features['num__Rainfall'] <= 842.2500000000:
                                return 5.5600000000
                            else:
                                return 6.1700000000
                else:
                    if features['num__Wind_Speed'] <= 9.9600000381:
                        if features['num__K'] <= 79.5000000000:
                            return 6.4250000000
                        else:
                            if features['cat__Soil_Type_Silt'] <= 0.5000000000:
                                return 6.6500000000
                            else:
                                return 7.4500000000
                    else:
                        if features['num__Soil_pH'] <= 7.3699998856:
                            if features['num__K'] <= 72.0000000000:
                                return 5.7000000000
                            else:
                                return 6.6200000000
                        else:
                            return 4.9750000000
        else:
            if features['num__Fertilizer_Used'] <= 154.2399978638:
                if features['num__Soil_Moisture'] <= 51.0300006866:
                    if features['num__Rainfall'] <= 1902.3549804688:
                        if features['num__Wind_Speed'] <= 7.9550001621:
                            return 6.7300000000
                        else:
                            if features['num__Soil_Moisture'] <= 33.4149990082:
                                return 5.1200000000
                            else:
                                return 6.2000000000
                    else:
                        if features['num__Humidity'] <= 71.0250015259:
                            if features['num__P'] <= 41.5000000000:
                                return 6.0550000000
                            else:
                                return 6.9400000000
                        else:
                            if features['num__Wind_Speed'] <= 10.5549998283:
                                return 7.4800000000
                            else:
                                return 6.9400000000
                else:
                    if features['num__N'] <= 97.0000000000:
                        return 7.4200000000
                    else:
                        return 8.4700000000
            else:
                if features['num__Wind_Speed'] <= 9.3300004005:
                    if features['num__Soil_Moisture'] <= 41.0299987793:
                        if features['num__Humidity'] <= 55.9950008392:
                            return 7.3400000000
                        else:
                            return 8.9650000000
                    else:
                        if features['num__Humidity'] <= 52.5799999237:
                            return 9.9200000000
                        else:
                            return 8.6350000000
                else:
                    if features['num__Rainfall'] <= 1713.5000000000:
                        return 6.3050000000
                    else:
                        if features['num__Soil_Moisture'] <= 32.3100004196:
                            return 7.0850000000
                        else:
                            if features['num__P'] <= 42.5000000000:
                                return 7.4400000000
                            else:
                                return 8.2200000000
    else:
        if features['num__Rainfall'] <= 1745.0050048828:
            if features['num__Soil_Moisture'] <= 28.9549999237:
                if features['num__N'] <= 115.5000000000:
                    if features['num__Humidity'] <= 50.2800006866:
                        return 7.0700000000
                    else:
                        if features['num__Altitude'] <= 1111.0000000000:
                            return 5.9850000000
                        else:
                            return 6.6800000000
                else:
                    if features['num__K'] <= 79.5000000000:
                        return 7.2100000000
                    else:
                        return 8.1250000000
            else:
                if features['num__Wind_Speed'] <= 9.1449999809:
                    if features['num__Rainfall'] <= 1006.3600158691:
                        if features['num__Humidity'] <= 61.1299991608:
                            if features['num__Organic_Carbon'] <= 0.9449999928:
                                return 8.0300000000
                            else:
                                return 8.4650000000
                        else:
                            return 7.0350000000
                    else:
                        if features['num__N'] <= 133.5000000000:
                            return 8.5200000000
                        else:
                            return 9.2000000000
                else:
                    if features['num__Fertilizer_Used'] <= 270.4750061035:
                        if features['num__Soil_pH'] <= 7.1500000954:
                            if features['num__Soil_Moisture'] <= 48.0799999237:
                                return 7.3400000000
                            else:
                                return 8.5850000000
                        else:
                            return 6.8350000000
                    else:
                        if features['num__Soil_pH'] <= 5.6349999905:
                            return 7.5200000000
                        else:
                            if features['num__Rainfall'] <= 831.4299926758:
                                return 7.4900000000
                            else:
                                return 8.2700000000
        else:
            if features['num__N'] <= 73.5000000000:
                if features['num__Wind_Speed'] <= 8.2599997520:
                    return 9.0300000000
                else:
                    if features['num__Soil_Moisture'] <= 48.0450000763:
                        return 7.9600000000
                    else:
                        return 8.8100000000
            else:
                if features['num__K'] <= 56.0000000000:
                    if features['num__Temperature'] <= 22.8400001526:
                        return 8.3000000000
                    else:
                        return 9.1900000000
                else:
                    if features['num__P'] <= 56.5000000000:
                        if features['num__Soil_pH'] <= 6.7999999523:
                            return 9.4900000000
                        else:
                            return 8.6000000000
                    else:
                        if features['num__Soil_Moisture'] <= 45.2150001526:
                            if features['num__Rainfall'] <= 2106.5400390625:
                                return 9.1650000000
                            else:
                                return 9.7600000000
                        else:
                            return 10.3700000000
