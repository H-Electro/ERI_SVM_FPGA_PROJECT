if (LE(Fertilizer_Used, 64'h40693A8F60000000)) begin
    if (LE(Rainfall, 64'h409B0C5C30000000)) begin
        if (LE(Fertilizer_Used, 64'h4061868F50000000)) begin
            if (LE(Rainfall, 64'h408C0B70A0000000)) begin
                if (LE(Soil_Moisture, 64'h4047FA3D70000000)) begin
                    if (LE(K, 64'h4057A00000000000)) begin
                        if (LE(Pesticide_Used, 64'h402235C290000000)) begin
                            yield_f_reg = 64'h401C4AE147AE1479;
                        end else begin
                            yield_f_reg = 64'h4018E425AEE631F8;
                        end
                    end else begin
                        yield_f_reg = 64'h401D1F1D2505838C;
                    end
                end else begin
                    yield_f_reg = 64'h401F01845C8A0CE5;
                end
            end else begin
                if (LE(Wind_Speed, 64'h4018EB8520000000)) begin
                    if (LE(K, 64'h4058A00000000000)) begin
                        yield_f_reg = 64'h401FE85791D4EBDF;
                    end else begin
                        yield_f_reg = 64'h40224253C8253C84;
                    end
                end else begin
                    if (LE(Soil_Moisture, 64'h40433E1470000000)) begin
                        if (LE(Fertilizer_Used, 64'h40546C2900000000)) begin
                            yield_f_reg = 64'h401B4B17E4B17E4B;
                        end else begin
                            yield_f_reg = 64'h401E0DD2F1A9FBE8;
                        end
                    end else begin
                        if (LE(Season, 64'h3FE0000000000000)) begin
                            yield_f_reg = 64'h401E04D9BC17B6B6;
                        end else begin
                            yield_f_reg = 64'h40210A7904A7904B;
                        end
                    end
                end
            end
        end else begin
            if (LE(Soil_Moisture, 64'h404605C290000000)) begin
                if (LE(Soil_pH, 64'h401E666670000000)) begin
                    if (LE(N, 64'h4055400000000000)) begin
                        if (LE(Pesticide_Used, 64'h4029428F50000000)) begin
                            yield_f_reg = 64'h4020BDC8057619F2;
                        end else begin
                            yield_f_reg = 64'h401E33E1F671529B;
                        end
                    end else begin
                        if (LE(Rainfall, 64'h4090F81470000000)) begin
                            if (LE(Soil_pH, 64'h4018E66660000000)) begin
                                yield_f_reg = 64'h40203CCCCCCCCCCD;
                            end else begin
                                yield_f_reg = 64'h4021A27983C131D5;
                            end
                        end else begin
                            yield_f_reg = 64'h402243E54975FB8D;
                        end
                    end
                end else begin
                    yield_f_reg = 64'h401CD70A3D70A3D5;
                end
            end else begin
                if (LE(Sunlight_Hours, 64'h4024028F60000000)) begin
                    if (LE(N, 64'h4056200000000000)) begin
                        yield_f_reg = 64'h40208F1DBEA8B759;
                    end else begin
                        if (LE(Organic_Carbon, 64'h3FEB851EC0000000)) begin
                            yield_f_reg = 64'h4021555555555555;
                        end else begin
                            yield_f_reg = 64'h4023CED916872B03;
                        end
                    end
                end else begin
                    yield_f_reg = 64'h4023FF513CC1E099;
                end
            end
        end
    end else begin
        if (LE(Fertilizer_Used, 64'h4060C570A0000000)) begin
            if (LE(Soil_Moisture, 64'h404468F5C0000000)) begin
                if (LE(Soil_pH, 64'h401CDC28F0000000)) begin
                    if (LE(Wind_Speed, 64'h402028F5C0000000)) begin
                        yield_f_reg = 64'h4022E8DB8BAC710C;
                    end else begin
                        yield_f_reg = 64'h40212A1FA6A1FA6B;
                    end
                end else begin
                    yield_f_reg = 64'h401F363636363637;
                end
            end else begin
                if (LE(Rainfall, 64'h40A1C19EB0000000)) begin
                    if (LE(Region, 64'h3FF8000000000000)) begin
                        yield_f_reg = 64'h4021B21F424A5FF0;
                    end else begin
                        yield_f_reg = 64'h40231D36D06A039D;
                    end
                end else begin
                    yield_f_reg = 64'h40241E26AF37C048;
                end
            end
        end else begin
            if (LE(Sunlight_Hours, 64'h4020F0A3D0000000)) begin
                if (LE(Humidity, 64'h404815C290000000)) begin
                    yield_f_reg = 64'h4024E48E8A71DE69;
                end else begin
                    if (LE(Altitude, 64'h4086F00000000000)) begin
                        yield_f_reg = 64'h4022BEB851EB851F;
                    end else begin
                        if (LE(Rainfall, 64'h40A0D0C520000000)) begin
                            yield_f_reg = 64'h40237A06D3A06D3A;
                        end else begin
                            yield_f_reg = 64'h40245C6489C6489C;
                        end
                    end
                end
            end else begin
                if (LE(Humidity, 64'h40503C28F0000000)) begin
                    yield_f_reg = 64'h402168F5C28F5C29;
                end else begin
                    yield_f_reg = 64'h4023FCD49A166E34;
                end
            end
        end
    end
end else begin
    if (LE(Rainfall, 64'h40984799A0000000)) begin
        if (LE(Soil_Moisture, 64'h4045333340000000)) begin
            if (LE(Fertilizer_Used, 64'h4072AD8520000000)) begin
                if (LE(Soil_Moisture, 64'h403E68F5C0000000)) begin
                    if (LE(Rainfall, 64'h4086020000000000)) begin
                        yield_f_reg = 64'h401EF126E978D4FE;
                    end else begin
                        if (LE(Soil_pH, 64'h401BC28F60000000)) begin
                            if (LE(Soil_pH, 64'h4016E66660000000)) begin
                                yield_f_reg = 64'h402102E147AE147B;
                            end else begin
                                yield_f_reg = 64'h4022A9D9B6180AAF;
                            end
                        end else begin
                            yield_f_reg = 64'h40202EFBC895622F;
                        end
                    end
                end else begin
                    if (LE(Wind_Speed, 64'h402835C290000000)) begin
                        yield_f_reg = 64'h4023A1E5DECEEB2B;
                    end else begin
                        yield_f_reg = 64'h40216EEEEEEEEEEF;
                    end
                end
            end else begin
                if (LE(Soil_pH, 64'h401C75C290000000)) begin
                    if (LE(Temperature, 64'h4038C28F50000000)) begin
                        yield_f_reg = 64'h402492F684BDA12F;
                    end else begin
                        yield_f_reg = 64'h402312A305532618;
                    end
                end else begin
                    yield_f_reg = 64'h402277639B7639B7;
                end
            end
        end else begin
            if (LE(K, 64'h4053200000000000)) begin
                if (LE(Soil_pH, 64'h401723D710000000)) begin
                    yield_f_reg = 64'h4021089F87469A23;
                end else begin
                    if (LE(Rainfall, 64'h408D99C290000000)) begin
                        yield_f_reg = 64'h40226C37DAC37DAC;
                    end else begin
                        yield_f_reg = 64'h4025328F5C28F5C2;
                    end
                end
            end else begin
                if (LE(Fertilizer_Used, 64'h406F382900000000)) begin
                    if (LE(Rainfall, 64'h408CEC3D70000000)) begin
                        yield_f_reg = 64'h4022766666666667;
                    end else begin
                        yield_f_reg = 64'h4023C083126E978D;
                    end
                end else begin
                    if (LE(Organic_Carbon, 64'h3FF051EB80000000)) begin
                        if (LE(P, 64'h404B800000000000)) begin
                            yield_f_reg = 64'h4025705EDAD0089F;
                        end else begin
                            yield_f_reg = 64'h4023B33333333332;
                        end
                    end else begin
                        if (LE(Soil_pH, 64'h401AD1EB80000000)) begin
                            yield_f_reg = 64'h4026FB900AEC33E2;
                        end else begin
                            yield_f_reg = 64'h4025B8EC1F5285BA;
                        end
                    end
                end
            end
        end
    end else begin
        if (LE(Fertilizer_Used, 64'h4071C7EB80000000)) begin
            if (LE(Soil_Moisture, 64'h404611EB80000000)) begin
                if (LE(Wind_Speed, 64'h401675C290000000)) begin
                    if (LE(Wind_Speed, 64'h4007851EC0000000)) begin
                        yield_f_reg = 64'h4024BA06D3A06D3A;
                    end else begin
                        yield_f_reg = 64'h4025FC195B2F4C8E;
                    end
                end else begin
                    if (LE(Rainfall, 64'h409C0B8000000000)) begin
                        yield_f_reg = 64'h4021BC131D5ACB6F;
                    end else begin
                        if (LE(N, 64'h4059800000000000)) begin
                            if (LE(N, 64'h4051E00000000000)) begin
                                yield_f_reg = 64'h402479999999999A;
                            end else begin
                                yield_f_reg = 64'h4022B56D1408E782;
                            end
                        end else begin
                            yield_f_reg = 64'h40250D6AFD873D15;
                        end
                    end
                end
            end else begin
                if (LE(Rainfall, 64'h40A1194000000000)) begin
                    if (LE(Organic_Carbon, 64'h3FF19999A0000000)) begin
                        yield_f_reg = 64'h4025FCC42D458633;
                    end else begin
                        yield_f_reg = 64'h40238C3B2A1907F6;
                    end
                end else begin
                    if (LE(K, 64'h4053E00000000000)) begin
                        yield_f_reg = 64'h4025E3244E3244E1;
                    end else begin
                        yield_f_reg = 64'h402729930BE0DED2;
                    end
                end
            end
        end else begin
            if (LE(N, 64'h4061500000000000)) begin
                if (LE(Rainfall, 64'h40A3DFB850000000)) begin
                    if (LE(P, 64'h4040400000000000)) begin
                        yield_f_reg = 64'h40241907F6E5D4C4;
                    end else begin
                        if (LE(Region, 64'h400C000000000000)) begin
                            if (LE(Organic_Carbon, 64'h3FE2B851F0000000)) begin
                                yield_f_reg = 64'h40253D2BA79CD56D;
                            end else begin
                                if (LE(Soil_Moisture, 64'h40425E1470000000)) begin
                                    yield_f_reg = 64'h4025B4FDF3B645A2;
                                end else begin
                                    yield_f_reg = 64'h40278AA243BDD577;
                                end
                            end
                        end else begin
                            yield_f_reg = 64'h4024BBA2086ED53B;
                        end
                    end
                end else begin
                    yield_f_reg = 64'h4027766D8602ABDA;
                end
            end else begin
                if (LE(Soil_Moisture, 64'h404620A3E0000000)) begin
                    yield_f_reg = 64'h4026C118DE5AB278;
                end else begin
                    yield_f_reg = 64'h40289EB851EB851F;
                end
            end
        end
    end
end
