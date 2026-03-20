if (LE(Fertilizer_Used, 64'h40680B5C20000000)) begin
    if (LE(Rainfall, 64'h409255CCD0000000)) begin
        if (LE(Fertilizer_Used, 64'h406044A3E0000000)) begin
            if (LE(Soil_Moisture, 64'h4043F33330000000)) begin
                if (LE(Temperature, 64'h402A051EC0000000)) begin
                    if (LE(Humidity, 64'h404C3851F0000000)) begin
                        if (LE(K, 64'h404BC00000000000)) begin
                            yield_f_reg = 64'h4021D1EB851EB852;
                        end else begin
                            if (LE(K, 64'h405A800000000000)) begin
                                yield_f_reg = 64'h4024000000000000;
                            end else begin
                                yield_f_reg = 64'h402370A3D70A3D71;
                            end
                        end
                    end else begin
                        if (LE(Sunlight_Hours, 64'h40207D70A8000000)) begin
                            if (LE(Wind_Speed, 64'h4018E66660000000)) begin
                                yield_f_reg = 64'h4020CCCCCCCCCCCD;
                            end else begin
                                yield_f_reg = 64'h402019999999999A;
                            end
                        end else begin
                            yield_f_reg = 64'h401DCCCCCCCCCCCD;
                        end
                    end
                end else begin
                    if (LE(Pesticide_Used, 64'h402A6B8520000000)) begin
                        if (LE(Region, 64'h3FF8000000000000)) begin
                            if (LE(K, 64'h404F000000000000)) begin
                                if (LE(N, 64'h4052E00000000000)) begin
                                    yield_f_reg = 64'h401899999999999A;
                                end else begin
                                    yield_f_reg = 64'h4016F0A3D70A3D71;
                                end
                            end else begin
                                if (LE(Pesticide_Used, 64'h401C000010000000)) begin
                                    yield_f_reg = 64'h401C4CCCCCCCCCCD;
                                end else begin
                                    yield_f_reg = 64'h4019A740DA740DA7;
                                end
                            end
                        end else begin
                            if (LE(Rainfall, 64'h408B170000000000)) begin
                                if (LE(P, 64'h404B800000000000)) begin
                                    yield_f_reg = 64'h401C90D2A6C405D9;
                                end else begin
                                    yield_f_reg = 64'h402092C5F92C5F93;
                                end
                            end else begin
                                if (LE(K, 64'h4046400000000000)) begin
                                    yield_f_reg = 64'h401B35C28F5C28F6;
                                end else begin
                                    yield_f_reg = 64'h40180F5C28F5C28F;
                                end
                            end
                        end
                    end else begin
                        if (LE(Fertilizer_Used, 64'h40500B3330000000)) begin
                            if (LE(P, 64'h4055600000000000)) begin
                                if (LE(Altitude, 64'h40902E0000000000)) begin
                                    yield_f_reg = 64'h401C4CCCCCCCCCCD;
                                end else begin
                                    yield_f_reg = 64'h401B0A3D70A3D70B;
                                end
                            end else begin
                                yield_f_reg = 64'h4016F5C28F5C28F6;
                            end
                        end else begin
                            if (LE(Wind_Speed, 64'h3FFC147AE0000000)) begin
                                if (LE(N, 64'h4056600000000000)) begin
                                    yield_f_reg = 64'h4022947AE147AE14;
                                end else begin
                                    yield_f_reg = 64'h4023051EB851EB85;
                                end
                            end else begin
                                if (LE(Wind_Speed, 64'h402B170A40000000)) begin
                                    yield_f_reg = 64'h40200463796AC9E0;
                                end else begin
                                    yield_f_reg = 64'h401C4BC6A7EF9DB2;
                                end
                            end
                        end
                    end
                end
            end else begin
                if (LE(Humidity, 64'h4055261480000000)) begin
                    if (LE(Rainfall, 64'h4082E8B850000000)) begin
                        if (LE(Soil_pH, 64'h40160A3D70000000)) begin
                            if (LE(Altitude, 64'h4092FC0000000000)) begin
                                if (LE(Season, 64'h3FE0000000000000)) begin
                                    yield_f_reg = 64'h401C81B4E81B4E81;
                                end else begin
                                    yield_f_reg = 64'h401EA3D70A3D70A4;
                                end
                            end else begin
                                if (LE(Soil_pH, 64'h4013947AE0000000)) begin
                                    yield_f_reg = 64'h4017CCCCCCCCCCCD;
                                end else begin
                                    yield_f_reg = 64'h401A6147AE147AE2;
                                end
                            end
                        end else begin
                            if (LE(Sunlight_Hours, 64'h401F1EB860000000)) begin
                                if (LE(Wind_Speed, 64'h402368F5C0000000)) begin
                                    yield_f_reg = 64'h40209EB851EB851F;
                                end else begin
                                    yield_f_reg = 64'h4022947AE147AE14;
                                end
                            end else begin
                                if (LE(Soil_pH, 64'h401CC7AE10000000)) begin
                                    yield_f_reg = 64'h401FF33333333333;
                                end else begin
                                    yield_f_reg = 64'h401D733333333333;
                                end
                            end
                        end
                    end else begin
                        if (LE(Soil_Moisture, 64'h4049100000000000)) begin
                            if (LE(Altitude, 64'h407E800000000000)) begin
                                if (LE(K, 64'h4052400000000000)) begin
                                    yield_f_reg = 64'h4022947AE147AE14;
                                end else begin
                                    yield_f_reg = 64'h402419999999999A;
                                end
                            end else begin
                                if (LE(N, 64'h4063E00000000000)) begin
                                    yield_f_reg = 64'h40203A2E8BA2E8BB;
                                end else begin
                                    yield_f_reg = 64'h401A75C28F5C28F6;
                                end
                            end
                        end else begin
                            if (LE(Fertilizer_Used, 64'h404F93D710000000)) begin
                                yield_f_reg = 64'h401A1EB851EB851F;
                            end else begin
                                if (LE(Altitude, 64'h407F680000000000)) begin
                                    yield_f_reg = 64'h4024147AE147AE14;
                                end else begin
                                    yield_f_reg = 64'h4021A23920E033BD;
                                end
                            end
                        end
                    end
                end else begin
                    if (LE(Rainfall, 64'h4086DCCCD0000000)) begin
                        if (LE(Soil_Moisture, 64'h40464A3D70000000)) begin
                            if (LE(N, 64'h4056400000000000)) begin
                                yield_f_reg = 64'h40213D70A3D70A3D;
                            end else begin
                                yield_f_reg = 64'h4021A8F5C28F5C29;
                            end
                        end else begin
                            if (LE(Organic_Carbon, 64'h3FDAE147B0000000)) begin
                                yield_f_reg = 64'h40230F5C28F5C28F;
                            end else begin
                                if (LE(K, 64'h404B800000000000)) begin
                                    yield_f_reg = 64'h4022BD70A3D70A3D;
                                end else begin
                                    yield_f_reg = 64'h4022947AE147AE14;
                                end
                            end
                        end
                    end else begin
                        if (LE(N, 64'h4054000000000000)) begin
                            yield_f_reg = 64'h402599999999999A;
                        end else begin
                            if (LE(Soil_Type, 64'h4004000000000000)) begin
                                yield_f_reg = 64'h4023BD70A3D70A3D;
                            end else begin
                                yield_f_reg = 64'h4024A3D70A3D70A4;
                            end
                        end
                    end
                end
            end
        end else begin
            if (LE(K, 64'h4061A00000000000)) begin
                if (LE(Soil_Moisture, 64'h4043470A40000000)) begin
                    if (LE(Sunlight_Hours, 64'h40146147A0000000)) begin
                        if (LE(Fertilizer_Used, 64'h406490CCD0000000)) begin
                            if (LE(Pesticide_Used, 64'h4027028F60000000)) begin
                                if (LE(Humidity, 64'h404793D710000000)) begin
                                    yield_f_reg = 64'h401F851EB851EB85;
                                end else begin
                                    yield_f_reg = 64'h401CD70A3D70A3D7;
                                end
                            end else begin
                                if (LE(K, 64'h4051E00000000000)) begin
                                    yield_f_reg = 64'h402223D70A3D70A4;
                                end else begin
                                    yield_f_reg = 64'h4020DEB851EB851F;
                                end
                            end
                        end else begin
                            if (LE(Soil_pH, 64'h4017A3D700000000)) begin
                                if (LE(Soil_pH, 64'h40153D70A0000000)) begin
                                    yield_f_reg = 64'h40212B851EB851EC;
                                end else begin
                                    yield_f_reg = 64'h4022D1EB851EB852;
                                end
                            end else begin
                                if (LE(Wind_Speed, 64'h4021A3D710000000)) begin
                                    yield_f_reg = 64'h4023C7AE147AE148;
                                end else begin
                                    yield_f_reg = 64'h402530A3D70A3D70;
                                end
                            end
                        end
                    end else begin
                        if (LE(Pesticide_Used, 64'h403870A3D0000000)) begin
                            if (LE(Fertilizer_Used, 64'h4063A63D70000000)) begin
                                if (LE(Rainfall, 64'h408913C290000000)) begin
                                    yield_f_reg = 64'h401E051EB851EB87;
                                end else begin
                                    yield_f_reg = 64'h40211B4E81B4E81B;
                                end
                            end else begin
                                if (LE(Soil_Moisture, 64'h4035E51EC0000000)) begin
                                    yield_f_reg = 64'h401F6147AE147AE2;
                                end else begin
                                    yield_f_reg = 64'h4021533333333334;
                                end
                            end
                        end else begin
                            if (LE(Wind_Speed, 64'h4011333330000000)) begin
                                yield_f_reg = 64'h401970A3D70A3D71;
                            end else begin
                                yield_f_reg = 64'h401A99999999999A;
                            end
                        end
                    end
                end else begin
                    if (LE(Temperature, 64'h40361D70A0000000)) begin
                        if (LE(Sunlight_Hours, 64'h40235EB850000000)) begin
                            if (LE(Soil_pH, 64'h401C4CCCC0000000)) begin
                                if (LE(Altitude, 64'h4078B00000000000)) begin
                                    yield_f_reg = 64'h401FD1EB851EB852;
                                end else begin
                                    yield_f_reg = 64'h4022728F5C28F5C2;
                                end
                            end else begin
                                if (LE(Pesticide_Used, 64'h4012E147A8000000)) begin
                                    yield_f_reg = 64'h40223D70A3D70A3E;
                                end else begin
                                    yield_f_reg = 64'h4024600000000000;
                                end
                            end
                        end else begin
                            if (LE(Temperature, 64'h4030028F60000000)) begin
                                yield_f_reg = 64'h4028666666666666;
                            end else begin
                                if (LE(Organic_Carbon, 64'h3FE8A3D710000000)) begin
                                    yield_f_reg = 64'h4024666666666666;
                                end else begin
                                    yield_f_reg = 64'h40252E147AE147AE;
                                end
                            end
                        end
                    end else begin
                        if (LE(Pesticide_Used, 64'h400551EB88000000)) begin
                            if (LE(Organic_Carbon, 64'h3FF4147AE8000000)) begin
                                yield_f_reg = 64'h401E5C28F5C28F5C;
                            end else begin
                                yield_f_reg = 64'h4018AE147AE147AE;
                            end
                        end else begin
                            if (LE(Pesticide_Used, 64'h403703D700000000)) begin
                                if (LE(P, 64'h4053E00000000000)) begin
                                    yield_f_reg = 64'h4021AFF9EE8DD7CC;
                                end else begin
                                    yield_f_reg = 64'h4023EE978D4FDF3B;
                                end
                            end else begin
                                if (LE(N, 64'h4050E00000000000)) begin
                                    yield_f_reg = 64'h401D51EB851EB851;
                                end else begin
                                    yield_f_reg = 64'h4020AB851EB851EC;
                                end
                            end
                        end
                    end
                end
            end else begin
                if (LE(Wind_Speed, 64'h4017A3D710000000)) begin
                    if (LE(Pesticide_Used, 64'h4013CCCCD0000000)) begin
                        yield_f_reg = 64'h402723D70A3D70A4;
                    end else begin
                        if (LE(Soil_pH, 64'h4017E66660000000)) begin
                            if (LE(Temperature, 64'h4040F99990000000)) begin
                                yield_f_reg = 64'h40248F5C28F5C28F;
                            end else begin
                                yield_f_reg = 64'h4024F0A3D70A3D71;
                            end
                        end else begin
                            if (LE(Wind_Speed, 64'h4010000000000000)) begin
                                yield_f_reg = 64'h4025C28F5C28F5C3;
                            end else begin
                                yield_f_reg = 64'h4025570A3D70A3D7;
                            end
                        end
                    end
                end else begin
                    if (LE(Temperature, 64'h403750A3D0000000)) begin
                        if (LE(Soil_pH, 64'h4016199990000000)) begin
                            yield_f_reg = 64'h40252E147AE147AE;
                        end else begin
                            if (LE(Soil_pH, 64'h4019F5C290000000)) begin
                                yield_f_reg = 64'h402419999999999A;
                            end else begin
                                yield_f_reg = 64'h402475C28F5C28F6;
                            end
                        end
                    end else begin
                        if (LE(Wind_Speed, 64'h401C23D700000000)) begin
                            if (LE(Fertilizer_Used, 64'h40638C0000000000)) begin
                                yield_f_reg = 64'h4022D1EB851EB852;
                            end else begin
                                yield_f_reg = 64'h4022E66666666666;
                            end
                        end else begin
                            if (LE(Humidity, 64'h4050D7FFF8000000)) begin
                                yield_f_reg = 64'h4020C7AE147AE148;
                            end else begin
                                yield_f_reg = 64'h40216147AE147AE1;
                            end
                        end
                    end
                end
            end
        end
    end else begin
        if (LE(Rainfall, 64'h40A16B6150000000)) begin
            if (LE(N, 64'h4061500000000000)) begin
                if (LE(K, 64'h4059600000000000)) begin
                    if (LE(Soil_Moisture, 64'h4044133330000000)) begin
                        if (LE(Soil_pH, 64'h4020028F60000000)) begin
                            if (LE(Temperature, 64'h403B600000000000)) begin
                                if (LE(Sunlight_Hours, 64'h40233D70A0000000)) begin
                                    yield_f_reg = 64'h402285F92C5F92C7;
                                end else begin
                                    yield_f_reg = 64'h40203C962FC962FD;
                                end
                            end else begin
                                if (LE(P, 64'h404D800000000000)) begin
                                    yield_f_reg = 64'h402016B851EB851F;
                                end else begin
                                    yield_f_reg = 64'h4021F47AE147AE14;
                                end
                            end
                        end else begin
                            if (LE(Organic_Carbon, 64'h3FF051EB88000000)) begin
                                if (LE(Pesticide_Used, 64'h40191EB840000000)) begin
                                    yield_f_reg = 64'h402028F5C28F5C29;
                                end else begin
                                    yield_f_reg = 64'h401EC28F5C28F5C2;
                                end
                            end else begin
                                if (LE(Organic_Carbon, 64'h3FF4F5C290000000)) begin
                                    yield_f_reg = 64'h401CAE147AE147AE;
                                end else begin
                                    yield_f_reg = 64'h401BE147AE147AE1;
                                end
                            end
                        end
                    end else begin
                        if (LE(Wind_Speed, 64'h4002E147B0000000)) begin
                            if (LE(Wind_Speed, 64'h4000AE1480000000)) begin
                                if (LE(K, 64'h404E000000000000)) begin
                                    yield_f_reg = 64'h4027666666666666;
                                end else begin
                                    yield_f_reg = 64'h4026E147AE147AE1;
                                end
                            end else begin
                                yield_f_reg = 64'h4026333333333333;
                            end
                        end else begin
                            if (LE(Humidity, 64'h4054AEB850000000)) begin
                                if (LE(Wind_Speed, 64'h402FE8F5C0000000)) begin
                                    yield_f_reg = 64'h4022A1A9FBE76C8A;
                                end else begin
                                    yield_f_reg = 64'h402063D70A3D70A3;
                                end
                            end else begin
                                if (LE(Soil_pH, 64'h4016EB8520000000)) begin
                                    yield_f_reg = 64'h4022547AE147AE14;
                                end else begin
                                    yield_f_reg = 64'h40263D70A3D70A3E;
                                end
                            end
                        end
                    end
                end else begin
                    if (LE(Fertilizer_Used, 64'h4063CBAE10000000)) begin
                        if (LE(Temperature, 64'h40427EB850000000)) begin
                            if (LE(Humidity, 64'h404C951EC0000000)) begin
                                if (LE(Sunlight_Hours, 64'h4017666670000000)) begin
                                    yield_f_reg = 64'h40221BA5E353F7CF;
                                end else begin
                                    yield_f_reg = 64'h4024AE794DFB461A;
                                end
                            end else begin
                                if (LE(Pesticide_Used, 64'h40366B8520000000)) begin
                                    yield_f_reg = 64'h4022B1EB851EB851;
                                end else begin
                                    yield_f_reg = 64'h401C851EB851EB85;
                                end
                            end
                        end else begin
                            if (LE(Wind_Speed, 64'h4009F5C288000000)) begin
                                yield_f_reg = 64'h4022851EB851EB85;
                            end else begin
                                if (LE(Altitude, 64'h409E1C0000000000)) begin
                                    yield_f_reg = 64'h40204962FC962FC9;
                                end else begin
                                    yield_f_reg = 64'h402119999999999A;
                                end
                            end
                        end
                    end else begin
                        if (LE(Pesticide_Used, 64'h402EBD70A0000000)) begin
                            if (LE(P, 64'h404A800000000000)) begin
                                if (LE(Fertilizer_Used, 64'h40677EB850000000)) begin
                                    yield_f_reg = 64'h40230A3D70A3D70A;
                                end else begin
                                    yield_f_reg = 64'h4021D1EB851EB852;
                                end
                            end else begin
                                if (LE(Humidity, 64'h404727AE20000000)) begin
                                    yield_f_reg = 64'h4025666666666666;
                                end else begin
                                    yield_f_reg = 64'h40247E4B17E4B17F;
                                end
                            end
                        end else begin
                            if (LE(Rainfall, 64'h409FE70F60000000)) begin
                                if (LE(Irrigation_Type, 64'h3FE0000000000000)) begin
                                    yield_f_reg = 64'h4026451EB851EB85;
                                end else begin
                                    yield_f_reg = 64'h4025451EB851EB86;
                                end
                            end else begin
                                if (LE(Humidity, 64'h4049FC28F0000000)) begin
                                    yield_f_reg = 64'h40270A3D70A3D70A;
                                end else begin
                                    yield_f_reg = 64'h4026E147AE147AE1;
                                end
                            end
                        end
                    end
                end
            end else begin
                if (LE(Humidity, 64'h40424147B0000000)) begin
                    if (LE(Region, 64'h4000000000000000)) begin
                        yield_f_reg = 64'h401E0A3D70A3D70A;
                    end else begin
                        if (LE(Temperature, 64'h403487AE10000000)) begin
                            yield_f_reg = 64'h4021947AE147AE14;
                        end else begin
                            if (LE(Soil_Moisture, 64'h403A370A30000000)) begin
                                yield_f_reg = 64'h4020CCCCCCCCCCCD;
                            end else begin
                                yield_f_reg = 64'h40203D70A3D70A3D;
                            end
                        end
                    end
                end else begin
                    if (LE(Pesticide_Used, 64'h4030C8F5C0000000)) begin
                        if (LE(Region, 64'h3FF8000000000000)) begin
                            if (LE(Sunlight_Hours, 64'h4014F5C290000000)) begin
                                if (LE(Soil_Moisture, 64'h4047847AE0000000)) begin
                                    yield_f_reg = 64'h4025A3D70A3D70A4;
                                end else begin
                                    yield_f_reg = 64'h4026570A3D70A3D7;
                                end
                            end else begin
                                if (LE(K, 64'h405F000000000000)) begin
                                    yield_f_reg = 64'h4022EFC962FC9631;
                                end else begin
                                    yield_f_reg = 64'h4024B22D0E560418;
                                end
                            end
                        end else begin
                            if (LE(Fertilizer_Used, 64'h40608947B0000000)) begin
                                if (LE(Soil_Moisture, 64'h404B71EB80000000)) begin
                                    yield_f_reg = 64'h4023AA6C405D9F73;
                                end else begin
                                    yield_f_reg = 64'h4025CCCCCCCCCCCD;
                                end
                            end else begin
                                if (LE(Altitude, 64'h4081F80000000000)) begin
                                    yield_f_reg = 64'h4024F258BF258BF3;
                                end else begin
                                    yield_f_reg = 64'h4027317E4B17E4B0;
                                end
                            end
                        end
                    end else begin
                        if (LE(Soil_Moisture, 64'h4042C28F60000000)) begin
                            if (LE(Organic_Carbon, 64'h3FF4B851F0000000)) begin
                                if (LE(Sunlight_Hours, 64'h401C570A40000000)) begin
                                    yield_f_reg = 64'h4020444444444444;
                                end else begin
                                    yield_f_reg = 64'h4020C00000000000;
                                end
                            end else begin
                                if (LE(K, 64'h4056000000000000)) begin
                                    yield_f_reg = 64'h4022F5C28F5C28F6;
                                end else begin
                                    yield_f_reg = 64'h40243851EB851EB8;
                                end
                            end
                        end else begin
                            if (LE(Pesticide_Used, 64'h4036CCCCC0000000)) begin
                                if (LE(Wind_Speed, 64'h4027A147B0000000)) begin
                                    yield_f_reg = 64'h4022D1EB851EB852;
                                end else begin
                                    yield_f_reg = 64'h4023E8F5C28F5C29;
                                end
                            end else begin
                                if (LE(Rainfall, 64'h409BD56660000000)) begin
                                    yield_f_reg = 64'h40262B851EB851EC;
                                end else begin
                                    yield_f_reg = 64'h4024C00000000000;
                                end
                            end
                        end
                    end
                end
            end
        end else begin
            if (LE(Fertilizer_Used, 64'h405EAA8F50000000)) begin
                if (LE(Soil_Moisture, 64'h4038A00000000000)) begin
                    if (LE(Soil_pH, 64'h4017BD70A0000000)) begin
                        if (LE(Soil_Type, 64'h3FE0000000000000)) begin
                            yield_f_reg = 64'h402270A3D70A3D71;
                        end else begin
                            if (LE(Soil_Moisture, 64'h4032533330000000)) begin
                                yield_f_reg = 64'h401E28F5C28F5C29;
                            end else begin
                                if (LE(Sunlight_Hours, 64'h401751EB80000000)) begin
                                    yield_f_reg = 64'h4021000000000000;
                                end else begin
                                    yield_f_reg = 64'h402019999999999A;
                                end
                            end
                        end
                    end else begin
                        if (LE(Rainfall, 64'h40A4D39710000000)) begin
                            if (LE(Soil_pH, 64'h401DAE1480000000)) begin
                                if (LE(Season, 64'h3FE0000000000000)) begin
                                    yield_f_reg = 64'h402328F5C28F5C29;
                                end else begin
                                    yield_f_reg = 64'h4023A147AE147AE2;
                                end
                            end else begin
                                if (LE(Soil_pH, 64'h401EBD70A0000000)) begin
                                    yield_f_reg = 64'h4022C51EB851EB85;
                                end else begin
                                    yield_f_reg = 64'h40228A3D70A3D70A;
                                end
                            end
                        end else begin
                            yield_f_reg = 64'h4020000000000000;
                        end
                    end
                end else begin
                    if (LE(Soil_Moisture, 64'h404F15C290000000)) begin
                        if (LE(Humidity, 64'h4056638520000000)) begin
                            if (LE(Temperature, 64'h4041D28F60000000)) begin
                                if (LE(K, 64'h4046400000000000)) begin
                                    yield_f_reg = 64'h4021D55555555556;
                                end else begin
                                    yield_f_reg = 64'h40239D8CBA134F48;
                                end
                            end else begin
                                if (LE(Altitude, 64'h4091480000000000)) begin
                                    yield_f_reg = 64'h402645A1CAC08312;
                                end else begin
                                    yield_f_reg = 64'h4022800000000000;
                                end
                            end
                        end else begin
                            yield_f_reg = 64'h4028B851EB851EB8;
                        end
                    end else begin
                        yield_f_reg = 64'h4028E66666666666;
                    end
                end
            end else begin
                if (LE(Soil_pH, 64'h401F947AE0000000)) begin
                    if (LE(Wind_Speed, 64'h4019333340000000)) begin
                        if (LE(P, 64'h4046C00000000000)) begin
                            if (LE(Sunlight_Hours, 64'h401A4CCCC0000000)) begin
                                if (LE(Organic_Carbon, 64'h3FF428F5C0000000)) begin
                                    yield_f_reg = 64'h402470A3D70A3D70;
                                end else begin
                                    yield_f_reg = 64'h4023000000000000;
                                end
                            end else begin
                                if (LE(Pesticide_Used, 64'h402AC28F60000000)) begin
                                    yield_f_reg = 64'h4027570A3D70A3D7;
                                end else begin
                                    yield_f_reg = 64'h4025EB851EB851EB;
                                end
                            end
                        end else begin
                            if (LE(Sunlight_Hours, 64'h4020970A40000000)) begin
                                if (LE(Soil_pH, 64'h401A9EB850000000)) begin
                                    yield_f_reg = 64'h4029DC28F5C28F5C;
                                end else begin
                                    yield_f_reg = 64'h402CA3D70A3D70A4;
                                end
                            end else begin
                                if (LE(N, 64'h404D400000000000)) begin
                                    yield_f_reg = 64'h40264CCCCCCCCCCD;
                                end else begin
                                    yield_f_reg = 64'h4029147AE147AE15;
                                end
                            end
                        end
                    end else begin
                        if (LE(Pesticide_Used, 64'h402B63D700000000)) begin
                            if (LE(Humidity, 64'h404B03D710000000)) begin
                                if (LE(Sunlight_Hours, 64'h4021266660000000)) begin
                                    yield_f_reg = 64'h40245880BB3EE722;
                                end else begin
                                    yield_f_reg = 64'h402627EF9DB22D0E;
                                end
                            end else begin
                                if (LE(Fertilizer_Used, 64'h4063DB5C30000000)) begin
                                    yield_f_reg = 64'h4022FAE147AE147A;
                                end else begin
                                    yield_f_reg = 64'h402461D950C83FB7;
                                end
                            end
                        end else begin
                            if (LE(K, 64'h4059A00000000000)) begin
                                if (LE(Soil_pH, 64'h4015FAE140000000)) begin
                                    yield_f_reg = 64'h4023CE147AE147AE;
                                end else begin
                                    yield_f_reg = 64'h402611EB851EB851;
                                end
                            end else begin
                                if (LE(Pesticide_Used, 64'h403567AE10000000)) begin
                                    yield_f_reg = 64'h4027D1EB851EB851;
                                end else begin
                                    yield_f_reg = 64'h402AC7AE147AE148;
                                end
                            end
                        end
                    end
                end else begin
                    if (LE(Soil_Type, 64'h3FE0000000000000)) begin
                        yield_f_reg = 64'h40224CCCCCCCCCCD;
                    end else begin
                        yield_f_reg = 64'h401B3D70A3D70A3D;
                    end
                end
            end
        end
    end
end else begin
    if (LE(Rainfall, 64'h40981FFAE0000000)) begin
        if (LE(Soil_Moisture, 64'h4044728F60000000)) begin
            if (LE(Fertilizer_Used, 64'h4070E5AE20000000)) begin
                if (LE(Soil_Moisture, 64'h4036B47AE0000000)) begin
                    if (LE(Humidity, 64'h405587AE10000000)) begin
                        if (LE(Organic_Carbon, 64'h3FF851EB80000000)) begin
                            if (LE(P, 64'h4046C00000000000)) begin
                                if (LE(Sunlight_Hours, 64'h4015851EC0000000)) begin
                                    yield_f_reg = 64'h40207851EB851EB8;
                                end else begin
                                    yield_f_reg = 64'h4021162FC962FC96;
                                end
                            end else begin
                                if (LE(K, 64'h4055C00000000000)) begin
                                    yield_f_reg = 64'h402053A06D3A06D4;
                                end else begin
                                    yield_f_reg = 64'h401F5810624DD2F2;
                                end
                            end
                        end else begin
                            yield_f_reg = 64'h4022CCCCCCCCCCCD;
                        end
                    end else begin
                        yield_f_reg = 64'h40240F5C28F5C28F;
                    end
                end else begin
                    if (LE(Rainfall, 64'h4089415C30000000)) begin
                        if (LE(Region, 64'h3FE0000000000000)) begin
                            if (LE(Pesticide_Used, 64'h4031B851E8000000)) begin
                                if (LE(Soil_Moisture, 64'h403B2147B0000000)) begin
                                    yield_f_reg = 64'h40252E147AE147AE;
                                end else begin
                                    yield_f_reg = 64'h4026A8F5C28F5C29;
                                end
                            end else begin
                                if (LE(Soil_pH, 64'h4019AE1470000000)) begin
                                    yield_f_reg = 64'h40210F5C28F5C28F;
                                end else begin
                                    yield_f_reg = 64'h40219EB851EB851F;
                                end
                            end
                        end else begin
                            if (LE(K, 64'h4062300000000000)) begin
                                if (LE(Organic_Carbon, 64'h3FF147AE10000000)) begin
                                    yield_f_reg = 64'h4021DAF48E27C15B;
                                end else begin
                                    yield_f_reg = 64'h40205AC37DAC37DA;
                                end
                            end else begin
                                yield_f_reg = 64'h4025F5C28F5C28F6;
                            end
                        end
                    end else begin
                        if (LE(N, 64'h4044800000000000)) begin
                            if (LE(Humidity, 64'h4053EBD710000000)) begin
                                if (LE(Fertilizer_Used, 64'h406AEC0000000000)) begin
                                    yield_f_reg = 64'h4020CCCCCCCCCCCD;
                                end else begin
                                    yield_f_reg = 64'h4021947AE147AE14;
                                end
                            end else begin
                                yield_f_reg = 64'h401C0A3D70A3D70A;
                            end
                        end else begin
                            if (LE(Fertilizer_Used, 64'h406D19EB90000000)) begin
                                if (LE(Humidity, 64'h4050D38520000000)) begin
                                    yield_f_reg = 64'h4025DAC37DAC37DC;
                                end else begin
                                    yield_f_reg = 64'h40238CCCCCCCCCCD;
                                end
                            end else begin
                                if (LE(Soil_pH, 64'h401B1999A0000000)) begin
                                    yield_f_reg = 64'h4023ED61BED61BED;
                                end else begin
                                    yield_f_reg = 64'h4021B277F44C118E;
                                end
                            end
                        end
                    end
                end
            end else begin
                if (LE(Temperature, 64'h4034CF5C20000000)) begin
                    if (LE(Altitude, 64'h4095960000000000)) begin
                        if (LE(Region, 64'h400C000000000000)) begin
                            if (LE(Rainfall, 64'h4074AF1EC0000000)) begin
                                if (LE(Soil_Type, 64'h3FF8000000000000)) begin
                                    yield_f_reg = 64'h40268F5C28F5C28F;
                                end else begin
                                    yield_f_reg = 64'h4025947AE147AE14;
                                end
                            end else begin
                                if (LE(Soil_Moisture, 64'h40411CCCD0000000)) begin
                                    yield_f_reg = 64'h4021D37ED186B205;
                                end else begin
                                    yield_f_reg = 64'h4024066666666666;
                                end
                            end
                        end else begin
                            if (LE(K, 64'h4059400000000000)) begin
                                if (LE(Rainfall, 64'h409775B850000000)) begin
                                    yield_f_reg = 64'h4023CCCCCCCCCCCD;
                                end else begin
                                    yield_f_reg = 64'h4024147AE147AE14;
                                end
                            end else begin
                                if (LE(Fertilizer_Used, 64'h40726F8520000000)) begin
                                    yield_f_reg = 64'h4027CCCCCCCCCCCD;
                                end else begin
                                    yield_f_reg = 64'h4025C28F5C28F5C3;
                                end
                            end
                        end
                    end else begin
                        if (LE(Altitude, 64'h4096AA0000000000)) begin
                            yield_f_reg = 64'h401C7AE147AE147B;
                        end else begin
                            if (LE(Wind_Speed, 64'h4011AE1478000000)) begin
                                if (LE(Wind_Speed, 64'h4001A3D710000000)) begin
                                    yield_f_reg = 64'h40233851EB851EB8;
                                end else begin
                                    yield_f_reg = 64'h4022BD70A3D70A3D;
                                end
                            end else begin
                                if (LE(Fertilizer_Used, 64'h4071771EC0000000)) begin
                                    yield_f_reg = 64'h402170A3D70A3D71;
                                end else begin
                                    yield_f_reg = 64'h4020D0A3D70A3D70;
                                end
                            end
                        end
                    end
                end else begin
                    if (LE(Soil_pH, 64'h4014666660000000)) begin
                        if (LE(N, 64'h4054800000000000)) begin
                            yield_f_reg = 64'h401CE147AE147AE1;
                        end else begin
                            yield_f_reg = 64'h40219EB851EB851F;
                        end
                    end else begin
                        if (LE(Season, 64'h3FE0000000000000)) begin
                            if (LE(K, 64'h403D800000000000)) begin
                                if (LE(Rainfall, 64'h407886A3E0000000)) begin
                                    yield_f_reg = 64'h4024F0A3D70A3D71;
                                end else begin
                                    yield_f_reg = 64'h402407AE147AE148;
                                end
                            end else begin
                                if (LE(Temperature, 64'h4040C147B0000000)) begin
                                    yield_f_reg = 64'h4025E789ABCDF012;
                                end else begin
                                    yield_f_reg = 64'h4027624DD2F1A9FC;
                                end
                            end
                        end else begin
                            if (LE(Altitude, 64'h4096320000000000)) begin
                                if (LE(Fertilizer_Used, 64'h40723399A0000000)) begin
                                    yield_f_reg = 64'h4022ACCCCCCCCCCD;
                                end else begin
                                    yield_f_reg = 64'h4024580000000001;
                                end
                            end else begin
                                if (LE(Pesticide_Used, 64'h4028FD70B0000000)) begin
                                    yield_f_reg = 64'h4024800000000000;
                                end else begin
                                    yield_f_reg = 64'h40278DA740DA740D;
                                end
                            end
                        end
                    end
                end
            end
        end else begin
            if (LE(Fertilizer_Used, 64'h40736A3D80000000)) begin
                if (LE(Rainfall, 64'h4090F970A0000000)) begin
                    if (LE(Fertilizer_Used, 64'h40709E3D80000000)) begin
                        if (LE(Soil_pH, 64'h401D6B8520000000)) begin
                            if (LE(Soil_Moisture, 64'h404BE0A3D0000000)) begin
                                if (LE(Rainfall, 64'h408CCE1EB0000000)) begin
                                    yield_f_reg = 64'h4022E5A1CAC08312;
                                end else begin
                                    yield_f_reg = 64'h40265EB851EB851F;
                                end
                            end else begin
                                if (LE(Rainfall, 64'h408C61F5C0000000)) begin
                                    yield_f_reg = 64'h4025A094F2094F21;
                                end else begin
                                    yield_f_reg = 64'h40231C28F5C28F5D;
                                end
                            end
                        end else begin
                            if (LE(K, 64'h404B800000000000)) begin
                                if (LE(Soil_Moisture, 64'h404CB7AE20000000)) begin
                                    yield_f_reg = 64'h402146A7EF9DB22D;
                                end else begin
                                    yield_f_reg = 64'h401F0F5C28F5C290;
                                end
                            end else begin
                                if (LE(Soil_Type, 64'h3FF8000000000000)) begin
                                    yield_f_reg = 64'h40240DA740DA740E;
                                end else begin
                                    yield_f_reg = 64'h4022F5C28F5C28F6;
                                end
                            end
                        end
                    end else begin
                        if (LE(Organic_Carbon, 64'h3FE5C28F60000000)) begin
                            if (LE(P, 64'h4043400000000000)) begin
                                if (LE(Soil_Type, 64'h3FE0000000000000)) begin
                                    yield_f_reg = 64'h4025000000000000;
                                end else begin
                                    yield_f_reg = 64'h402523D70A3D70A4;
                                end
                            end else begin
                                if (LE(Region, 64'h3FF8000000000000)) begin
                                    yield_f_reg = 64'h4021CCCCCCCCCCCD;
                                end else begin
                                    yield_f_reg = 64'h4022AE147AE147AE;
                                end
                            end
                        end else begin
                            if (LE(Soil_pH, 64'h401A51EB80000000)) begin
                                if (LE(N, 64'h4059A00000000000)) begin
                                    yield_f_reg = 64'h4025B851EB851EB8;
                                end else begin
                                    yield_f_reg = 64'h40276147AE147AE2;
                                end
                            end else begin
                                if (LE(N, 64'h4058200000000000)) begin
                                    yield_f_reg = 64'h40249B4E81B4E81B;
                                end else begin
                                    yield_f_reg = 64'h4025A9D0369D036B;
                                end
                            end
                        end
                    end
                end else begin
                    if (LE(Pesticide_Used, 64'h4034D70A30000000)) begin
                        if (LE(K, 64'h4052A00000000000)) begin
                            if (LE(Wind_Speed, 64'h4030666670000000)) begin
                                if (LE(Soil_pH, 64'h4014E147B0000000)) begin
                                    yield_f_reg = 64'h4024044444444444;
                                end else begin
                                    yield_f_reg = 64'h4026410624DD2F1B;
                                end
                            end else begin
                                if (LE(Organic_Carbon, 64'h3FF6E147A0000000)) begin
                                    yield_f_reg = 64'h4020E66666666666;
                                end else begin
                                    yield_f_reg = 64'h4020EB851EB851EC;
                                end
                            end
                        end else begin
                            if (LE(K, 64'h4054600000000000)) begin
                                if (LE(Altitude, 64'h409F240000000000)) begin
                                    yield_f_reg = 64'h4027EE147AE147AE;
                                end else begin
                                    yield_f_reg = 64'h402C75C28F5C28F6;
                                end
                            end else begin
                                if (LE(Humidity, 64'h4043AB8520000000)) begin
                                    yield_f_reg = 64'h40293F258BF258C0;
                                end else begin
                                    yield_f_reg = 64'h4026055A4C55A4C6;
                                end
                            end
                        end
                    end else begin
                        if (LE(Humidity, 64'h404B7851F0000000)) begin
                            if (LE(Altitude, 64'h407BC80000000000)) begin
                                yield_f_reg = 64'h4026D70A3D70A3D7;
                            end else begin
                                yield_f_reg = 64'h4026EB851EB851EC;
                            end
                        end else begin
                            if (LE(P, 64'h4031000000000000)) begin
                                yield_f_reg = 64'h401B7AE147AE147B;
                            end else begin
                                if (LE(P, 64'h404B400000000000)) begin
                                    yield_f_reg = 64'h402308F5C28F5C28;
                                end else begin
                                    yield_f_reg = 64'h40213D70A3D70A3D;
                                end
                            end
                        end
                    end
                end
            end else begin
                if (LE(Rainfall, 64'h408C21F5C0000000)) begin
                    if (LE(N, 64'h4060600000000000)) begin
                        if (LE(Altitude, 64'h40986A0000000000)) begin
                            if (LE(Soil_pH, 64'h401547AE10000000)) begin
                                if (LE(Region, 64'h3FE0000000000000)) begin
                                    yield_f_reg = 64'h40223D70A3D70A3D;
                                end else begin
                                    yield_f_reg = 64'h402363D70A3D70A4;
                                end
                            end else begin
                                if (LE(Fertilizer_Used, 64'h4073A0CCD0000000)) begin
                                    yield_f_reg = 64'h40232E147AE147AE;
                                end else begin
                                    yield_f_reg = 64'h40253BFA2608C6F3;
                                end
                            end
                        end else begin
                            if (LE(Rainfall, 64'h408570B850000000)) begin
                                yield_f_reg = 64'h40268A3D70A3D70A;
                            end else begin
                                yield_f_reg = 64'h402828F5C28F5C29;
                            end
                        end
                    end else begin
                        if (LE(Wind_Speed, 64'h4025DC2900000000)) begin
                            if (LE(Fertilizer_Used, 64'h4075148F60000000)) begin
                                yield_f_reg = 64'h40288F5C28F5C28F;
                            end else begin
                                yield_f_reg = 64'h402919999999999A;
                            end
                        end else begin
                            if (LE(Humidity, 64'h4050AFAE10000000)) begin
                                yield_f_reg = 64'h40296B851EB851EC;
                            end else begin
                                yield_f_reg = 64'h4029FAE147AE147B;
                            end
                        end
                    end
                end else begin
                    if (LE(Wind_Speed, 64'h40221EB850000000)) begin
                        if (LE(Rainfall, 64'h4094F0FAE0000000)) begin
                            if (LE(N, 64'h4057000000000000)) begin
                                if (LE(Organic_Carbon, 64'h3FF4147AE0000000)) begin
                                    yield_f_reg = 64'h40292B851EB851EC;
                                end else begin
                                    yield_f_reg = 64'h4029D70A3D70A3D7;
                                end
                            end else begin
                                if (LE(Soil_Type, 64'h3FF0000000000000)) begin
                                    yield_f_reg = 64'h402ADC28F5C28F5C;
                                end else begin
                                    yield_f_reg = 64'h402A333333333333;
                                end
                            end
                        end else begin
                            if (LE(Region, 64'h400C000000000000)) begin
                                if (LE(Region, 64'h4004000000000000)) begin
                                    yield_f_reg = 64'h402899999999999A;
                                end else begin
                                    yield_f_reg = 64'h4027DC28F5C28F5C;
                                end
                            end else begin
                                yield_f_reg = 64'h402675C28F5C28F6;
                            end
                        end
                    end else begin
                        if (LE(K, 64'h404C400000000000)) begin
                            if (LE(Organic_Carbon, 64'h3FF0000008000000)) begin
                                yield_f_reg = 64'h4027666666666666;
                            end else begin
                                yield_f_reg = 64'h4026D70A3D70A3D7;
                            end
                        end else begin
                            if (LE(Wind_Speed, 64'h4031200000000000)) begin
                                if (LE(Pesticide_Used, 64'h401B8A3D74000000)) begin
                                    yield_f_reg = 64'h4025AE147AE147AE;
                                end else begin
                                    yield_f_reg = 64'h4025E147AE147AE1;
                                end
                            end else begin
                                yield_f_reg = 64'h40262E147AE147AE;
                            end
                        end
                    end
                end
            end
        end
    end else begin
        if (LE(Soil_Moisture, 64'h404AB1EB80000000)) begin
            if (LE(Fertilizer_Used, 64'h4073168F60000000)) begin
                if (LE(Rainfall, 64'h40A24D4290000000)) begin
                    if (LE(Wind_Speed, 64'h402C2147A0000000)) begin
                        if (LE(Altitude, 64'h409FF60000000000)) begin
                            if (LE(Temperature, 64'h4031747AE0000000)) begin
                                if (LE(Soil_pH, 64'h401C8F5C20000000)) begin
                                    yield_f_reg = 64'h4028AFC962FC962F;
                                end else begin
                                    yield_f_reg = 64'h4025392C5F92C5F9;
                                end
                            end else begin
                                if (LE(Fertilizer_Used, 64'h407214E140000000)) begin
                                    yield_f_reg = 64'h40248907A22A13BB;
                                end else begin
                                    yield_f_reg = 64'h402660D0860D0860;
                                end
                            end
                        end else begin
                            if (LE(Rainfall, 64'h40A0C74000000000)) begin
                                if (LE(P, 64'h4051200000000000)) begin
                                    yield_f_reg = 64'h4028970A3D70A3D7;
                                end else begin
                                    yield_f_reg = 64'h4029F5C28F5C28F6;
                                end
                            end else begin
                                if (LE(Altitude, 64'h40A0FA0000000000)) begin
                                    yield_f_reg = 64'h4026333333333333;
                                end else begin
                                    yield_f_reg = 64'h4027800000000000;
                                end
                            end
                        end
                    end else begin
                        if (LE(N, 64'h4060500000000000)) begin
                            if (LE(Temperature, 64'h403035C290000000)) begin
                                if (LE(K, 64'h4052C00000000000)) begin
                                    yield_f_reg = 64'h401A666666666666;
                                end else begin
                                    yield_f_reg = 64'h402115C28F5C28F6;
                                end
                            end else begin
                                if (LE(Pesticide_Used, 64'h400AAE1480000000)) begin
                                    yield_f_reg = 64'h402569D0369D0369;
                                end else begin
                                    yield_f_reg = 64'h40229D89D89D89D9;
                                end
                            end
                        end else begin
                            if (LE(Altitude, 64'h408AFC0000000000)) begin
                                if (LE(P, 64'h4052200000000000)) begin
                                    yield_f_reg = 64'h40245C28F5C28F5C;
                                end else begin
                                    yield_f_reg = 64'h40215C28F5C28F5C;
                                end
                            end else begin
                                if (LE(Organic_Carbon, 64'h3FF51EB850000000)) begin
                                    yield_f_reg = 64'h4027FC962FC962FD;
                                end else begin
                                    yield_f_reg = 64'h402587AE147AE148;
                                end
                            end
                        end
                    end
                end else begin
                    if (LE(Soil_Moisture, 64'h4046B0A3E0000000)) begin
                        if (LE(Humidity, 64'h40438B8520000000)) begin
                            if (LE(Soil_pH, 64'h4019800000000000)) begin
                                if (LE(Soil_pH, 64'h40162E1480000000)) begin
                                    yield_f_reg = 64'h4020E147AE147AE1;
                                end else begin
                                    yield_f_reg = 64'h402151EB851EB852;
                                end
                            end else begin
                                if (LE(Wind_Speed, 64'h402A9999A0000000)) begin
                                    yield_f_reg = 64'h4026000000000000;
                                end else begin
                                    yield_f_reg = 64'h40256B851EB851EC;
                                end
                            end
                        end else begin
                            if (LE(Wind_Speed, 64'h4017051EC0000000)) begin
                                if (LE(Humidity, 64'h405363D710000000)) begin
                                    yield_f_reg = 64'h402876B0DF6B0DF6;
                                end else begin
                                    yield_f_reg = 64'h40266E721A54D880;
                                end
                            end else begin
                                if (LE(Organic_Carbon, 64'h3FEE147AE0000000)) begin
                                    yield_f_reg = 64'h402714395810624E;
                                end else begin
                                    yield_f_reg = 64'h402557F18B24BE58;
                                end
                            end
                        end
                    end else begin
                        if (LE(N, 64'h4065700000000000)) begin
                            if (LE(Organic_Carbon, 64'h3FE051EB80000000)) begin
                                if (LE(Wind_Speed, 64'h401CE66660000000)) begin
                                    yield_f_reg = 64'h402881B4E81B4E81;
                                end else begin
                                    yield_f_reg = 64'h40268A3D70A3D70A;
                                end
                            end else begin
                                if (LE(Humidity, 64'h4053719990000000)) begin
                                    yield_f_reg = 64'h402A6147AE147AE0;
                                end else begin
                                    yield_f_reg = 64'h402870A3D70A3D71;
                                end
                            end
                        end else begin
                            if (LE(Organic_Carbon, 64'h3FEBAE1478000000)) begin
                                yield_f_reg = 64'h40276B851EB851EC;
                            end else begin
                                yield_f_reg = 64'h40253D70A3D70A3D;
                            end
                        end
                    end
                end
            end else begin
                if (LE(Rainfall, 64'h40A0863AE0000000)) begin
                    if (LE(Pesticide_Used, 64'h40110F5C30000000)) begin
                        if (LE(Temperature, 64'h40368E1470000000)) begin
                            if (LE(Pesticide_Used, 64'h3FEF5C2900000000)) begin
                                if (LE(Soil_Type, 64'h4000000000000000)) begin
                                    yield_f_reg = 64'h4025BD70A3D70A3D;
                                end else begin
                                    yield_f_reg = 64'h4026947AE147AE14;
                                end
                            end else begin
                                if (LE(Soil_Moisture, 64'h403F347AF0000000)) begin
                                    yield_f_reg = 64'h4027F5C28F5C28F6;
                                end else begin
                                    yield_f_reg = 64'h40272E147AE147AE;
                                end
                            end
                        end else begin
                            if (LE(Soil_Type, 64'h3FF8000000000000)) begin
                                if (LE(Organic_Carbon, 64'h3FF051EB80000000)) begin
                                    yield_f_reg = 64'h402A4CCCCCCCCCCD;
                                end else begin
                                    yield_f_reg = 64'h402B0A3D70A3D70A;
                                end
                            end else begin
                                if (LE(Irrigation_Type, 64'h3FE0000000000000)) begin
                                    yield_f_reg = 64'h402919999999999A;
                                end else begin
                                    yield_f_reg = 64'h402919999999999A;
                                end
                            end
                        end
                    end else begin
                        if (LE(Wind_Speed, 64'h40133851F0000000)) begin
                            if (LE(Temperature, 64'h403F23D700000000)) begin
                                if (LE(N, 64'h4057C00000000000)) begin
                                    yield_f_reg = 64'h402528F5C28F5C29;
                                end else begin
                                    yield_f_reg = 64'h40263F258BF258BF;
                                end
                            end else begin
                                if (LE(Sunlight_Hours, 64'h401A6B8520000000)) begin
                                    yield_f_reg = 64'h4023D1EB851EB852;
                                end else begin
                                    yield_f_reg = 64'h402351EB851EB852;
                                end
                            end
                        end else begin
                            if (LE(Pesticide_Used, 64'h40364147B0000000)) begin
                                if (LE(Pesticide_Used, 64'h402E4F5C20000000)) begin
                                    yield_f_reg = 64'h402755121DEEABB7;
                                end else begin
                                    yield_f_reg = 64'h4025D130463796AD;
                                end
                            end else begin
                                yield_f_reg = 64'h4029CCCCCCCCCCCD;
                            end
                        end
                    end
                end else begin
                    if (LE(Soil_Moisture, 64'h40403A3D70000000)) begin
                        if (LE(Rainfall, 64'h40A3575480000000)) begin
                            if (LE(N, 64'h405E000000000000)) begin
                                if (LE(N, 64'h4057800000000000)) begin
                                    yield_f_reg = 64'h402763D70A3D70A4;
                                end else begin
                                    yield_f_reg = 64'h4028ED3A06D3A06D;
                                end
                            end else begin
                                if (LE(Wind_Speed, 64'h40298CCCC0000000)) begin
                                    yield_f_reg = 64'h402B2147AE147AE2;
                                end else begin
                                    yield_f_reg = 64'h4029E147AE147AE1;
                                end
                            end
                        end else begin
                            if (LE(Organic_Carbon, 64'h3FE07AE148000000)) begin
                                if (LE(Sunlight_Hours, 64'h4024947AE0000000)) begin
                                    yield_f_reg = 64'h402435C28F5C28F6;
                                end else begin
                                    yield_f_reg = 64'h402623D70A3D70A4;
                                end
                            end else begin
                                if (LE(Altitude, 64'h4094FE0000000000)) begin
                                    yield_f_reg = 64'h40275B4E81B4E81B;
                                end else begin
                                    yield_f_reg = 64'h4025A06D3A06D3A0;
                                end
                            end
                        end
                    end else begin
                        if (LE(P, 64'h4051E00000000000)) begin
                            if (LE(Sunlight_Hours, 64'h40203AE140000000)) begin
                                if (LE(Sunlight_Hours, 64'h401C3851E0000000)) begin
                                    yield_f_reg = 64'h40294F13579BE025;
                                end else begin
                                    yield_f_reg = 64'h40281EB851EB851F;
                                end
                            end else begin
                                if (LE(Altitude, 64'h408EFC0000000000)) begin
                                    yield_f_reg = 64'h402CC7AE147AE148;
                                end else begin
                                    yield_f_reg = 64'h402A3AE147AE147C;
                                end
                            end
                        end else begin
                            if (LE(Region, 64'h4008000000000000)) begin
                                if (LE(Soil_pH, 64'h401A23D710000000)) begin
                                    yield_f_reg = 64'h4027A3D70A3D70A4;
                                end else begin
                                    yield_f_reg = 64'h4027570A3D70A3D7;
                                end
                            end else begin
                                yield_f_reg = 64'h40261EB851EB851F;
                            end
                        end
                    end
                end
            end
        end else begin
            if (LE(Fertilizer_Used, 64'h406D34F5D0000000)) begin
                if (LE(Rainfall, 64'h40A1666B80000000)) begin
                    if (LE(Altitude, 64'h4090340000000000)) begin
                        if (LE(Humidity, 64'h4049FB8510000000)) begin
                            if (LE(Season, 64'h3FE0000000000000)) begin
                                yield_f_reg = 64'h4024A8F5C28F5C29;
                            end else begin
                                if (LE(Temperature, 64'h402B70A3D0000000)) begin
                                    yield_f_reg = 64'h4022E147AE147AE1;
                                end else begin
                                    yield_f_reg = 64'h402335C28F5C28F6;
                                end
                            end
                        end else begin
                            if (LE(Rainfall, 64'h409C3C0F60000000)) begin
                                yield_f_reg = 64'h402419999999999A;
                            end else begin
                                if (LE(Altitude, 64'h407E700000000000)) begin
                                    yield_f_reg = 64'h4025A3D70A3D70A4;
                                end else begin
                                    yield_f_reg = 64'h40250CCCCCCCCCCD;
                                end
                            end
                        end
                    end else begin
                        if (LE(P, 64'h4058000000000000)) begin
                            if (LE(Irrigation_Type, 64'h3FF8000000000000)) begin
                                yield_f_reg = 64'h402670A3D70A3D71;
                            end else begin
                                if (LE(Temperature, 64'h4032C3D708000000)) begin
                                    yield_f_reg = 64'h4027B851EB851EB8;
                                end else begin
                                    yield_f_reg = 64'h402747AE147AE148;
                                end
                            end
                        end else begin
                            yield_f_reg = 64'h40297AE147AE147B;
                        end
                    end
                end else begin
                    if (LE(Soil_pH, 64'h4016A8F5C0000000)) begin
                        if (LE(P, 64'h404E400000000000)) begin
                            yield_f_reg = 64'h402B947AE147AE14;
                        end else begin
                            yield_f_reg = 64'h402A000000000000;
                        end
                    end else begin
                        if (LE(P, 64'h4046800000000000)) begin
                            if (LE(Soil_pH, 64'h401A851EC0000000)) begin
                                if (LE(Altitude, 64'h4093F00000000000)) begin
                                    yield_f_reg = 64'h4027AE147AE147AE;
                                end else begin
                                    yield_f_reg = 64'h40276147AE147AE1;
                                end
                            end else begin
                                if (LE(Soil_pH, 64'h401CF5C290000000)) begin
                                    yield_f_reg = 64'h4029BD70A3D70A3D;
                                end else begin
                                    yield_f_reg = 64'h402899999999999A;
                                end
                            end
                        end else begin
                            if (LE(Rainfall, 64'h40A2472660000000)) begin
                                if (LE(Irrigation_Type, 64'h3FF8000000000000)) begin
                                    yield_f_reg = 64'h402751EB851EB852;
                                end else begin
                                    yield_f_reg = 64'h4027F0A3D70A3D71;
                                end
                            end else begin
                                if (LE(Humidity, 64'h40429AE140000000)) begin
                                    yield_f_reg = 64'h4026000000000000;
                                end else begin
                                    yield_f_reg = 64'h40265C28F5C28F5C;
                                end
                            end
                        end
                    end
                end
            end else begin
                if (LE(N, 64'h405BE00000000000)) begin
                    if (LE(Temperature, 64'h402763D700000000)) begin
                        if (LE(Season, 64'h3FF8000000000000)) begin
                            yield_f_reg = 64'h402F333333333333;
                        end else begin
                            yield_f_reg = 64'h402AFAE147AE147B;
                        end
                    end else begin
                        if (LE(Altitude, 64'h409D0E0000000000)) begin
                            if (LE(Sunlight_Hours, 64'h401575C290000000)) begin
                                if (LE(Organic_Carbon, 64'h3FF6A3D710000000)) begin
                                    yield_f_reg = 64'h40257AE147AE147B;
                                end else begin
                                    yield_f_reg = 64'h402499999999999A;
                                end
                            end else begin
                                if (LE(Rainfall, 64'h40A25DB330000000)) begin
                                    yield_f_reg = 64'h4027487D09297FBB;
                                end else begin
                                    yield_f_reg = 64'h4028CD5E6F8091A2;
                                end
                            end
                        end else begin
                            if (LE(N, 64'h4049400000000000)) begin
                                yield_f_reg = 64'h402847AE147AE148;
                            end else begin
                                if (LE(Soil_pH, 64'h401C6B8520000000)) begin
                                    yield_f_reg = 64'h402AB33333333333;
                                end else begin
                                    yield_f_reg = 64'h402B666666666666;
                                end
                            end
                        end
                    end
                end else begin
                    if (LE(Rainfall, 64'h40A1E1F340000000)) begin
                        if (LE(Rainfall, 64'h409EAF0000000000)) begin
                            if (LE(Wind_Speed, 64'h40319999A0000000)) begin
                                if (LE(Sunlight_Hours, 64'h40144CCCD0000000)) begin
                                    yield_f_reg = 64'h40298CCCCCCCCCCD;
                                end else begin
                                    yield_f_reg = 64'h4027F40DA740DA75;
                                end
                            end else begin
                                yield_f_reg = 64'h402B3851EB851EB8;
                            end
                        end else begin
                            if (LE(Fertilizer_Used, 64'h4070413330000000)) begin
                                yield_f_reg = 64'h40280A3D70A3D70A;
                            end else begin
                                if (LE(Fertilizer_Used, 64'h4072AC6670000000)) begin
                                    yield_f_reg = 64'h402AD0369D0369D0;
                                end else begin
                                    yield_f_reg = 64'h4029BEB851EB851F;
                                end
                            end
                        end
                    end else begin
                        if (LE(Temperature, 64'h403E15C280000000)) begin
                            if (LE(Altitude, 64'h4055800000000000)) begin
                                yield_f_reg = 64'h402B99999999999A;
                            end else begin
                                if (LE(Soil_pH, 64'h401CDC28F0000000)) begin
                                    yield_f_reg = 64'h402A49BA5E353F7D;
                                end else begin
                                    yield_f_reg = 64'h402991EB851EB852;
                                end
                            end
                        end else begin
                            if (LE(Organic_Carbon, 64'h3FECCCCCC0000000)) begin
                                if (LE(Altitude, 64'h409B960000000000)) begin
                                    yield_f_reg = 64'h402D68F5C28F5C29;
                                end else begin
                                    yield_f_reg = 64'h402BE4B17E4B17E4;
                                end
                            end else begin
                                if (LE(Altitude, 64'h4097640000000000)) begin
                                    yield_f_reg = 64'h402E51EB851EB852;
                                end else begin
                                    yield_f_reg = 64'h402F1EB851EB851F;
                                end
                            end
                        end
                    end
                end
            end
        end
    end
end
