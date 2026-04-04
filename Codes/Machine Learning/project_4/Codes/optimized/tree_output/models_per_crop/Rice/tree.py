def predict_tree(features):
    if features['num__Fertilizer_Used'] <= 201.8300018311:
        if features['num__Rainfall'] <= 1731.0900268555:
            if features['num__Fertilizer_Used'] <= 140.2049942017:
                if features['num__Rainfall'] <= 897.4299926758:
                    if features['num__Soil_Moisture'] <= 47.9549999237:
                        if features['num__K'] <= 94.5000000000:
                            if features['num__Pesticide_Used'] <= 9.1050000191:
                                return 7.0731250000
                            else:
                                return 6.2228000000
                        else:
                            return 7.2803846154
                    else:
                        return 7.7514814815
                else:
                    if features['num__Wind_Speed'] <= 6.2300000191:
                        if features['num__K'] <= 98.5000000000:
                            return 7.9768965517
                        else:
                            return 9.1295454545
                    else:
                        if features['num__Soil_Moisture'] <= 38.4849987030:
                            if features['num__Fertilizer_Used'] <= 81.6900024414:
                                return 6.8233333333
                            else:
                                return 7.5135000000
                        else:
                            if features['cat__Season_Kharif'] <= 0.5000000000:
                                return 8.5204545455
                            else:
                                return 7.5047368421
            else:
                if features['num__Soil_Moisture'] <= 44.0450000763:
                    if features['num__Soil_pH'] <= 7.6000001431:
                        if features['num__N'] <= 85.0000000000:
                            if features['num__Pesticide_Used'] <= 12.6299996376:
                                return 8.3706666667
                            else:
                                return 7.5506666667
                        else:
                            if features['num__Rainfall'] <= 1086.0199584961:
                                if features['num__Soil_pH'] <= 6.2249999046:
                                    return 8.1187500000
                                else:
                                    return 8.8173333333
                            else:
                                return 9.1326086957
                    else:
                        return 7.2100000000
                else:
                    if features['num__Sunlight_Hours'] <= 10.0050001144:
                        if features['num__N'] <= 88.5000000000:
                            return 8.2795238095
                        else:
                            if features['num__Organic_Carbon'] <= 0.8600000143:
                                return 8.6666666667
                            else:
                                return 9.9040000000
                    else:
                        return 9.9986666667
        else:
            if features['num__Fertilizer_Used'] <= 134.1699981689:
                if features['num__Soil_Moisture'] <= 40.8199996948:
                    if features['num__Soil_pH'] <= 7.2149999142:
                        if features['num__Wind_Speed'] <= 8.0799999237:
                            return 9.4548000000
                        else:
                            return 8.5822727273
                    else:
                        return 7.8029411765
                else:
                    if features['num__Rainfall'] <= 2272.8099365234:
                        if features['num__Temperature'] <= 24.9899997711:
                            return 8.8300000000
                        else:
                            return 9.4347619048
                    else:
                        return 10.0588888889
            else:
                if features['num__Sunlight_Hours'] <= 8.4699997902:
                    if features['num__Humidity'] <= 48.1700000763:
                        return 10.4464000000
                    else:
                        if features['num__Altitude'] <= 734.0000000000:
                            return 9.3725000000
                        else:
                            if features['num__Rainfall'] <= 2152.3850097656:
                                return 9.7383333333
                            else:
                                return 10.1804545455
                else:
                    if features['num__Humidity'] <= 64.9399986267:
                        return 8.7050000000
                    else:
                        return 9.9938095238
    else:
        if features['num__Rainfall'] <= 1553.9000244141:
            if features['num__Soil_Moisture'] <= 42.4000015259:
                if features['num__Fertilizer_Used'] <= 298.8450012207:
                    if features['num__Soil_Moisture'] <= 30.4099998474:
                        if features['num__Rainfall'] <= 704.2500000000:
                            return 7.7355000000
                        else:
                            if features['num__Soil_pH'] <= 6.9400000572:
                                if features['num__Soil_pH'] <= 5.7249999046:
                                    return 8.5056250000
                                else:
                                    return 9.3317391304
                            else:
                                return 8.0917647059
                    else:
                        if features['num__Wind_Speed'] <= 12.1050000191:
                            return 9.8162068966
                        else:
                            return 8.7166666667
                else:
                    if features['num__Soil_pH'] <= 7.1150000095:
                        if features['num__Temperature'] <= 24.7599992752:
                            return 10.2870370370
                        else:
                            return 9.5364000000
                    else:
                        return 9.2331818182
            else:
                if features['num__K'] <= 76.5000000000:
                    if features['num__Soil_pH'] <= 5.7850000858:
                        return 8.5168421053
                    else:
                        if features['num__Rainfall'] <= 947.2200012207:
                            return 9.2113636364
                        else:
                            return 10.5987500000
                else:
                    if features['num__Fertilizer_Used'] <= 249.7550048828:
                        if features['num__Rainfall'] <= 925.5299987793:
                            return 9.2312500000
                        else:
                            return 9.8760000000
                    else:
                        if features['num__Organic_Carbon'] <= 1.0199999809:
                            if features['num__P'] <= 55.0000000000:
                                return 10.7194736842
                            else:
                                return 9.8500000000
                        else:
                            if features['num__Soil_pH'] <= 6.7049999237:
                                return 11.4913333333
                            else:
                                return 10.8611764706
        else:
            if features['num__Fertilizer_Used'] <= 284.4949951172:
                if features['num__Soil_Moisture'] <= 44.1399993896:
                    if features['num__Wind_Speed'] <= 5.6150000095:
                        if features['num__Wind_Speed'] <= 2.9400000572:
                            return 10.3633333333
                        else:
                            return 10.9923809524
                    else:
                        if features['num__Rainfall'] <= 1794.8750000000:
                            return 8.8673333333
                        else:
                            if features['num__N'] <= 102.0000000000:
                                if features['num__N'] <= 71.5000000000:
                                    return 10.2375000000
                                else:
                                    return 9.3543478261
                            else:
                                return 10.5262068966
                else:
                    if features['num__Rainfall'] <= 2188.6250000000:
                        if features['num__Organic_Carbon'] <= 1.1000000238:
                            return 10.9936842105
                        else:
                            return 9.7738888889
                    else:
                        if features['num__K'] <= 79.5000000000:
                            return 10.9436363636
                        else:
                            return 11.5812000000
            else:
                if features['num__N'] <= 138.5000000000:
                    if features['num__Rainfall'] <= 2543.8599853516:
                        if features['num__P'] <= 32.5000000000:
                            return 10.0488888889
                        else:
                            if features['cat__Region_West'] <= 0.5000000000:
                                if features['num__Organic_Carbon'] <= 0.5850000083:
                                    return 10.6194736842
                                else:
                                    if features['num__Soil_Moisture'] <= 36.7349987030:
                                        return 10.8535000000
                                    else:
                                        return 11.7707692308
                            else:
                                return 10.3664705882
                    else:
                        return 11.7313043478
                else:
                    if features['num__Soil_Moisture'] <= 44.2550010681:
                        return 11.3771428571
                    else:
                        return 12.3100000000
