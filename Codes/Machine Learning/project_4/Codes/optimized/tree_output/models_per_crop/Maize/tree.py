def predict_tree(features):
    if features['num__Fertilizer_Used'] <= 192.3549957275:
        if features['num__Rainfall'] <= 1173.4500122070:
            if features['num__Fertilizer_Used'] <= 130.1450042725:
                if features['num__Soil_Moisture'] <= 39.8999996185:
                    if features['num__Temperature'] <= 13.0100002289:
                        return 8.7550000000
                    else:
                        return 7.2837500000
                else:
                    if features['num__Humidity'] <= 84.5950012207:
                        return 8.2901694915
                    else:
                        return 9.5787500000
            else:
                if features['num__K'] <= 141.0000000000:
                    if features['num__Soil_Moisture'] <= 38.5550003052:
                        return 8.3167307692
                    else:
                        return 9.0389830508
                else:
                    return 10.0566666667
        else:
            if features['num__Rainfall'] <= 2229.6900634766:
                if features['num__N'] <= 138.5000000000:
                    if features['num__K'] <= 101.5000000000:
                        return 9.0172807018
                    else:
                        return 9.6606557377
                else:
                    if features['num__Humidity'] <= 36.5100002289:
                        return 8.2050000000
                    else:
                        return 10.1196721311
            else:
                if features['num__Fertilizer_Used'] <= 122.6649971008:
                    if features['num__Soil_Moisture'] <= 24.6250000000:
                        return 8.8841666667
                    else:
                        return 9.9152000000
                else:
                    if features['num__Soil_pH'] <= 7.8949999809:
                        return 10.8317741935
                    else:
                        return 7.9800000000
    else:
        if features['num__Rainfall'] <= 1543.9949951172:
            if features['num__Soil_Moisture'] <= 40.8950004578:
                if features['num__Fertilizer_Used'] <= 270.3550109863:
                    if features['num__Soil_Moisture'] <= 22.7049999237:
                        return 8.3161111111
                    else:
                        return 9.3938235294
                else:
                    if features['num__Temperature'] <= 20.8099994659:
                        return 9.3277419355
                    else:
                        return 10.4345652174
            else:
                if features['num__Fertilizer_Used'] <= 310.6400146484:
                    if features['num__Rainfall'] <= 1086.3599853516:
                        return 10.0162666667
                    else:
                        return 10.7978947368
                else:
                    if features['num__Rainfall'] <= 900.2449951172:
                        return 10.9588235294
                    else:
                        return 12.1812500000
        else:
            if features['num__Soil_Moisture'] <= 53.3899993896:
                if features['num__Fertilizer_Used'] <= 305.4100036621:
                    if features['num__Rainfall'] <= 2342.6300048828:
                        return 10.4873387097
                    else:
                        return 11.4567567568
                else:
                    if features['num__Rainfall'] <= 2115.1149902344:
                        return 11.4402777778
                    else:
                        return 12.2411111111
            else:
                if features['num__Fertilizer_Used'] <= 233.6550064087:
                    if features['num__Rainfall'] <= 2227.2099609375:
                        return 10.7728571429
                    else:
                        return 12.0650000000
                else:
                    if features['num__N'] <= 111.5000000000:
                        return 12.0597297297
                    else:
                        return 12.9913157895
