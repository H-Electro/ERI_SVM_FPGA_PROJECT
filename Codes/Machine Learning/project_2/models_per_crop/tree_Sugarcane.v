if (LE(Fertilizer_Used, 64'h406D5D70A0000000)) begin
    if (LE(Rainfall, 64'h4094F7AE10000000)) begin
        if (LE(Soil_Moisture, 64'h4043570A30000000)) begin
            if (LE(K, 64'h404CC00000000000)) begin
                if (LE(N, 64'h4060E00000000000)) begin
                    if (LE(Wind_Speed, 64'h402E2E1470000000)) begin
                        if (LE(K, 64'h404B800000000000)) begin
                            if (LE(Wind_Speed, 64'h4009D70A40000000)) begin
                                if (LE(Rainfall, 64'h4093F45710000000)) begin
                                    yield_f_reg = 64'h4052488888888888;
                                end else begin
                                    yield_f_reg = 64'h4052351EB851EB85;
                                end
                            end else begin
                                if (LE(Temperature, 64'h403C3999A0000000)) begin
                                    yield_f_reg = 64'h40520211544877BA;
                                end else begin
                                    yield_f_reg = 64'h4051B17E4B17E4B1;
                                end
                            end
                        end else begin
                            if (LE(Soil_Moisture, 64'h4033970A40000000)) begin
                                yield_f_reg = 64'h4052700000000000;
                            end else begin
                                yield_f_reg = 64'h40527B851EB851EC;
                            end
                        end
                    end else begin
                        if (LE(N, 64'h4048800000000000)) begin
                            if (LE(Soil_pH, 64'h401FFAE140000000)) begin
                                if (LE(Irrigation_Type, 64'h3FF0000000000000)) begin
                                    yield_f_reg = 64'h4051B1EB851EB852;
                                end else begin
                                    yield_f_reg = 64'h4051C28F5C28F5C3;
                                end
                            end else begin
                                if (LE(Rainfall, 64'h40758A8F50000000)) begin
                                    yield_f_reg = 64'h40518F5C28F5C28F;
                                end else begin
                                    yield_f_reg = 64'h40519B851EB851EC;
                                end
                            end
                        end else begin
                            if (LE(Humidity, 64'h40510A8F50000000)) begin
                                if (LE(Sunlight_Hours, 64'h401D5C2900000000)) begin
                                    yield_f_reg = 64'h4052170A3D70A3D7;
                                end else begin
                                    yield_f_reg = 64'h405215C28F5C28F6;
                                end
                            end else begin
                                if (LE(Rainfall, 64'h408C3A99A0000000)) begin
                                    yield_f_reg = 64'h4051C51EB851EB85;
                                end else begin
                                    yield_f_reg = 64'h4051F47AE147AE14;
                                end
                            end
                        end
                    end
                end else begin
                    if (LE(Season, 64'h3FE0000000000000)) begin
                        if (LE(Sunlight_Hours, 64'h401728F5C0000000)) begin
                            yield_f_reg = 64'h4052166666666666;
                        end else begin
                            yield_f_reg = 64'h4051B851EB851EB8;
                        end
                    end else begin
                        if (LE(Temperature, 64'h40390B8520000000)) begin
                            if (LE(Humidity, 64'h40562FAE10000000)) begin
                                if (LE(Soil_Type, 64'h4004000000000000)) begin
                                    yield_f_reg = 64'h40522B645A1CAC08;
                                end else begin
                                    yield_f_reg = 64'h405251EB851EB852;
                                end
                            end else begin
                                yield_f_reg = 64'h40528851EB851EB8;
                            end
                        end else begin
                            if (LE(Wind_Speed, 64'h4027947AE0000000)) begin
                                if (LE(Temperature, 64'h403FB1EB90000000)) begin
                                    yield_f_reg = 64'h405274CCCCCCCCCC;
                                end else begin
                                    yield_f_reg = 64'h40526F5C28F5C28F;
                                end
                            end else begin
                                yield_f_reg = 64'h4052A5C28F5C28F6;
                            end
                        end
                    end
                end
            end else begin
                if (LE(Soil_pH, 64'h401447AE10000000)) begin
                    if (LE(Irrigation_Type, 64'h3FE0000000000000)) begin
                        if (LE(Humidity, 64'h40516E6668000000)) begin
                            if (LE(Wind_Speed, 64'h401AE147B0000000)) begin
                                yield_f_reg = 64'h4051B28F5C28F5C3;
                            end else begin
                                yield_f_reg = 64'h4051A8F5C28F5C29;
                            end
                        end else begin
                            yield_f_reg = 64'h405187AE147AE148;
                        end
                    end else begin
                        if (LE(Organic_Carbon, 64'h3FF23D70A0000000)) begin
                            if (LE(N, 64'h4054C00000000000)) begin
                                if (LE(Humidity, 64'h40509570A0000000)) begin
                                    yield_f_reg = 64'h40524147AE147AE1;
                                end else begin
                                    yield_f_reg = 64'h40523E147AE147AE;
                                end
                            end else begin
                                if (LE(Humidity, 64'h4051F2E148000000)) begin
                                    yield_f_reg = 64'h4052670A3D70A3D7;
                                end else begin
                                    yield_f_reg = 64'h4052828F5C28F5C3;
                                end
                            end
                        end else begin
                            if (LE(Region, 64'h3FF0000000000000)) begin
                                yield_f_reg = 64'h4051EE147AE147AE;
                            end else begin
                                yield_f_reg = 64'h405209999999999A;
                            end
                        end
                    end
                end else begin
                    if (LE(Rainfall, 64'h4089DAB860000000)) begin
                        if (LE(Soil_pH, 64'h401E23D710000000)) begin
                            if (LE(Region, 64'h3FF8000000000000)) begin
                                if (LE(Soil_pH, 64'h4016D70A40000000)) begin
                                    yield_f_reg = 64'h4051B1EB851EB852;
                                end else begin
                                    yield_f_reg = 64'h405239B7639B7639;
                                end
                            end else begin
                                if (LE(Pesticide_Used, 64'h40163D70A0000000)) begin
                                    yield_f_reg = 64'h40522B5C28F5C290;
                                end else begin
                                    yield_f_reg = 64'h4052788888888889;
                                end
                            end
                        end else begin
                            if (LE(Altitude, 64'h4092540000000000)) begin
                                if (LE(Fertilizer_Used, 64'h405A9EB850000000)) begin
                                    yield_f_reg = 64'h4051C1999999999A;
                                end else begin
                                    yield_f_reg = 64'h4051CEB851EB851E;
                                end
                            end else begin
                                if (LE(Rainfall, 64'h40775F99A0000000)) begin
                                    yield_f_reg = 64'h405213D70A3D70A4;
                                end else begin
                                    yield_f_reg = 64'h40523AE147AE147B;
                                end
                            end
                        end
                    end else begin
                        if (LE(Humidity, 64'h404D870A40000000)) begin
                            if (LE(Fertilizer_Used, 64'h406720CCC0000000)) begin
                                if (LE(Altitude, 64'h406E700000000000)) begin
                                    yield_f_reg = 64'h40529A8F5C28F5C2;
                                end else begin
                                    yield_f_reg = 64'h4052334679ACE013;
                                end
                            end else begin
                                if (LE(Humidity, 64'h4042A99990000000)) begin
                                    yield_f_reg = 64'h40525B5C28F5C290;
                                end else begin
                                    yield_f_reg = 64'h4052A30463796ACA;
                                end
                            end
                        end else begin
                            if (LE(Fertilizer_Used, 64'h4056D51EB0000000)) begin
                                if (LE(Soil_pH, 64'h401C3851F0000000)) begin
                                    yield_f_reg = 64'h4052800000000000;
                                end else begin
                                    yield_f_reg = 64'h405221B4E81B4E81;
                                end
                            end else begin
                                if (LE(P, 64'h4052800000000000)) begin
                                    yield_f_reg = 64'h405297B851EB851E;
                                end else begin
                                    yield_f_reg = 64'h4052B63D70A3D70A;
                                end
                            end
                        end
                    end
                end
            end
        end else begin
            if (LE(Fertilizer_Used, 64'h405DF1EB90000000)) begin
                if (LE(Wind_Speed, 64'h4027EB8520000000)) begin
                    if (LE(Soil_pH, 64'h401D0F5C20000000)) begin
                        if (LE(N, 64'h4044000000000000)) begin
                            if (LE(Rainfall, 64'h407C0F8520000000)) begin
                                yield_f_reg = 64'h4051DA3D70A3D70A;
                            end else begin
                                if (LE(Region, 64'h4004000000000000)) begin
                                    yield_f_reg = 64'h40522E147AE147AD;
                                end else begin
                                    yield_f_reg = 64'h405259999999999A;
                                end
                            end
                        end else begin
                            if (LE(Irrigation_Type, 64'h3FF8000000000000)) begin
                                if (LE(Pesticide_Used, 64'h40277D70A0000000)) begin
                                    yield_f_reg = 64'h4052A74BC6A7EF9D;
                                end else begin
                                    yield_f_reg = 64'h405254E147AE147B;
                                end
                            end else begin
                                if (LE(Soil_Type, 64'h3FE0000000000000)) begin
                                    yield_f_reg = 64'h405299EB851EB852;
                                end else begin
                                    yield_f_reg = 64'h4052BB3333333333;
                                end
                            end
                        end
                    end else begin
                        if (LE(Altitude, 64'h4090520000000000)) begin
                            if (LE(Wind_Speed, 64'h4002AE1470000000)) begin
                                yield_f_reg = 64'h40521A3D70A3D70A;
                            end else begin
                                if (LE(K, 64'h404DC00000000000)) begin
                                    yield_f_reg = 64'h4051C8F5C28F5C29;
                                end else begin
                                    yield_f_reg = 64'h4051EEB851EB851F;
                                end
                            end
                        end else begin
                            if (LE(P, 64'h4039000000000000)) begin
                                yield_f_reg = 64'h40525E147AE147AE;
                            end else begin
                                if (LE(Soil_pH, 64'h401E333330000000)) begin
                                    yield_f_reg = 64'h405227AE147AE148;
                                end else begin
                                    yield_f_reg = 64'h40523CCCCCCCCCCD;
                                end
                            end
                        end
                    end
                end else begin
                    if (LE(Fertilizer_Used, 64'h405537AE10000000)) begin
                        if (LE(Region, 64'h3FE0000000000000)) begin
                            yield_f_reg = 64'h4051B33333333333;
                        end else begin
                            if (LE(K, 64'h4053600000000000)) begin
                                yield_f_reg = 64'h4051EE147AE147AE;
                            end else begin
                                if (LE(Fertilizer_Used, 64'h4053566660000000)) begin
                                    yield_f_reg = 64'h40521C28F5C28F5C;
                                end else begin
                                    yield_f_reg = 64'h40520F92C5F92C60;
                                end
                            end
                        end
                    end else begin
                        if (LE(Temperature, 64'h4040FAE150000000)) begin
                            if (LE(Pesticide_Used, 64'h402E666660000000)) begin
                                if (LE(Fertilizer_Used, 64'h4059D5C290000000)) begin
                                    yield_f_reg = 64'h40521E4B17E4B17F;
                                end else begin
                                    yield_f_reg = 64'h4052422222222223;
                                end
                            end else begin
                                if (LE(Soil_Moisture, 64'h40454EB850000000)) begin
                                    yield_f_reg = 64'h40521147AE147AE1;
                                end else begin
                                    yield_f_reg = 64'h4051FBD70A3D70A4;
                                end
                            end
                        end else begin
                            if (LE(P, 64'h4055800000000000)) begin
                                if (LE(K, 64'h405DE00000000000)) begin
                                    yield_f_reg = 64'h40526BD70A3D70A4;
                                end else begin
                                    yield_f_reg = 64'h4052433333333333;
                                end
                            end else begin
                                yield_f_reg = 64'h4052B28F5C28F5C3;
                            end
                        end
                    end
                end
            end else begin
                if (LE(Rainfall, 64'h407C948F50000000)) begin
                    if (LE(K, 64'h4057800000000000)) begin
                        if (LE(Soil_Type, 64'h3FE0000000000000)) begin
                            if (LE(Altitude, 64'h4081500000000000)) begin
                                yield_f_reg = 64'h4052447AE147AE14;
                            end else begin
                                yield_f_reg = 64'h405270A3D70A3D71;
                            end
                        end else begin
                            if (LE(K, 64'h404C400000000000)) begin
                                if (LE(Soil_pH, 64'h401A8A3D70000000)) begin
                                    yield_f_reg = 64'h405205C28F5C28F6;
                                end else begin
                                    yield_f_reg = 64'h4051EC28F5C28F5C;
                                end
                            end else begin
                                if (LE(K, 64'h4052800000000000)) begin
                                    yield_f_reg = 64'h40522EB851EB851F;
                                end else begin
                                    yield_f_reg = 64'h405213D70A3D70A4;
                                end
                            end
                        end
                    end else begin
                        if (LE(K, 64'h4062400000000000)) begin
                            if (LE(Soil_pH, 64'h401575C290000000)) begin
                                yield_f_reg = 64'h40528E147AE147AE;
                            end else begin
                                if (LE(N, 64'h405E200000000000)) begin
                                    yield_f_reg = 64'h4052B00000000000;
                                end else begin
                                    yield_f_reg = 64'h4052B28F5C28F5C3;
                                end
                            end
                        end else begin
                            if (LE(Region, 64'h3FF8000000000000)) begin
                                yield_f_reg = 64'h40522B851EB851EC;
                            end else begin
                                yield_f_reg = 64'h40525851EB851EB8;
                            end
                        end
                    end
                end else begin
                    if (LE(Irrigation_Type, 64'h4004000000000000)) begin
                        if (LE(Soil_pH, 64'h401D1EB850000000)) begin
                            if (LE(N, 64'h4057E00000000000)) begin
                                if (LE(Organic_Carbon, 64'h3FE1EB8520000000)) begin
                                    yield_f_reg = 64'h4052C00000000000;
                                end else begin
                                    yield_f_reg = 64'h40526AA2DD610944;
                                end
                            end else begin
                                if (LE(Wind_Speed, 64'h4013800000000000)) begin
                                    yield_f_reg = 64'h4052E3BFA2608C6F;
                                end else begin
                                    yield_f_reg = 64'h4052A480F2B9D649;
                                end
                            end
                        end else begin
                            if (LE(Soil_Type, 64'h4004000000000000)) begin
                                if (LE(Sunlight_Hours, 64'h4022B851F0000000)) begin
                                    yield_f_reg = 64'h405217258BF258BF;
                                end else begin
                                    yield_f_reg = 64'h4052A28F5C28F5C3;
                                end
                            end else begin
                                if (LE(Pesticide_Used, 64'h4032C8F5C0000000)) begin
                                    yield_f_reg = 64'h40526369D0369D03;
                                end else begin
                                    yield_f_reg = 64'h4052ADC28F5C28F6;
                                end
                            end
                        end
                    end else begin
                        if (LE(N, 64'h4051E00000000000)) begin
                            if (LE(Altitude, 64'h4093420000000000)) begin
                                if (LE(Temperature, 64'h403D9851F0000000)) begin
                                    yield_f_reg = 64'h4052881B4E81B4E8;
                                end else begin
                                    yield_f_reg = 64'h4052E147AE147AE1;
                                end
                            end else begin
                                if (LE(K, 64'h4045C00000000000)) begin
                                    yield_f_reg = 64'h4052228F5C28F5C3;
                                end else begin
                                    yield_f_reg = 64'h405249999999999A;
                                end
                            end
                        end else begin
                            if (LE(Soil_pH, 64'h4014AE1470000000)) begin
                                if (LE(N, 64'h4062B00000000000)) begin
                                    yield_f_reg = 64'h40524C28F5C28F5C;
                                end else begin
                                    yield_f_reg = 64'h40524CCCCCCCCCCD;
                                end
                            end else begin
                                if (LE(Organic_Carbon, 64'h3FF6B851E0000000)) begin
                                    yield_f_reg = 64'h405309A485CD7B90;
                                end else begin
                                    yield_f_reg = 64'h40529C7AE147AE14;
                                end
                            end
                        end
                    end
                end
            end
        end
    end else begin
        if (LE(Rainfall, 64'h40A226D1F0000000)) begin
            if (LE(Fertilizer_Used, 64'h406055EB90000000)) begin
                if (LE(Soil_pH, 64'h4015E66660000000)) begin
                    if (LE(Wind_Speed, 64'h402A4A3D70000000)) begin
                        if (LE(N, 64'h4053200000000000)) begin
                            if (LE(Sunlight_Hours, 64'h4021D1EB88000000)) begin
                                if (LE(Fertilizer_Used, 64'h405E0428F0000000)) begin
                                    yield_f_reg = 64'h405253851EB851EB;
                                end else begin
                                    yield_f_reg = 64'h405247AE147AE148;
                                end
                            end else begin
                                if (LE(Temperature, 64'h40375AE138000000)) begin
                                    yield_f_reg = 64'h4052151EB851EB85;
                                end else begin
                                    yield_f_reg = 64'h4052170A3D70A3D7;
                                end
                            end
                        end else begin
                            if (LE(Organic_Carbon, 64'h3FE3851EB0000000)) begin
                                if (LE(Soil_Type, 64'h3FF8000000000000)) begin
                                    yield_f_reg = 64'h40527A3D70A3D70A;
                                end else begin
                                    yield_f_reg = 64'h405271EB851EB852;
                                end
                            end else begin
                                if (LE(Soil_Moisture, 64'h404E60A3E0000000)) begin
                                    yield_f_reg = 64'h40528B5C28F5C28F;
                                end else begin
                                    yield_f_reg = 64'h40529F5C28F5C290;
                                end
                            end
                        end
                    end else begin
                        if (LE(Soil_pH, 64'h4015800000000000)) begin
                            if (LE(Sunlight_Hours, 64'h4023BD70A0000000)) begin
                                if (LE(Humidity, 64'h4043E851E8000000)) begin
                                    yield_f_reg = 64'h40520B851EB851EC;
                                end else begin
                                    yield_f_reg = 64'h40522C28F5C28F5C;
                                end
                            end else begin
                                yield_f_reg = 64'h405260A3D70A3D71;
                            end
                        end else begin
                            yield_f_reg = 64'h4051C51EB851EB85;
                        end
                    end
                end else begin
                    if (LE(Soil_pH, 64'h40202147B0000000)) begin
                        if (LE(Soil_Moisture, 64'h4042528F50000000)) begin
                            if (LE(N, 64'h4058A00000000000)) begin
                                if (LE(Pesticide_Used, 64'h402DC51EB0000000)) begin
                                    yield_f_reg = 64'h405266978D4FDF3A;
                                end else begin
                                    yield_f_reg = 64'h40520147AE147AE1;
                                end
                            end else begin
                                if (LE(Soil_pH, 64'h4019428F60000000)) begin
                                    yield_f_reg = 64'h4052C1B4E81B4E81;
                                end else begin
                                    yield_f_reg = 64'h40527F3333333332;
                                end
                            end
                        end else begin
                            if (LE(Soil_pH, 64'h40160F5C30000000)) begin
                                yield_f_reg = 64'h40532F5C28F5C28F;
                            end else begin
                                if (LE(Fertilizer_Used, 64'h405FD33330000000)) begin
                                    yield_f_reg = 64'h4052A56ED1CE6495;
                                end else begin
                                    yield_f_reg = 64'h40526C8B43958106;
                                end
                            end
                        end
                    end else begin
                        if (LE(Soil_Moisture, 64'h40493F5C30000000)) begin
                            if (LE(N, 64'h4055600000000000)) begin
                                if (LE(Season, 64'h3FF8000000000000)) begin
                                    yield_f_reg = 64'h40522CCCCCCCCCCD;
                                end else begin
                                    yield_f_reg = 64'h40522C28F5C28F5C;
                                end
                            end else begin
                                yield_f_reg = 64'h4051DCCCCCCCCCCD;
                            end
                        end else begin
                            if (LE(Soil_Moisture, 64'h404EEB8520000000)) begin
                                if (LE(K, 64'h4050A00000000000)) begin
                                    yield_f_reg = 64'h405260A3D70A3D71;
                                end else begin
                                    yield_f_reg = 64'h405243D70A3D70A4;
                                end
                            end else begin
                                yield_f_reg = 64'h4052933333333333;
                            end
                        end
                    end
                end
            end else begin
                if (LE(Wind_Speed, 64'h402AA147B0000000)) begin
                    if (LE(Soil_Moisture, 64'h404135C290000000)) begin
                        if (LE(P, 64'h4051C00000000000)) begin
                            if (LE(Altitude, 64'h4068B00000000000)) begin
                                if (LE(Temperature, 64'h402C47AE20000000)) begin
                                    yield_f_reg = 64'h405211EB851EB852;
                                end else begin
                                    yield_f_reg = 64'h40524E147AE147AE;
                                end
                            end else begin
                                if (LE(Region, 64'h3FE0000000000000)) begin
                                    yield_f_reg = 64'h40526428F5C28F5C;
                                end else begin
                                    yield_f_reg = 64'h40529A9FBE76C8B2;
                                end
                            end
                        end else begin
                            if (LE(Humidity, 64'h404AF66670000000)) begin
                                if (LE(Temperature, 64'h4041647AE0000000)) begin
                                    yield_f_reg = 64'h4052A47AE147AE14;
                                end else begin
                                    yield_f_reg = 64'h40522A3D70A3D70A;
                                end
                            end else begin
                                if (LE(Season, 64'h3FE0000000000000)) begin
                                    yield_f_reg = 64'h4052D62FC962FC95;
                                end else begin
                                    yield_f_reg = 64'h40531126E978D4FE;
                                end
                            end
                        end
                    end else begin
                        if (LE(K, 64'h405F200000000000)) begin
                            if (LE(Humidity, 64'h405471EB90000000)) begin
                                if (LE(Fertilizer_Used, 64'h40610A6660000000)) begin
                                    yield_f_reg = 64'h40524DDDDDDDDDDE;
                                end else begin
                                    yield_f_reg = 64'h4052C1A10C1A10C2;
                                end
                            end else begin
                                if (LE(Soil_Type, 64'h4004000000000000)) begin
                                    yield_f_reg = 64'h40531A3D70A3D70B;
                                end else begin
                                    yield_f_reg = 64'h4052C147AE147AE2;
                                end
                            end
                        end else begin
                            if (LE(Fertilizer_Used, 64'h4069987AE0000000)) begin
                                if (LE(Sunlight_Hours, 64'h4019F0A3E0000000)) begin
                                    yield_f_reg = 64'h4052BD70A3D70A3D;
                                end else begin
                                    yield_f_reg = 64'h4052F4D880BB3EE7;
                                end
                            end else begin
                                if (LE(Sunlight_Hours, 64'h401BBD70A0000000)) begin
                                    yield_f_reg = 64'h40535947AE147AE1;
                                end else begin
                                    yield_f_reg = 64'h405332E147AE147B;
                                end
                            end
                        end
                    end
                end else begin
                    if (LE(Sunlight_Hours, 64'h4018000000000000)) begin
                        if (LE(Temperature, 64'h403EECCCD0000000)) begin
                            if (LE(Wind_Speed, 64'h402FE66670000000)) begin
                                if (LE(N, 64'h4057200000000000)) begin
                                    yield_f_reg = 64'h40523A06D3A06D39;
                                end else begin
                                    yield_f_reg = 64'h4052688888888888;
                                end
                            end else begin
                                if (LE(Fertilizer_Used, 64'h4062866670000000)) begin
                                    yield_f_reg = 64'h40529CCCCCCCCCCD;
                                end else begin
                                    yield_f_reg = 64'h40528147AE147AE2;
                                end
                            end
                        end else begin
                            if (LE(Humidity, 64'h404A247AE0000000)) begin
                                yield_f_reg = 64'h4051BD70A3D70A3D;
                            end else begin
                                yield_f_reg = 64'h405240A3D70A3D71;
                            end
                        end
                    end else begin
                        if (LE(P, 64'h4036800000000000)) begin
                            if (LE(K, 64'h405A200000000000)) begin
                                if (LE(Organic_Carbon, 64'h3FE6666658000000)) begin
                                    yield_f_reg = 64'h4052CD70A3D70A3D;
                                end else begin
                                    yield_f_reg = 64'h4052ECCCCCCCCCCD;
                                end
                            end else begin
                                if (LE(Humidity, 64'h4044CE1480000000)) begin
                                    yield_f_reg = 64'h405323D70A3D70A4;
                                end else begin
                                    yield_f_reg = 64'h4053300000000000;
                                end
                            end
                        end else begin
                            if (LE(Organic_Carbon, 64'h3FF27AE140000000)) begin
                                if (LE(Fertilizer_Used, 64'h406128CCC0000000)) begin
                                    yield_f_reg = 64'h4053066666666666;
                                end else begin
                                    yield_f_reg = 64'h40527F0656CBD324;
                                end
                            end else begin
                                if (LE(Soil_pH, 64'h4019570A40000000)) begin
                                    yield_f_reg = 64'h4052E36202ECFB9B;
                                end else begin
                                    yield_f_reg = 64'h40529147AE147AE1;
                                end
                            end
                        end
                    end
                end
            end
        end else begin
            if (LE(Soil_pH, 64'h401CD70A40000000)) begin
                if (LE(K, 64'h405CE00000000000)) begin
                    if (LE(Fertilizer_Used, 64'h405E1BD710000000)) begin
                        if (LE(N, 64'h404D800000000000)) begin
                            yield_f_reg = 64'h4051E147AE147AE1;
                        end else begin
                            if (LE(P, 64'h404A000000000000)) begin
                                if (LE(K, 64'h4059C00000000000)) begin
                                    yield_f_reg = 64'h405284E81B4E81B5;
                                end else begin
                                    yield_f_reg = 64'h4052EE147AE147AE;
                                end
                            end else begin
                                if (LE(Soil_Type, 64'h3FE0000000000000)) begin
                                    yield_f_reg = 64'h40527DC28F5C28F6;
                                end else begin
                                    yield_f_reg = 64'h4052E9DB22D0E561;
                                end
                            end
                        end
                    end else begin
                        if (LE(Region, 64'h3FE0000000000000)) begin
                            if (LE(N, 64'h405A600000000000)) begin
                                if (LE(Irrigation_Type, 64'h4004000000000000)) begin
                                    yield_f_reg = 64'h40527E147AE147AE;
                                end else begin
                                    yield_f_reg = 64'h40522D70A3D70A3E;
                                end
                            end else begin
                                if (LE(Rainfall, 64'h40A3281480000000)) begin
                                    yield_f_reg = 64'h4052A1EB851EB852;
                                end else begin
                                    yield_f_reg = 64'h4053011111111111;
                                end
                            end
                        end else begin
                            if (LE(Soil_Moisture, 64'h4045F1EB80000000)) begin
                                if (LE(Organic_Carbon, 64'h3FF6F5C290000000)) begin
                                    yield_f_reg = 64'h4052D277F44C118D;
                                end else begin
                                    yield_f_reg = 64'h40530B851EB851EC;
                                end
                            end else begin
                                if (LE(Sunlight_Hours, 64'h40222B8520000000)) begin
                                    yield_f_reg = 64'h4052F950C83FB72F;
                                end else begin
                                    yield_f_reg = 64'h4053421A54D880BB;
                                end
                            end
                        end
                    end
                end else begin
                    if (LE(Wind_Speed, 64'h4028B33330000000)) begin
                        if (LE(Organic_Carbon, 64'h3FDB851EC0000000)) begin
                            if (LE(Rainfall, 64'h40A53F4290000000)) begin
                                yield_f_reg = 64'h405393D70A3D70A4;
                            end else begin
                                yield_f_reg = 64'h4053B3D70A3D70A4;
                            end
                        end else begin
                            if (LE(Fertilizer_Used, 64'h40691AE140000000)) begin
                                if (LE(Temperature, 64'h403D051EC0000000)) begin
                                    yield_f_reg = 64'h40531E5AB277F44B;
                                end else begin
                                    yield_f_reg = 64'h4052D5C28F5C28F6;
                                end
                            end else begin
                                if (LE(Pesticide_Used, 64'h4031828F60000000)) begin
                                    yield_f_reg = 64'h4053468F5C28F5C3;
                                end else begin
                                    yield_f_reg = 64'h40536D3A06D3A06D;
                                end
                            end
                        end
                    end else begin
                        if (LE(Soil_Moisture, 64'h4035000000000000)) begin
                            yield_f_reg = 64'h40529D70A3D70A3D;
                        end else begin
                            if (LE(Sunlight_Hours, 64'h4025C51EC0000000)) begin
                                if (LE(N, 64'h4054E00000000000)) begin
                                    yield_f_reg = 64'h4052DEE147AE147B;
                                end else begin
                                    yield_f_reg = 64'h4052D00000000000;
                                end
                            end else begin
                                yield_f_reg = 64'h40531147AE147AE1;
                            end
                        end
                    end
                end
            end else begin
                if (LE(K, 64'h404FC00000000000)) begin
                    if (LE(Soil_Moisture, 64'h40468D70A0000000)) begin
                        if (LE(Fertilizer_Used, 64'h40637D1EC0000000)) begin
                            if (LE(Altitude, 64'h409B040000000000)) begin
                                if (LE(Organic_Carbon, 64'h3FEB851EB0000000)) begin
                                    yield_f_reg = 64'h4051E51EB851EB85;
                                end else begin
                                    yield_f_reg = 64'h4052223D70A3D70A;
                                end
                            end else begin
                                if (LE(Temperature, 64'h4037999998000000)) begin
                                    yield_f_reg = 64'h40524C28F5C28F5C;
                                end else begin
                                    yield_f_reg = 64'h40525B3333333333;
                                end
                            end
                        end else begin
                            if (LE(Soil_pH, 64'h4020599990000000)) begin
                                if (LE(Soil_Moisture, 64'h4042600000000000)) begin
                                    yield_f_reg = 64'h40527F5C28F5C28F;
                                end else begin
                                    yield_f_reg = 64'h40529B17E4B17E4B;
                                end
                            end else begin
                                yield_f_reg = 64'h40524AE147AE147B;
                            end
                        end
                    end else begin
                        if (LE(Wind_Speed, 64'h4028666660000000)) begin
                            if (LE(Soil_Type, 64'h3FE0000000000000)) begin
                                yield_f_reg = 64'h405330A3D70A3D71;
                            end else begin
                                if (LE(Organic_Carbon, 64'h3FEC51EB80000000)) begin
                                    yield_f_reg = 64'h405303D70A3D70A4;
                                end else begin
                                    yield_f_reg = 64'h4052E9999999999A;
                                end
                            end
                        end else begin
                            yield_f_reg = 64'h40527F5C28F5C28F;
                        end
                    end
                end else begin
                    if (LE(Organic_Carbon, 64'h3FDB851EB0000000)) begin
                        if (LE(Rainfall, 64'h40A416F0A0000000)) begin
                            if (LE(Organic_Carbon, 64'h3FD8F5C290000000)) begin
                                yield_f_reg = 64'h40530C28F5C28F5C;
                            end else begin
                                yield_f_reg = 64'h4052F3D70A3D70A4;
                            end
                        end else begin
                            yield_f_reg = 64'h40534AE147AE147B;
                        end
                    end else begin
                        if (LE(Fertilizer_Used, 64'h40632051F0000000)) begin
                            if (LE(N, 64'h4062D00000000000)) begin
                                if (LE(Rainfall, 64'h40A4A3CF60000000)) begin
                                    yield_f_reg = 64'h4052895E0595E059;
                                end else begin
                                    yield_f_reg = 64'h4052B8F5C28F5C29;
                                end
                            end else begin
                                if (LE(Organic_Carbon, 64'h3FE4000000000000)) begin
                                    yield_f_reg = 64'h405290A3D70A3D70;
                                end else begin
                                    yield_f_reg = 64'h4052EAE147AE147B;
                                end
                            end
                        end else begin
                            if (LE(Wind_Speed, 64'h401C3D70A0000000)) begin
                                if (LE(Sunlight_Hours, 64'h40206B8528000000)) begin
                                    yield_f_reg = 64'h40528F5C28F5C28F;
                                end else begin
                                    yield_f_reg = 64'h405279999999999A;
                                end
                            end else begin
                                if (LE(Humidity, 64'h404DCAE150000000)) begin
                                    yield_f_reg = 64'h4052E3A06D3A06D4;
                                end else begin
                                    yield_f_reg = 64'h40530E3D70A3D70A;
                                end
                            end
                        end
                    end
                end
            end
        end
    end
end else begin
    if (LE(Rainfall, 64'h409932EB90000000)) begin
        if (LE(Soil_Moisture, 64'h4041B5C290000000)) begin
            if (LE(Soil_pH, 64'h4015BD70A0000000)) begin
                if (LE(Humidity, 64'h4041928F50000000)) begin
                    if (LE(Sunlight_Hours, 64'h401DB851E0000000)) begin
                        yield_f_reg = 64'h40520B851EB851EC;
                    end else begin
                        yield_f_reg = 64'h4052151EB851EB85;
                    end
                end else begin
                    if (LE(Sunlight_Hours, 64'h4024A8F5C0000000)) begin
                        if (LE(Rainfall, 64'h4097C9E660000000)) begin
                            if (LE(Soil_Moisture, 64'h4030CE1480000000)) begin
                                if (LE(Soil_pH, 64'h40144CCCD0000000)) begin
                                    yield_f_reg = 64'h405270F5C28F5C29;
                                end else begin
                                    yield_f_reg = 64'h405245C28F5C28F7;
                                end
                            end else begin
                                if (LE(K, 64'h4049800000000000)) begin
                                    yield_f_reg = 64'h4052566666666667;
                                end else begin
                                    yield_f_reg = 64'h40528A81B4E81B4F;
                                end
                            end
                        end else begin
                            yield_f_reg = 64'h4052D47AE147AE14;
                        end
                    end else begin
                        if (LE(Humidity, 64'h404D5F5C30000000)) begin
                            yield_f_reg = 64'h40522B851EB851EC;
                        end else begin
                            if (LE(Organic_Carbon, 64'h3FED1EB850000000)) begin
                                yield_f_reg = 64'h405249999999999A;
                            end else begin
                                yield_f_reg = 64'h40523B851EB851EC;
                            end
                        end
                    end
                end
            end else begin
                if (LE(Rainfall, 64'h40915F8A40000000)) begin
                    if (LE(Soil_pH, 64'h401D0F5C30000000)) begin
                        if (LE(Humidity, 64'h4052FD70A0000000)) begin
                            if (LE(Pesticide_Used, 64'h4035733340000000)) begin
                                if (LE(Pesticide_Used, 64'h402D7851E0000000)) begin
                                    yield_f_reg = 64'h4052C5851EB851EC;
                                end else begin
                                    yield_f_reg = 64'h4052841D41D41D42;
                                end
                            end else begin
                                if (LE(Rainfall, 64'h40868FF5C8000000)) begin
                                    yield_f_reg = 64'h40533E147AE147AE;
                                end else begin
                                    yield_f_reg = 64'h40532C28F5C28F5C;
                                end
                            end
                        end else begin
                            if (LE(Pesticide_Used, 64'h4030866668000000)) begin
                                if (LE(Fertilizer_Used, 64'h40744147B0000000)) begin
                                    yield_f_reg = 64'h40526A83A83A83A8;
                                end else begin
                                    yield_f_reg = 64'h4052400000000000;
                                end
                            end else begin
                                if (LE(Pesticide_Used, 64'h4034BD70B0000000)) begin
                                    yield_f_reg = 64'h40528D47AE147AE2;
                                end else begin
                                    yield_f_reg = 64'h4052C2E147AE147B;
                                end
                            end
                        end
                    end else begin
                        if (LE(Rainfall, 64'h4083BE0A40000000)) begin
                            if (LE(N, 64'h4043800000000000)) begin
                                yield_f_reg = 64'h4051F3D70A3D70A4;
                            end else begin
                                if (LE(Sunlight_Hours, 64'h402063D710000000)) begin
                                    yield_f_reg = 64'h40523F0A3D70A3D7;
                                end else begin
                                    yield_f_reg = 64'h40525947AE147AE1;
                                end
                            end
                        end else begin
                            if (LE(Temperature, 64'h402963D710000000)) begin
                                yield_f_reg = 64'h4051F33333333333;
                            end else begin
                                if (LE(P, 64'h404A000000000000)) begin
                                    yield_f_reg = 64'h4052C624DD2F1A9F;
                                end else begin
                                    yield_f_reg = 64'h405280F5C28F5C28;
                                end
                            end
                        end
                    end
                end else begin
                    if (LE(N, 64'h4051C00000000000)) begin
                        if (LE(Temperature, 64'h4034B1EB80000000)) begin
                            if (LE(Soil_pH, 64'h401675C290000000)) begin
                                yield_f_reg = 64'h4052C1EB851EB852;
                            end else begin
                                if (LE(Humidity, 64'h40495A3D70000000)) begin
                                    yield_f_reg = 64'h40528D70A3D70A3E;
                                end else begin
                                    yield_f_reg = 64'h40527872B020C49B;
                                end
                            end
                        end else begin
                            if (LE(Organic_Carbon, 64'h3FE8CCCCD0000000)) begin
                                if (LE(Pesticide_Used, 64'h4023DEB848000000)) begin
                                    yield_f_reg = 64'h4052AAE147AE147A;
                                end else begin
                                    yield_f_reg = 64'h405289999999999A;
                                end
                            end else begin
                                if (LE(K, 64'h4058000000000000)) begin
                                    yield_f_reg = 64'h4052C9D0369D0369;
                                end else begin
                                    yield_f_reg = 64'h4052DDA740DA740D;
                                end
                            end
                        end
                    end else begin
                        if (LE(Soil_pH, 64'h401BF0A3D0000000)) begin
                            if (LE(Sunlight_Hours, 64'h4023A147B0000000)) begin
                                if (LE(N, 64'h4056E00000000000)) begin
                                    yield_f_reg = 64'h405301999999999A;
                                end else begin
                                    yield_f_reg = 64'h40531B17E4B17E4B;
                                end
                            end else begin
                                yield_f_reg = 64'h4053528F5C28F5C3;
                            end
                        end else begin
                            if (LE(P, 64'h4044400000000000)) begin
                                if (LE(Altitude, 64'h409C5E0000000000)) begin
                                    yield_f_reg = 64'h4052F828F5C28F5C;
                                end else begin
                                    yield_f_reg = 64'h4052C33333333333;
                                end
                            end else begin
                                if (LE(P, 64'h4046800000000000)) begin
                                    yield_f_reg = 64'h40529B851EB851EC;
                                end else begin
                                    yield_f_reg = 64'h4052CA740DA740DA;
                                end
                            end
                        end
                    end
                end
            end
        end else begin
            if (LE(Rainfall, 64'h408654C290000000)) begin
                if (LE(Soil_pH, 64'h4017428F60000000)) begin
                    if (LE(Fertilizer_Used, 64'h40747E51F0000000)) begin
                        if (LE(Humidity, 64'h403F547AE0000000)) begin
                            yield_f_reg = 64'h405333D70A3D70A4;
                        end else begin
                            if (LE(Wind_Speed, 64'h401C75C290000000)) begin
                                if (LE(Humidity, 64'h4042070A40000000)) begin
                                    yield_f_reg = 64'h405221EB851EB852;
                                end else begin
                                    yield_f_reg = 64'h40526A8F5C28F5C2;
                                end
                            end else begin
                                if (LE(Organic_Carbon, 64'h3FF5333330000000)) begin
                                    yield_f_reg = 64'h40529C51EB851EB9;
                                end else begin
                                    yield_f_reg = 64'h4052CB3333333333;
                                end
                            end
                        end
                    end else begin
                        if (LE(Rainfall, 64'h4078FB5C20000000)) begin
                            yield_f_reg = 64'h40522EB851EB851F;
                        end else begin
                            yield_f_reg = 64'h4051F66666666666;
                        end
                    end
                end else begin
                    if (LE(Fertilizer_Used, 64'h406E77D710000000)) begin
                        if (LE(Altitude, 64'h4081000000000000)) begin
                            yield_f_reg = 64'h4052251EB851EB85;
                        end else begin
                            yield_f_reg = 64'h40528EB851EB851F;
                        end
                    end else begin
                        if (LE(Wind_Speed, 64'h3FF8666670000000)) begin
                            yield_f_reg = 64'h40535851EB851EB8;
                        end else begin
                            if (LE(Temperature, 64'h402D6147B0000000)) begin
                                if (LE(Region, 64'h400C000000000000)) begin
                                    yield_f_reg = 64'h4052B55555555555;
                                end else begin
                                    yield_f_reg = 64'h405277AE147AE148;
                                end
                            end else begin
                                if (LE(Pesticide_Used, 64'h402B7D70B0000000)) begin
                                    yield_f_reg = 64'h4052D31FECB98655;
                                end else begin
                                    yield_f_reg = 64'h4052F7D3E3A4A0B1;
                                end
                            end
                        end
                    end
                end
            end else begin
                if (LE(Soil_Moisture, 64'h404D6CCCD0000000)) begin
                    if (LE(Wind_Speed, 64'h402047AE10000000)) begin
                        if (LE(N, 64'h4065500000000000)) begin
                            if (LE(Soil_pH, 64'h40171EB850000000)) begin
                                if (LE(N, 64'h4063F00000000000)) begin
                                    yield_f_reg = 64'h4052DD186B204B9F;
                                end else begin
                                    yield_f_reg = 64'h4052751EB851EB85;
                                end
                            end else begin
                                if (LE(Organic_Carbon, 64'h3FDB333330000000)) begin
                                    yield_f_reg = 64'h405345C28F5C28F5;
                                end else begin
                                    yield_f_reg = 64'h4052FB6754B6754C;
                                end
                            end
                        end else begin
                            if (LE(Season, 64'h3FF8000000000000)) begin
                                if (LE(Temperature, 64'h4035FAE140000000)) begin
                                    yield_f_reg = 64'h405349999999999A;
                                end else begin
                                    yield_f_reg = 64'h4052F33333333333;
                                end
                            end else begin
                                yield_f_reg = 64'h4053A8F5C28F5C29;
                            end
                        end
                    end else begin
                        if (LE(Rainfall, 64'h4093039EC0000000)) begin
                            if (LE(P, 64'h4045400000000000)) begin
                                if (LE(Pesticide_Used, 64'h4024F33330000000)) begin
                                    yield_f_reg = 64'h4052EA3D70A3D70A;
                                end else begin
                                    yield_f_reg = 64'h40525051EB851EB8;
                                end
                            end else begin
                                if (LE(Humidity, 64'h404DF47AF0000000)) begin
                                    yield_f_reg = 64'h4052E2A6C405D9F7;
                                end else begin
                                    yield_f_reg = 64'h4052A72EA61D950C;
                                end
                            end
                        end else begin
                            if (LE(Soil_Type, 64'h3FF8000000000000)) begin
                                if (LE(P, 64'h4049400000000000)) begin
                                    yield_f_reg = 64'h4052AE147AE147AE;
                                end else begin
                                    yield_f_reg = 64'h40532740DA740DA7;
                                end
                            end else begin
                                if (LE(Sunlight_Hours, 64'h401EB33330000000)) begin
                                    yield_f_reg = 64'h40532ED3A06D3A07;
                                end else begin
                                    yield_f_reg = 64'h4052ECCCCCCCCCCE;
                                end
                            end
                        end
                    end
                end else begin
                    if (LE(Organic_Carbon, 64'h3FF1EB8520000000)) begin
                        if (LE(K, 64'h4036800000000000)) begin
                            if (LE(Soil_Moisture, 64'h404EE70A40000000)) begin
                                yield_f_reg = 64'h4052A28F5C28F5C3;
                            end else begin
                                yield_f_reg = 64'h4052B8F5C28F5C29;
                            end
                        end else begin
                            if (LE(Region, 64'h3FE0000000000000)) begin
                                if (LE(Wind_Speed, 64'h402751EB80000000)) begin
                                    yield_f_reg = 64'h405328F5C28F5C29;
                                end else begin
                                    yield_f_reg = 64'h4053A51EB851EB85;
                                end
                            end else begin
                                if (LE(N, 64'h4059400000000000)) begin
                                    yield_f_reg = 64'h40532851EB851EB9;
                                end else begin
                                    yield_f_reg = 64'h4052F5A740DA740E;
                                end
                            end
                        end
                    end else begin
                        if (LE(N, 64'h4062600000000000)) begin
                            if (LE(Rainfall, 64'h40952DA3D0000000)) begin
                                if (LE(Soil_Moisture, 64'h404E647AE0000000)) begin
                                    yield_f_reg = 64'h40536B851EB851EC;
                                end else begin
                                    yield_f_reg = 64'h40534C7AE147AE14;
                                end
                            end else begin
                                yield_f_reg = 64'h40531F5C28F5C28F;
                            end
                        end else begin
                            if (LE(Season, 64'h3FF8000000000000)) begin
                                yield_f_reg = 64'h4053A1EB851EB852;
                            end else begin
                                yield_f_reg = 64'h4053CE147AE147AE;
                            end
                        end
                    end
                end
            end
        end
    end else begin
        if (LE(Fertilizer_Used, 64'h4073DEB850000000)) begin
            if (LE(N, 64'h405B800000000000)) begin
                if (LE(Soil_Moisture, 64'h4048FB8520000000)) begin
                    if (LE(Wind_Speed, 64'h4026AB8520000000)) begin
                        if (LE(Sunlight_Hours, 64'h402507AE20000000)) begin
                            if (LE(Organic_Carbon, 64'h3FD47AE150000000)) begin
                                yield_f_reg = 64'h40525EB851EB851F;
                            end else begin
                                if (LE(Soil_Moisture, 64'h4046E28F60000000)) begin
                                    yield_f_reg = 64'h40530F8AF8AF8AF9;
                                end else begin
                                    yield_f_reg = 64'h4052D8F5C28F5C2A;
                                end
                            end
                        end else begin
                            if (LE(Rainfall, 64'h409A926670000000)) begin
                                yield_f_reg = 64'h4052647AE147AE14;
                            end else begin
                                if (LE(Rainfall, 64'h40A3AF30A0000000)) begin
                                    yield_f_reg = 64'h4052BEB851EB851F;
                                end else begin
                                    yield_f_reg = 64'h4053028F5C28F5C3;
                                end
                            end
                        end
                    end else begin
                        if (LE(Soil_pH, 64'h401C6B8520000000)) begin
                            if (LE(Humidity, 64'h403F5EB850000000)) begin
                                yield_f_reg = 64'h40522E147AE147AE;
                            end else begin
                                if (LE(K, 64'h4036800000000000)) begin
                                    yield_f_reg = 64'h4052566666666666;
                                end else begin
                                    yield_f_reg = 64'h4052E13F0E8D3446;
                                end
                            end
                        end else begin
                            if (LE(Wind_Speed, 64'h402E7851F0000000)) begin
                                if (LE(Fertilizer_Used, 64'h406FD599A0000000)) begin
                                    yield_f_reg = 64'h40528147AE147AE1;
                                end else begin
                                    yield_f_reg = 64'h405272E147AE147B;
                                end
                            end else begin
                                yield_f_reg = 64'h405253D70A3D70A4;
                            end
                        end
                    end
                end else begin
                    if (LE(Fertilizer_Used, 64'h406FA9EB80000000)) begin
                        if (LE(Soil_pH, 64'h401EBD70A0000000)) begin
                            if (LE(P, 64'h404AC00000000000)) begin
                                yield_f_reg = 64'h4053070A3D70A3D7;
                            end else begin
                                yield_f_reg = 64'h4052E5C28F5C28F6;
                            end
                        end else begin
                            if (LE(Fertilizer_Used, 64'h406EE33330000000)) begin
                                yield_f_reg = 64'h40527851EB851EB8;
                            end else begin
                                yield_f_reg = 64'h40524EB851EB851F;
                            end
                        end
                    end else begin
                        if (LE(Organic_Carbon, 64'h3FF2B851F0000000)) begin
                            if (LE(Pesticide_Used, 64'h402F6B8520000000)) begin
                                if (LE(K, 64'h4056800000000000)) begin
                                    yield_f_reg = 64'h405394E81B4E81B5;
                                end else begin
                                    yield_f_reg = 64'h405344B17E4B17E4;
                                end
                            end else begin
                                if (LE(Pesticide_Used, 64'h4031628F60000000)) begin
                                    yield_f_reg = 64'h4052EAE147AE147A;
                                end else begin
                                    yield_f_reg = 64'h405338D4FDF3B646;
                                end
                            end
                        end else begin
                            if (LE(N, 64'h403E800000000000)) begin
                                yield_f_reg = 64'h405299999999999A;
                            end else begin
                                if (LE(Altitude, 64'h40910C0000000000)) begin
                                    yield_f_reg = 64'h4052FE81B4E81B4F;
                                end else begin
                                    yield_f_reg = 64'h4053240000000000;
                                end
                            end
                        end
                    end
                end
            end else begin
                if (LE(Wind_Speed, 64'h402570A3D0000000)) begin
                    if (LE(Sunlight_Hours, 64'h4017999990000000)) begin
                        if (LE(Rainfall, 64'h40A12B4CD0000000)) begin
                            if (LE(Soil_pH, 64'h40182E1470000000)) begin
                                if (LE(P, 64'h4046800000000000)) begin
                                    yield_f_reg = 64'h40533147AE147AE1;
                                end else begin
                                    yield_f_reg = 64'h405318F5C28F5C29;
                                end
                            end else begin
                                if (LE(Pesticide_Used, 64'h3FD428F5C8000000)) begin
                                    yield_f_reg = 64'h4053251EB851EB85;
                                end else begin
                                    yield_f_reg = 64'h405360624DD2F1AA;
                                end
                            end
                        end else begin
                            if (LE(Soil_Moisture, 64'h4043FEB850000000)) begin
                                if (LE(Organic_Carbon, 64'h3FF0B851F0000000)) begin
                                    yield_f_reg = 64'h40538E6666666666;
                                end else begin
                                    yield_f_reg = 64'h405379999999999A;
                                end
                            end else begin
                                if (LE(Temperature, 64'h4037628F60000000)) begin
                                    yield_f_reg = 64'h40543F5C28F5C28F;
                                end else begin
                                    yield_f_reg = 64'h4053F5C28F5C28F6;
                                end
                            end
                        end
                    end else begin
                        if (LE(Humidity, 64'h4055023D70000000)) begin
                            if (LE(Soil_pH, 64'h4016D70A40000000)) begin
                                if (LE(Pesticide_Used, 64'h402B800000000000)) begin
                                    yield_f_reg = 64'h405314189374BC6A;
                                end else begin
                                    yield_f_reg = 64'h4052D4CCCCCCCCCD;
                                end
                            end else begin
                                if (LE(Humidity, 64'h404CBF5C20000000)) begin
                                    yield_f_reg = 64'h405366872B020C4A;
                                end else begin
                                    yield_f_reg = 64'h405327AE147AE147;
                                end
                            end
                        end else begin
                            if (LE(Pesticide_Used, 64'h401F051EC0000000)) begin
                                yield_f_reg = 64'h4052B851EB851EB8;
                            end else begin
                                if (LE(Sunlight_Hours, 64'h401AC28F60000000)) begin
                                    yield_f_reg = 64'h40529AE147AE147B;
                                end else begin
                                    yield_f_reg = 64'h4052928F5C28F5C3;
                                end
                            end
                        end
                    end
                end else begin
                    if (LE(Fertilizer_Used, 64'h406F166660000000)) begin
                        if (LE(Pesticide_Used, 64'h400E47AE20000000)) begin
                            if (LE(K, 64'h4053800000000000)) begin
                                yield_f_reg = 64'h4052F70A3D70A3D7;
                            end else begin
                                yield_f_reg = 64'h405300A3D70A3D71;
                            end
                        end else begin
                            if (LE(Humidity, 64'h40536E6660000000)) begin
                                if (LE(P, 64'h4051800000000000)) begin
                                    yield_f_reg = 64'h40529DC28F5C28F6;
                                end else begin
                                    yield_f_reg = 64'h405290A3D70A3D71;
                                end
                            end else begin
                                yield_f_reg = 64'h40526F5C28F5C28F;
                            end
                        end
                    end else begin
                        if (LE(Soil_Type, 64'h4004000000000000)) begin
                            if (LE(Wind_Speed, 64'h402F170A50000000)) begin
                                if (LE(Sunlight_Hours, 64'h4019C28F60000000)) begin
                                    yield_f_reg = 64'h405320369D0369D0;
                                end else begin
                                    yield_f_reg = 64'h40536A8F5C28F5C3;
                                end
                            end else begin
                                if (LE(Rainfall, 64'h40A35DE8F0000000)) begin
                                    yield_f_reg = 64'h405302E147AE147B;
                                end else begin
                                    yield_f_reg = 64'h4052CC7AE147AE14;
                                end
                            end
                        end else begin
                            if (LE(Soil_pH, 64'h4019B33330000000)) begin
                                if (LE(N, 64'h405E600000000000)) begin
                                    yield_f_reg = 64'h40531A3D70A3D70A;
                                end else begin
                                    yield_f_reg = 64'h4052CC962FC962FC;
                                end
                            end else begin
                                if (LE(Humidity, 64'h4052C051F0000000)) begin
                                    yield_f_reg = 64'h40532EB851EB851E;
                                end else begin
                                    yield_f_reg = 64'h40531CCCCCCCCCCD;
                                end
                            end
                        end
                    end
                end
            end
        end else begin
            if (LE(Soil_Moisture, 64'h40445EB850000000)) begin
                if (LE(Wind_Speed, 64'h40300147B8000000)) begin
                    if (LE(Soil_pH, 64'h401E70A3D0000000)) begin
                        if (LE(Soil_pH, 64'h4015051EB0000000)) begin
                            if (LE(P, 64'h403E800000000000)) begin
                                if (LE(Wind_Speed, 64'h401375C298000000)) begin
                                    yield_f_reg = 64'h4052E5C28F5C28F6;
                                end else begin
                                    yield_f_reg = 64'h4052C7AE147AE148;
                                end
                            end else begin
                                if (LE(Soil_Type, 64'h3FF0000000000000)) begin
                                    yield_f_reg = 64'h4053028F5C28F5C2;
                                end else begin
                                    yield_f_reg = 64'h40531D70A3D70A3D;
                                end
                            end
                        end else begin
                            if (LE(Humidity, 64'h4041D28F60000000)) begin
                                if (LE(Season, 64'h3FF8000000000000)) begin
                                    yield_f_reg = 64'h40538147AE147AE1;
                                end else begin
                                    yield_f_reg = 64'h4053B28F5C28F5C3;
                                end
                            end else begin
                                if (LE(K, 64'h4050600000000000)) begin
                                    yield_f_reg = 64'h4053151EB851EB85;
                                end else begin
                                    yield_f_reg = 64'h40534D41D41D41D5;
                                end
                            end
                        end
                    end else begin
                        if (LE(Fertilizer_Used, 64'h4074E147B0000000)) begin
                            if (LE(Sunlight_Hours, 64'h401728F5C0000000)) begin
                                yield_f_reg = 64'h40528AE147AE147B;
                            end else begin
                                yield_f_reg = 64'h4052C7AE147AE148;
                            end
                        end else begin
                            yield_f_reg = 64'h405307AE147AE148;
                        end
                    end
                end else begin
                    if (LE(Region, 64'h4008000000000000)) begin
                        if (LE(Rainfall, 64'h409F60B340000000)) begin
                            if (LE(P, 64'h4053C00000000000)) begin
                                if (LE(Region, 64'h3FF8000000000000)) begin
                                    yield_f_reg = 64'h4052C70A3D70A3D7;
                                end else begin
                                    yield_f_reg = 64'h4052CF5C28F5C28F;
                                end
                            end else begin
                                yield_f_reg = 64'h4052A51EB851EB85;
                            end
                        end else begin
                            if (LE(Fertilizer_Used, 64'h40754FAE10000000)) begin
                                if (LE(Wind_Speed, 64'h403110A3D0000000)) begin
                                    yield_f_reg = 64'h4052F0A3D70A3D71;
                                end else begin
                                    yield_f_reg = 64'h4052E70A3D70A3D7;
                                end
                            end else begin
                                yield_f_reg = 64'h4052FB851EB851EC;
                            end
                        end
                    end else begin
                        yield_f_reg = 64'h4053400000000000;
                    end
                end
            end else begin
                if (LE(Humidity, 64'h40557F0A40000000)) begin
                    if (LE(Fertilizer_Used, 64'h40758B0A40000000)) begin
                        if (LE(Soil_pH, 64'h4013BD70A0000000)) begin
                            yield_f_reg = 64'h4052E0A3D70A3D71;
                        end else begin
                            if (LE(N, 64'h4048C00000000000)) begin
                                if (LE(Sunlight_Hours, 64'h4021BAE150000000)) begin
                                    yield_f_reg = 64'h405313A06D3A06D3;
                                end else begin
                                    yield_f_reg = 64'h40536B851EB851EC;
                                end
                            end else begin
                                if (LE(Fertilizer_Used, 64'h407572B860000000)) begin
                                    yield_f_reg = 64'h40536EB084A1E3B9;
                                end else begin
                                    yield_f_reg = 64'h4053370A3D70A3D7;
                                end
                            end
                        end
                    end else begin
                        if (LE(N, 64'h4058C00000000000)) begin
                            if (LE(Sunlight_Hours, 64'h4020E66670000000)) begin
                                if (LE(K, 64'h4051000000000000)) begin
                                    yield_f_reg = 64'h4053E0A3D70A3D71;
                                end else begin
                                    yield_f_reg = 64'h4053C70A3D70A3D7;
                                end
                            end else begin
                                if (LE(Humidity, 64'h404D7A3D70000000)) begin
                                    yield_f_reg = 64'h40538CCCCCCCCCCC;
                                end else begin
                                    yield_f_reg = 64'h4053A147AE147AE1;
                                end
                            end
                        end else begin
                            if (LE(Soil_Moisture, 64'h4045E999A0000000)) begin
                                yield_f_reg = 64'h405353D70A3D70A4;
                            end else begin
                                yield_f_reg = 64'h405337AE147AE148;
                            end
                        end
                    end
                end else begin
                    if (LE(Temperature, 64'h40338B8520000000)) begin
                        if (LE(Soil_Type, 64'h4004000000000000)) begin
                            if (LE(N, 64'h4063300000000000)) begin
                                if (LE(Wind_Speed, 64'h4028AE1488000000)) begin
                                    yield_f_reg = 64'h40534A3D70A3D70A;
                                end else begin
                                    yield_f_reg = 64'h4053533333333333;
                                end
                            end else begin
                                yield_f_reg = 64'h40535CCCCCCCCCCD;
                            end
                        end else begin
                            if (LE(Rainfall, 64'h40A2F0B5C0000000)) begin
                                yield_f_reg = 64'h40533A3D70A3D70A;
                            end else begin
                                yield_f_reg = 64'h40533D70A3D70A3D;
                            end
                        end
                    end else begin
                        if (LE(Soil_pH, 64'h401E147AD0000000)) begin
                            if (LE(Region, 64'h3FF8000000000000)) begin
                                yield_f_reg = 64'h4052A47AE147AE14;
                            end else begin
                                yield_f_reg = 64'h4052C8F5C28F5C29;
                            end
                        end else begin
                            yield_f_reg = 64'h4052F1EB851EB852;
                        end
                    end
                end
            end
        end
    end
end
