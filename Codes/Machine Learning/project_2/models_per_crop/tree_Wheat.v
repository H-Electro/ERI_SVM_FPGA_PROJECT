if (LE(Fertilizer_Used, 64'h406B3EB850000000)) begin
    if (LE(Rainfall, 64'h40991F1480000000)) begin
        if (LE(Fertilizer_Used, 64'h40622570A0000000)) begin
            if (LE(N, 64'h4059C00000000000)) begin
                if (LE(Soil_Moisture, 64'h403447AE10000000)) begin
                    if (LE(Rainfall, 64'h4087B151E0000000)) begin
                        if (LE(Season, 64'h3FF8000000000000)) begin
                            if (LE(Altitude, 64'h4092300000000000)) begin
                                if (LE(Irrigation_Type, 64'h3FF0000000000000)) begin
                                    yield_f_reg = 64'h4014000000000000;
                                end else begin
                                    yield_f_reg = 64'h4013E147AE147AE1;
                                end
                            end else begin
                                if (LE(K, 64'h4056400000000000)) begin
                                    yield_f_reg = 64'h4011F5C28F5C28F6;
                                end else begin
                                    yield_f_reg = 64'h40108F5C28F5C28F;
                                end
                            end
                        end else begin
                            if (LE(Fertilizer_Used, 64'h4058EC2900000000)) begin
                                yield_f_reg = 64'h4018333333333333;
                            end else begin
                                yield_f_reg = 64'h4017EB851EB851EC;
                            end
                        end
                    end else begin
                        if (LE(Soil_pH, 64'h401A3D70A0000000)) begin
                            if (LE(Organic_Carbon, 64'h3FEA147AE0000000)) begin
                                yield_f_reg = 64'h4018CCCCCCCCCCCD;
                            end else begin
                                if (LE(Irrigation_Type, 64'h4004000000000000)) begin
                                    yield_f_reg = 64'h40170A3D70A3D70A;
                                end else begin
                                    yield_f_reg = 64'h4017B851EB851EB8;
                                end
                            end
                        end else begin
                            if (LE(Soil_Moisture, 64'h4032E3D710000000)) begin
                                if (LE(Pesticide_Used, 64'h4037F0A3D0000000)) begin
                                    yield_f_reg = 64'h401C428F5C28F5C2;
                                end else begin
                                    yield_f_reg = 64'h401C51EB851EB852;
                                end
                            end else begin
                                if (LE(Fertilizer_Used, 64'h4057E61480000000)) begin
                                    yield_f_reg = 64'h401B99999999999A;
                                end else begin
                                    yield_f_reg = 64'h401AD70A3D70A3D7;
                                end
                            end
                        end
                    end
                end else begin
                    if (LE(Soil_pH, 64'h401FD1EB80000000)) begin
                        if (LE(Fertilizer_Used, 64'h405A37AE10000000)) begin
                            if (LE(Temperature, 64'h4037347AE0000000)) begin
                                if (LE(Organic_Carbon, 64'h3FE7333330000000)) begin
                                    yield_f_reg = 64'h401951EB851EB852;
                                end else begin
                                    yield_f_reg = 64'h401D3E147AE147AE;
                                end
                            end else begin
                                if (LE(P, 64'h404D400000000000)) begin
                                    yield_f_reg = 64'h40172E147AE147AE;
                                end else begin
                                    yield_f_reg = 64'h401ADBB1CDBB1CDD;
                                end
                            end
                        end else begin
                            if (LE(Humidity, 64'h4054923D70000000)) begin
                                if (LE(N, 64'h4055E00000000000)) begin
                                    yield_f_reg = 64'h401EECB398064D31;
                                end else begin
                                    yield_f_reg = 64'h401A5C28F5C28F5D;
                                end
                            end else begin
                                if (LE(P, 64'h4053600000000000)) begin
                                    yield_f_reg = 64'h40196147AE147AE3;
                                end else begin
                                    yield_f_reg = 64'h4013B851EB851EB8;
                                end
                            end
                        end
                    end else begin
                        if (LE(Wind_Speed, 64'h4028E147A0000000)) begin
                            if (LE(Soil_Type, 64'h4000000000000000)) begin
                                if (LE(Humidity, 64'h40501A8F60000000)) begin
                                    yield_f_reg = 64'h401823D70A3D70A4;
                                end else begin
                                    yield_f_reg = 64'h40175C28F5C28F5C;
                                end
                            end else begin
                                yield_f_reg = 64'h401A51EB851EB852;
                            end
                        end else begin
                            if (LE(Soil_Moisture, 64'h404671EB80000000)) begin
                                if (LE(Soil_Type, 64'h4000000000000000)) begin
                                    yield_f_reg = 64'h4012B851EB851EB8;
                                end else begin
                                    yield_f_reg = 64'h401347AE147AE148;
                                end
                            end else begin
                                yield_f_reg = 64'h4015147AE147AE14;
                            end
                        end
                    end
                end
            end else begin
                if (LE(Soil_Moisture, 64'h40439E1480000000)) begin
                    if (LE(Humidity, 64'h405656B850000000)) begin
                        if (LE(Wind_Speed, 64'h40311D70A0000000)) begin
                            if (LE(Soil_pH, 64'h4017333330000000)) begin
                                if (LE(Organic_Carbon, 64'h3FF4E147B0000000)) begin
                                    yield_f_reg = 64'h4017916872B020C5;
                                end else begin
                                    yield_f_reg = 64'h401B851EB851EB85;
                                end
                            end else begin
                                if (LE(N, 64'h4060200000000000)) begin
                                    yield_f_reg = 64'h401A9A87E9A87E9A;
                                end else begin
                                    yield_f_reg = 64'h401DCB564EFE8982;
                                end
                            end
                        end else begin
                            if (LE(Temperature, 64'h403EB1EB80000000)) begin
                                yield_f_reg = 64'h4010AE147AE147AE;
                            end else begin
                                yield_f_reg = 64'h4018F5C28F5C28F6;
                            end
                        end
                    end else begin
                        yield_f_reg = 64'h4023147AE147AE14;
                    end
                end else begin
                    if (LE(Soil_pH, 64'h40168A3D70000000)) begin
                        if (LE(Sunlight_Hours, 64'h40241EB850000000)) begin
                            if (LE(Fertilizer_Used, 64'h405ED51EB0000000)) begin
                                if (LE(Soil_Moisture, 64'h404FA999A0000000)) begin
                                    yield_f_reg = 64'h401A30A3D70A3D71;
                                end else begin
                                    yield_f_reg = 64'h40145C28F5C28F5C;
                                end
                            end else begin
                                if (LE(Soil_Moisture, 64'h404D7999A0000000)) begin
                                    yield_f_reg = 64'h401C62FC962FC963;
                                end else begin
                                    yield_f_reg = 64'h4020800000000000;
                                end
                            end
                        end else begin
                            if (LE(Temperature, 64'h4041E47AE0000000)) begin
                                yield_f_reg = 64'h40215C28F5C28F5C;
                            end else begin
                                yield_f_reg = 64'h4021000000000000;
                            end
                        end
                    end else begin
                        if (LE(Soil_pH, 64'h4019B33330000000)) begin
                            if (LE(Rainfall, 64'h408B06E150000000)) begin
                                if (LE(Soil_Moisture, 64'h404A08F5C0000000)) begin
                                    yield_f_reg = 64'h40209EB851EB851F;
                                end else begin
                                    yield_f_reg = 64'h401F428F5C28F5C3;
                                end
                            end else begin
                                if (LE(Altitude, 64'h4088F00000000000)) begin
                                    yield_f_reg = 64'h4021F33333333333;
                                end else begin
                                    yield_f_reg = 64'h4023E81B4E81B4E8;
                                end
                            end
                        end else begin
                            if (LE(Humidity, 64'h40512D1EB0000000)) begin
                                if (LE(N, 64'h4063B00000000000)) begin
                                    yield_f_reg = 64'h401FC760FA942DC8;
                                end else begin
                                    yield_f_reg = 64'h402201B4E81B4E83;
                                end
                            end else begin
                                if (LE(Wind_Speed, 64'h402D1EB860000000)) begin
                                    yield_f_reg = 64'h401DCF97BCF97BD0;
                                end else begin
                                    yield_f_reg = 64'h40197AE147AE147B;
                                end
                            end
                        end
                    end
                end
            end
        end else begin
            if (LE(Rainfall, 64'h408DFFF5C0000000)) begin
                if (LE(Soil_Moisture, 64'h40471147B0000000)) begin
                    if (LE(Soil_pH, 64'h401E1999A0000000)) begin
                        if (LE(K, 64'h4061D00000000000)) begin
                            if (LE(Fertilizer_Used, 64'h4069A7AE20000000)) begin
                                if (LE(Humidity, 64'h4053533330000000)) begin
                                    yield_f_reg = 64'h401DCF714CF714CF;
                                end else begin
                                    yield_f_reg = 64'h402055E6F8091A2B;
                                end
                            end else begin
                                if (LE(Fertilizer_Used, 64'h406A71EB90000000)) begin
                                    yield_f_reg = 64'h40191B4E81B4E81C;
                                end else begin
                                    yield_f_reg = 64'h401A76C8B4395810;
                                end
                            end
                        end else begin
                            yield_f_reg = 64'h401170A3D70A3D71;
                        end
                    end else begin
                        if (LE(Soil_Moisture, 64'h403927AE10000000)) begin
                            if (LE(Pesticide_Used, 64'h402D051EB0000000)) begin
                                if (LE(Irrigation_Type, 64'h3FF0000000000000)) begin
                                    yield_f_reg = 64'h4013B851EB851EB8;
                                end else begin
                                    yield_f_reg = 64'h4015A3D70A3D70A4;
                                end
                            end else begin
                                if (LE(Wind_Speed, 64'h4023A3D710000000)) begin
                                    yield_f_reg = 64'h40185C28F5C28F5C;
                                end else begin
                                    yield_f_reg = 64'h4016B33333333333;
                                end
                            end
                        end else begin
                            if (LE(Wind_Speed, 64'h4030CA3D70000000)) begin
                                if (LE(Pesticide_Used, 64'h40334147B0000000)) begin
                                    yield_f_reg = 64'h401AE66666666665;
                                end else begin
                                    yield_f_reg = 64'h401E851EB851EB85;
                                end
                            end else begin
                                yield_f_reg = 64'h4015AE147AE147AE;
                            end
                        end
                    end
                end else begin
                    if (LE(K, 64'h4036000000000000)) begin
                        yield_f_reg = 64'h4015C28F5C28F5C3;
                    end else begin
                        if (LE(Wind_Speed, 64'h40214A3D70000000)) begin
                            if (LE(Humidity, 64'h4048C147B0000000)) begin
                                if (LE(P, 64'h4040800000000000)) begin
                                    yield_f_reg = 64'h4021B17E4B17E4B1;
                                end else begin
                                    yield_f_reg = 64'h40239851EB851EB9;
                                end
                            end else begin
                                if (LE(Wind_Speed, 64'h40178F5C20000000)) begin
                                    yield_f_reg = 64'h401F962FC962FC95;
                                end else begin
                                    yield_f_reg = 64'h4020D70A3D70A3D7;
                                end
                            end
                        end else begin
                            if (LE(P, 64'h4051A00000000000)) begin
                                if (LE(Temperature, 64'h4040466660000000)) begin
                                    yield_f_reg = 64'h401ED851EB851EB9;
                                end else begin
                                    yield_f_reg = 64'h401B000000000000;
                                end
                            end else begin
                                if (LE(P, 64'h4053800000000000)) begin
                                    yield_f_reg = 64'h4023CCCCCCCCCCCD;
                                end else begin
                                    yield_f_reg = 64'h40203BBBBBBBBBBC;
                                end
                            end
                        end
                    end
                end
            end else begin
                if (LE(Wind_Speed, 64'h4012BD70A0000000)) begin
                    if (LE(Organic_Carbon, 64'h3FE2E147B0000000)) begin
                        if (LE(Humidity, 64'h4050170A38000000)) begin
                            if (LE(Temperature, 64'h403B90A3D0000000)) begin
                                if (LE(Organic_Carbon, 64'h3FD4CCCCD0000000)) begin
                                    yield_f_reg = 64'h4025570A3D70A3D7;
                                end else begin
                                    yield_f_reg = 64'h4025A8F5C28F5C29;
                                end
                            end else begin
                                yield_f_reg = 64'h402475C28F5C28F6;
                            end
                        end else begin
                            yield_f_reg = 64'h4028F0A3D70A3D71;
                        end
                    end else begin
                        if (LE(N, 64'h405AE00000000000)) begin
                            if (LE(Pesticide_Used, 64'h40247AE150000000)) begin
                                if (LE(Organic_Carbon, 64'h3FED1EB850000000)) begin
                                    yield_f_reg = 64'h402307AE147AE148;
                                end else begin
                                    yield_f_reg = 64'h4021AE147AE147AE;
                                end
                            end else begin
                                if (LE(Soil_Moisture, 64'h4045C33330000000)) begin
                                    yield_f_reg = 64'h40250A3D70A3D70A;
                                end else begin
                                    yield_f_reg = 64'h402407AE147AE148;
                                end
                            end
                        end else begin
                            if (LE(Fertilizer_Used, 64'h4066573330000000)) begin
                                if (LE(Soil_Moisture, 64'h4044599990000000)) begin
                                    yield_f_reg = 64'h40223D70A3D70A3D;
                                end else begin
                                    yield_f_reg = 64'h402119999999999A;
                                end
                            end else begin
                                if (LE(Temperature, 64'h40337851F0000000)) begin
                                    yield_f_reg = 64'h401ECCCCCCCCCCCD;
                                end else begin
                                    yield_f_reg = 64'h401FAE147AE147AE;
                                end
                            end
                        end
                    end
                end else begin
                    if (LE(N, 64'h4060D00000000000)) begin
                        if (LE(Soil_Moisture, 64'h404B4A3D70000000)) begin
                            if (LE(Rainfall, 64'h4097DF8A30000000)) begin
                                if (LE(Soil_pH, 64'h4016CCCCD0000000)) begin
                                    yield_f_reg = 64'h401BB4395810624D;
                                end else begin
                                    yield_f_reg = 64'h40202978D4FDF3B6;
                                end
                            end else begin
                                if (LE(Soil_Type, 64'h3FF0000000000000)) begin
                                    yield_f_reg = 64'h401C851EB851EB85;
                                end else begin
                                    yield_f_reg = 64'h401723D70A3D70A4;
                                end
                            end
                        end else begin
                            if (LE(P, 64'h404C800000000000)) begin
                                if (LE(Irrigation_Type, 64'h4000000000000000)) begin
                                    yield_f_reg = 64'h4020BF258BF258BF;
                                end else begin
                                    yield_f_reg = 64'h401F1EB851EB851F;
                                end
                            end else begin
                                if (LE(Season, 64'h3FF8000000000000)) begin
                                    yield_f_reg = 64'h4023133333333334;
                                end else begin
                                    yield_f_reg = 64'h4022028F5C28F5C2;
                                end
                            end
                        end
                    end else begin
                        if (LE(Temperature, 64'h4031370A30000000)) begin
                            if (LE(Organic_Carbon, 64'h3FE5C28F50000000)) begin
                                yield_f_reg = 64'h4023851EB851EB85;
                            end else begin
                                if (LE(Humidity, 64'h40474EB850000000)) begin
                                    yield_f_reg = 64'h401B333333333333;
                                end else begin
                                    yield_f_reg = 64'h40205D70A3D70A3E;
                                end
                            end
                        end else begin
                            if (LE(Humidity, 64'h4052580000000000)) begin
                                if (LE(Temperature, 64'h403E5C28F0000000)) begin
                                    yield_f_reg = 64'h4023451EB851EB85;
                                end else begin
                                    yield_f_reg = 64'h40262E147AE147AE;
                                end
                            end else begin
                                if (LE(Humidity, 64'h40556570B0000000)) begin
                                    yield_f_reg = 64'h4021DF92C5F92C5F;
                                end else begin
                                    yield_f_reg = 64'h401F666666666666;
                                end
                            end
                        end
                    end
                end
            end
        end
    end else begin
        if (LE(Soil_Moisture, 64'h4040047AE0000000)) begin
            if (LE(Fertilizer_Used, 64'h4054099990000000)) begin
                if (LE(Soil_pH, 64'h401575C290000000)) begin
                    if (LE(Altitude, 64'h40901A0000000000)) begin
                        yield_f_reg = 64'h4012B851EB851EB8;
                    end else begin
                        if (LE(Altitude, 64'h409D040000000000)) begin
                            yield_f_reg = 64'h40130A3D70A3D70A;
                        end else begin
                            yield_f_reg = 64'h4012F5C28F5C28F6;
                        end
                    end
                end else begin
                    if (LE(K, 64'h403B800000000000)) begin
                        if (LE(Organic_Carbon, 64'h3FE9EB8520000000)) begin
                            yield_f_reg = 64'h40168F5C28F5C28F;
                        end else begin
                            yield_f_reg = 64'h4014D70A3D70A3D7;
                        end
                    end else begin
                        if (LE(Humidity, 64'h40509FAE10000000)) begin
                            if (LE(Humidity, 64'h4045E66670000000)) begin
                                if (LE(Humidity, 64'h4044570A40000000)) begin
                                    yield_f_reg = 64'h401D111111111111;
                                end else begin
                                    yield_f_reg = 64'h401C47AE147AE148;
                                end
                            end else begin
                                if (LE(Organic_Carbon, 64'h3FF8666670000000)) begin
                                    yield_f_reg = 64'h401A4BC6A7EF9DB2;
                                end else begin
                                    yield_f_reg = 64'h401DB851EB851EB8;
                                end
                            end
                        end else begin
                            if (LE(Irrigation_Type, 64'h3FF0000000000000)) begin
                                yield_f_reg = 64'h401F3D70A3D70A3D;
                            end else begin
                                if (LE(Sunlight_Hours, 64'h402223D700000000)) begin
                                    yield_f_reg = 64'h401DD70A3D70A3D7;
                                end else begin
                                    yield_f_reg = 64'h401DC28F5C28F5C3;
                                end
                            end
                        end
                    end
                end
            end else begin
                if (LE(Irrigation_Type, 64'h3FF8000000000000)) begin
                    if (LE(K, 64'h4053800000000000)) begin
                        if (LE(Soil_pH, 64'h401E4CCCD0000000)) begin
                            if (LE(Soil_Moisture, 64'h403D6F5C30000000)) begin
                                if (LE(K, 64'h403F800000000000)) begin
                                    yield_f_reg = 64'h401BE147AE147AE1;
                                end else begin
                                    yield_f_reg = 64'h402062608C6F2D5A;
                                end
                            end else begin
                                if (LE(P, 64'h4047000000000000)) begin
                                    yield_f_reg = 64'h401B000000000000;
                                end else begin
                                    yield_f_reg = 64'h4018AE147AE147AE;
                                end
                            end
                        end else begin
                            if (LE(P, 64'h403A000000000000)) begin
                                yield_f_reg = 64'h4016000000000000;
                            end else begin
                                if (LE(Humidity, 64'h4054CF0A30000000)) begin
                                    yield_f_reg = 64'h40185F92C5F92C60;
                                end else begin
                                    yield_f_reg = 64'h401A333333333333;
                                end
                            end
                        end
                    end else begin
                        if (LE(Rainfall, 64'h40A3835C20000000)) begin
                            if (LE(Soil_pH, 64'h401CF0A3E0000000)) begin
                                if (LE(Soil_Moisture, 64'h4036EF5C30000000)) begin
                                    yield_f_reg = 64'h4021F3B645A1CAC1;
                                end else begin
                                    yield_f_reg = 64'h402024FA4FA4FA4F;
                                end
                            end else begin
                                if (LE(Organic_Carbon, 64'h3FF370A3D0000000)) begin
                                    yield_f_reg = 64'h401B721A54D880BD;
                                end else begin
                                    yield_f_reg = 64'h4020F33333333333;
                                end
                            end
                        end else begin
                            if (LE(P, 64'h4054E00000000000)) begin
                                if (LE(Soil_Moisture, 64'h4038BC28F0000000)) begin
                                    yield_f_reg = 64'h40225B4E81B4E81C;
                                end else begin
                                    yield_f_reg = 64'h40250F5C28F5C28F;
                                end
                            end else begin
                                yield_f_reg = 64'h401C7AE147AE147B;
                            end
                        end
                    end
                end else begin
                    if (LE(Soil_pH, 64'h40154CCCC0000000)) begin
                        if (LE(Organic_Carbon, 64'h3FF0E147B0000000)) begin
                            if (LE(Soil_Moisture, 64'h4039E3D710000000)) begin
                                if (LE(Fertilizer_Used, 64'h4065691EC0000000)) begin
                                    yield_f_reg = 64'h40209EB851EB851F;
                                end else begin
                                    yield_f_reg = 64'h40210F5C28F5C28F;
                                end
                            end else begin
                                yield_f_reg = 64'h401F7AE147AE147B;
                            end
                        end else begin
                            if (LE(Humidity, 64'h40523199A0000000)) begin
                                yield_f_reg = 64'h401C3D70A3D70A3D;
                            end else begin
                                if (LE(Region, 64'h4000000000000000)) begin
                                    yield_f_reg = 64'h4016B851EB851EB8;
                                end else begin
                                    yield_f_reg = 64'h4019000000000000;
                                end
                            end
                        end
                    end else begin
                        if (LE(Fertilizer_Used, 64'h405B4147A0000000)) begin
                            if (LE(Temperature, 64'h403A3C28F0000000)) begin
                                if (LE(Temperature, 64'h4030600000000000)) begin
                                    yield_f_reg = 64'h4019E66666666666;
                                end else begin
                                    yield_f_reg = 64'h401ED70A3D70A3D7;
                                end
                            end else begin
                                if (LE(Humidity, 64'h404D03D700000000)) begin
                                    yield_f_reg = 64'h4023C28F5C28F5C3;
                                end else begin
                                    yield_f_reg = 64'h40212B851EB851EC;
                                end
                            end
                        end else begin
                            if (LE(Pesticide_Used, 64'h4037599990000000)) begin
                                if (LE(K, 64'h404EC00000000000)) begin
                                    yield_f_reg = 64'h40230A3D70A3D70A;
                                end else begin
                                    yield_f_reg = 64'h402168CA11BFD44F;
                                end
                            end else begin
                                if (LE(Soil_Type, 64'h4004000000000000)) begin
                                    yield_f_reg = 64'h40246B851EB851EC;
                                end else begin
                                    yield_f_reg = 64'h4024EB851EB851EC;
                                end
                            end
                        end
                    end
                end
            end
        end else begin
            if (LE(Fertilizer_Used, 64'h40614547B0000000)) begin
                if (LE(Wind_Speed, 64'h400C147AE0000000)) begin
                    if (LE(Humidity, 64'h40540D70A0000000)) begin
                        if (LE(Soil_pH, 64'h401651EB90000000)) begin
                            if (LE(Soil_Moisture, 64'h4045DB8520000000)) begin
                                yield_f_reg = 64'h4022DC28F5C28F5C;
                            end else begin
                                if (LE(Sunlight_Hours, 64'h4019800000000000)) begin
                                    yield_f_reg = 64'h40216B851EB851EC;
                                end else begin
                                    yield_f_reg = 64'h402099999999999A;
                                end
                            end
                        end else begin
                            if (LE(Rainfall, 64'h40A59675C0000000)) begin
                                if (LE(Sunlight_Hours, 64'h4022028F60000000)) begin
                                    yield_f_reg = 64'h4023AD262AD262AE;
                                end else begin
                                    yield_f_reg = 64'h4024C00000000000;
                                end
                            end else begin
                                yield_f_reg = 64'h4026000000000000;
                            end
                        end
                    end else begin
                        if (LE(Pesticide_Used, 64'h402B147AE0000000)) begin
                            yield_f_reg = 64'h40200F5C28F5C28F;
                        end else begin
                            yield_f_reg = 64'h401C7AE147AE147B;
                        end
                    end
                end else begin
                    if (LE(Temperature, 64'h4027851EC0000000)) begin
                        if (LE(Rainfall, 64'h409F2019A0000000)) begin
                            if (LE(N, 64'h4056C00000000000)) begin
                                yield_f_reg = 64'h4024A8F5C28F5C29;
                            end else begin
                                if (LE(Humidity, 64'h40502DC298000000)) begin
                                    yield_f_reg = 64'h4024428F5C28F5C3;
                                end else begin
                                    yield_f_reg = 64'h402447AE147AE148;
                                end
                            end
                        end else begin
                            if (LE(Soil_Type, 64'h3FF8000000000000)) begin
                                yield_f_reg = 64'h4022000000000000;
                            end else begin
                                yield_f_reg = 64'h402323D70A3D70A4;
                            end
                        end
                    end else begin
                        if (LE(Soil_Moisture, 64'h4049128F60000000)) begin
                            if (LE(Fertilizer_Used, 64'h405AF1EB80000000)) begin
                                if (LE(P, 64'h4058200000000000)) begin
                                    yield_f_reg = 64'h401E828F5C28F5C3;
                                end else begin
                                    yield_f_reg = 64'h40141EB851EB851F;
                                end
                            end else begin
                                if (LE(K, 64'h4049400000000000)) begin
                                    yield_f_reg = 64'h401D645A1CAC0832;
                                end else begin
                                    yield_f_reg = 64'h40218C7751798B5B;
                                end
                            end
                        end else begin
                            if (LE(Altitude, 64'h407F800000000000)) begin
                                if (LE(Season, 64'h3FE0000000000000)) begin
                                    yield_f_reg = 64'h4024666666666666;
                                end else begin
                                    yield_f_reg = 64'h4021EB851EB851EB;
                                end
                            end else begin
                                if (LE(Humidity, 64'h4047199990000000)) begin
                                    yield_f_reg = 64'h4022651EB851EB85;
                                end else begin
                                    yield_f_reg = 64'h401FFC46BFC46BFC;
                                end
                            end
                        end
                    end
                end
            end else begin
                if (LE(Soil_pH, 64'h4015051EC0000000)) begin
                    if (LE(Altitude, 64'h40959C0000000000)) begin
                        if (LE(Temperature, 64'h402E9C2900000000)) begin
                            if (LE(Altitude, 64'h4078700000000000)) begin
                                yield_f_reg = 64'h401C666666666666;
                            end else begin
                                yield_f_reg = 64'h401951EB851EB852;
                            end
                        end else begin
                            if (LE(P, 64'h4050A00000000000)) begin
                                if (LE(Humidity, 64'h404F38F5C0000000)) begin
                                    yield_f_reg = 64'h401D51EB851EB852;
                                end else begin
                                    yield_f_reg = 64'h401F9EB851EB851E;
                                end
                            end else begin
                                yield_f_reg = 64'h4021333333333333;
                            end
                        end
                    end else begin
                        if (LE(Fertilizer_Used, 64'h406611EB80000000)) begin
                            yield_f_reg = 64'h4020FAE147AE147B;
                        end else begin
                            if (LE(Pesticide_Used, 64'h4033F70A40000000)) begin
                                yield_f_reg = 64'h40226147AE147AE1;
                            end else begin
                                yield_f_reg = 64'h40223D70A3D70A3D;
                            end
                        end
                    end
                end else begin
                    if (LE(Soil_pH, 64'h401CA3D710000000)) begin
                        if (LE(Soil_pH, 64'h4017051EC0000000)) begin
                            if (LE(Fertilizer_Used, 64'h40630170A0000000)) begin
                                if (LE(Irrigation_Type, 64'h3FF0000000000000)) begin
                                    yield_f_reg = 64'h40238A3D70A3D70A;
                                end else begin
                                    yield_f_reg = 64'h402591EB851EB852;
                                end
                            end else begin
                                if (LE(Fertilizer_Used, 64'h40666C2900000000)) begin
                                    yield_f_reg = 64'h40210A3D70A3D70A;
                                end else begin
                                    yield_f_reg = 64'h40231A485CD7B901;
                                end
                            end
                        end else begin
                            if (LE(Fertilizer_Used, 64'h40691199A0000000)) begin
                                if (LE(K, 64'h4051600000000000)) begin
                                    yield_f_reg = 64'h4022C51EB851EB84;
                                end else begin
                                    yield_f_reg = 64'h4024469D0369D038;
                                end
                            end else begin
                                if (LE(N, 64'h4057A00000000000)) begin
                                    yield_f_reg = 64'h40281C28F5C28F5C;
                                end else begin
                                    yield_f_reg = 64'h40256A3D70A3D70A;
                                end
                            end
                        end
                    end else begin
                        if (LE(Wind_Speed, 64'h3FF8F5C290000000)) begin
                            if (LE(Fertilizer_Used, 64'h40667AE140000000)) begin
                                yield_f_reg = 64'h402223D70A3D70A4;
                            end else begin
                                if (LE(Sunlight_Hours, 64'h4020B5C288000000)) begin
                                    yield_f_reg = 64'h40254CCCCCCCCCCD;
                                end else begin
                                    yield_f_reg = 64'h4026947AE147AE14;
                                end
                            end
                        end else begin
                            if (LE(Altitude, 64'h4084B40000000000)) begin
                                if (LE(Soil_pH, 64'h401DF5C290000000)) begin
                                    yield_f_reg = 64'h402510A3D70A3D70;
                                end else begin
                                    yield_f_reg = 64'h4021792C5F92C5F9;
                                end
                            end else begin
                                if (LE(Organic_Carbon, 64'h3FF4A3D700000000)) begin
                                    yield_f_reg = 64'h4020451EB851EB85;
                                end else begin
                                    yield_f_reg = 64'h4021D78D4FDF3B63;
                                end
                            end
                        end
                    end
                end
            end
        end
    end
end else begin
    if (LE(Rainfall, 64'h409BBC6670000000)) begin
        if (LE(Soil_Moisture, 64'h404AAB8520000000)) begin
            if (LE(Rainfall, 64'h408FC48F50000000)) begin
                if (LE(Fertilizer_Used, 64'h4071E98520000000)) begin
                    if (LE(Wind_Speed, 64'h4028F0A3E0000000)) begin
                        if (LE(Sunlight_Hours, 64'h4023A3D710000000)) begin
                            if (LE(Organic_Carbon, 64'h3FDB851EC0000000)) begin
                                if (LE(P, 64'h404FC00000000000)) begin
                                    yield_f_reg = 64'h401E000000000000;
                                end else begin
                                    yield_f_reg = 64'h401ACCCCCCCCCCCC;
                                end
                            end else begin
                                if (LE(Region, 64'h3FE0000000000000)) begin
                                    yield_f_reg = 64'h40227A4FA4FA4FA5;
                                end else begin
                                    yield_f_reg = 64'h4020CA1E3B7D516F;
                                end
                            end
                        end else begin
                            if (LE(Rainfall, 64'h407BBF70A0000000)) begin
                                if (LE(Soil_Moisture, 64'h403B2B8520000000)) begin
                                    yield_f_reg = 64'h401BAE147AE147AE;
                                end else begin
                                    yield_f_reg = 64'h4018666666666666;
                                end
                            end else begin
                                if (LE(Soil_Moisture, 64'h403CE51EB0000000)) begin
                                    yield_f_reg = 64'h40203851EB851EB8;
                                end else begin
                                    yield_f_reg = 64'h401E333333333333;
                                end
                            end
                        end
                    end else begin
                        if (LE(Soil_Moisture, 64'h4032D851E0000000)) begin
                            yield_f_reg = 64'h4013333333333333;
                        end else begin
                            if (LE(Soil_pH, 64'h40186B8520000000)) begin
                                if (LE(Wind_Speed, 64'h402CCF5C30000000)) begin
                                    yield_f_reg = 64'h401D0DA740DA740D;
                                end else begin
                                    yield_f_reg = 64'h401A30A3D70A3D71;
                                end
                            end else begin
                                if (LE(N, 64'h4059200000000000)) begin
                                    yield_f_reg = 64'h401CCA3D70A3D70B;
                                end else begin
                                    yield_f_reg = 64'h40207F7CED916873;
                                end
                            end
                        end
                    end
                end else begin
                    if (LE(Rainfall, 64'h408B080A40000000)) begin
                        if (LE(Soil_Moisture, 64'h40464EB860000000)) begin
                            if (LE(Temperature, 64'h4036C8F5C0000000)) begin
                                if (LE(Altitude, 64'h409FDC0000000000)) begin
                                    yield_f_reg = 64'h40208F13579BE024;
                                end else begin
                                    yield_f_reg = 64'h4018A3D70A3D70A4;
                                end
                            end else begin
                                if (LE(Wind_Speed, 64'h4024000000000000)) begin
                                    yield_f_reg = 64'h4022E8CA11BFD44F;
                                end else begin
                                    yield_f_reg = 64'h40210091A2B3C4D6;
                                end
                            end
                        end else begin
                            if (LE(Organic_Carbon, 64'h3FF71EB850000000)) begin
                                if (LE(Altitude, 64'h409CA20000000000)) begin
                                    yield_f_reg = 64'h4020FDF3B645A1CB;
                                end else begin
                                    yield_f_reg = 64'h401C222222222223;
                                end
                            end else begin
                                if (LE(Region, 64'h3FF0000000000000)) begin
                                    yield_f_reg = 64'h401699999999999A;
                                end else begin
                                    yield_f_reg = 64'h40197AE147AE147B;
                                end
                            end
                        end
                    end else begin
                        if (LE(P, 64'h4033800000000000)) begin
                            if (LE(Soil_pH, 64'h401CC28F50000000)) begin
                                yield_f_reg = 64'h401E851EB851EB85;
                            end else begin
                                yield_f_reg = 64'h40210A3D70A3D70A;
                            end
                        end else begin
                            if (LE(Soil_Moisture, 64'h403DB0A3D0000000)) begin
                                if (LE(P, 64'h4044800000000000)) begin
                                    yield_f_reg = 64'h402470A3D70A3D70;
                                end else begin
                                    yield_f_reg = 64'h4026400000000000;
                                end
                            end else begin
                                if (LE(Wind_Speed, 64'h402E5C28F0000000)) begin
                                    yield_f_reg = 64'h4022900000000000;
                                end else begin
                                    yield_f_reg = 64'h4024C51EB851EB85;
                                end
                            end
                        end
                    end
                end
            end else begin
                if (LE(Soil_Moisture, 64'h403D3999A0000000)) begin
                    if (LE(Wind_Speed, 64'h4027B0A3D0000000)) begin
                        if (LE(Fertilizer_Used, 64'h40710147B0000000)) begin
                            if (LE(N, 64'h4060300000000000)) begin
                                if (LE(N, 64'h405F000000000000)) begin
                                    yield_f_reg = 64'h40209907F6E5D4C4;
                                end else begin
                                    yield_f_reg = 64'h401AB851EB851EB8;
                                end
                            end else begin
                                if (LE(Sunlight_Hours, 64'h401575C290000000)) begin
                                    yield_f_reg = 64'h4021A3D70A3D70A4;
                                end else begin
                                    yield_f_reg = 64'h4023CCCCCCCCCCCD;
                                end
                            end
                        end else begin
                            if (LE(K, 64'h4056000000000000)) begin
                                if (LE(Wind_Speed, 64'h400528F5D0000000)) begin
                                    yield_f_reg = 64'h401F8F5C28F5C28F;
                                end else begin
                                    yield_f_reg = 64'h40234F5C28F5C28F;
                                end
                            end else begin
                                if (LE(Irrigation_Type, 64'h3FE0000000000000)) begin
                                    yield_f_reg = 64'h40230F5C28F5C290;
                                end else begin
                                    yield_f_reg = 64'h4025206D3A06D3A1;
                                end
                            end
                        end
                    end else begin
                        if (LE(Organic_Carbon, 64'h3FF27AE140000000)) begin
                            if (LE(Wind_Speed, 64'h4030399990000000)) begin
                                if (LE(Pesticide_Used, 64'h40363C28F0000000)) begin
                                    yield_f_reg = 64'h4020533333333333;
                                end else begin
                                    yield_f_reg = 64'h401B28F5C28F5C29;
                                end
                            end else begin
                                if (LE(Pesticide_Used, 64'h402C7D70B0000000)) begin
                                    yield_f_reg = 64'h4022EB851EB851EC;
                                end else begin
                                    yield_f_reg = 64'h40213851EB851EB8;
                                end
                            end
                        end else begin
                            if (LE(N, 64'h405C600000000000)) begin
                                if (LE(Soil_Moisture, 64'h403970A3E0000000)) begin
                                    yield_f_reg = 64'h40194B17E4B17E4B;
                                end else begin
                                    yield_f_reg = 64'h401DB851EB851EB8;
                                end
                            end else begin
                                if (LE(Altitude, 64'h4093B40000000000)) begin
                                    yield_f_reg = 64'h402070A3D70A3D70;
                                end else begin
                                    yield_f_reg = 64'h401D333333333333;
                                end
                            end
                        end
                    end
                end else begin
                    if (LE(Fertilizer_Used, 64'h407041EB90000000)) begin
                        if (LE(Pesticide_Used, 64'h4020C7AE20000000)) begin
                            if (LE(Soil_Type, 64'h3FE0000000000000)) begin
                                yield_f_reg = 64'h401B28F5C28F5C29;
                            end else begin
                                if (LE(Soil_Moisture, 64'h4042F99990000000)) begin
                                    yield_f_reg = 64'h4021547AE147AE14;
                                end else begin
                                    yield_f_reg = 64'h4020111111111111;
                                end
                            end
                        end else begin
                            if (LE(Fertilizer_Used, 64'h406CC7AE20000000)) begin
                                if (LE(P, 64'h4053E00000000000)) begin
                                    yield_f_reg = 64'h4023400000000000;
                                end else begin
                                    yield_f_reg = 64'h4025AB851EB851EC;
                                end
                            end else begin
                                if (LE(N, 64'h4048C00000000000)) begin
                                    yield_f_reg = 64'h4023A740DA740DA7;
                                end else begin
                                    yield_f_reg = 64'h4021C9D0369D036B;
                                end
                            end
                        end
                    end else begin
                        if (LE(Wind_Speed, 64'h40220F5C30000000)) begin
                            if (LE(Soil_pH, 64'h401D70A3D0000000)) begin
                                if (LE(P, 64'h4047400000000000)) begin
                                    yield_f_reg = 64'h402449374BC6A7F0;
                                end else begin
                                    yield_f_reg = 64'h40254962FC962FCA;
                                end
                            end else begin
                                if (LE(Wind_Speed, 64'h4013E66660000000)) begin
                                    yield_f_reg = 64'h4023A6E978D4FDF3;
                                end else begin
                                    yield_f_reg = 64'h40206B851EB851EC;
                                end
                            end
                        end else begin
                            if (LE(Soil_Type, 64'h3FE0000000000000)) begin
                                if (LE(N, 64'h4052000000000000)) begin
                                    yield_f_reg = 64'h4022D8BF258BF258;
                                end else begin
                                    yield_f_reg = 64'h401CEB851EB851EB;
                                end
                            end else begin
                                if (LE(Fertilizer_Used, 64'h407586B850000000)) begin
                                    yield_f_reg = 64'h4023915D0CE94B3D;
                                end else begin
                                    yield_f_reg = 64'h401D1EB851EB851F;
                                end
                            end
                        end
                    end
                end
            end
        end else begin
            if (LE(Soil_pH, 64'h401E428F50000000)) begin
                if (LE(N, 64'h4057A00000000000)) begin
                    if (LE(Sunlight_Hours, 64'h4021E147B0000000)) begin
                        if (LE(Temperature, 64'h40280A3D70000000)) begin
                            if (LE(Wind_Speed, 64'h402BB33330000000)) begin
                                if (LE(Fertilizer_Used, 64'h40740A51F0000000)) begin
                                    yield_f_reg = 64'h402628F5C28F5C29;
                                end else begin
                                    yield_f_reg = 64'h4025800000000000;
                                end
                            end else begin
                                if (LE(Altitude, 64'h40973E0000000000)) begin
                                    yield_f_reg = 64'h40237AE147AE147B;
                                end else begin
                                    yield_f_reg = 64'h402299999999999A;
                                end
                            end
                        end else begin
                            if (LE(Organic_Carbon, 64'h3FEA3D70A0000000)) begin
                                if (LE(Rainfall, 64'h4081BB1478000000)) begin
                                    yield_f_reg = 64'h401DE147AE147AE1;
                                end else begin
                                    yield_f_reg = 64'h4020D1EB851EB852;
                                end
                            end else begin
                                if (LE(Sunlight_Hours, 64'h4020266660000000)) begin
                                    yield_f_reg = 64'h402163D70A3D70A4;
                                end else begin
                                    yield_f_reg = 64'h402370A3D70A3D70;
                                end
                            end
                        end
                    end else begin
                        if (LE(Soil_Moisture, 64'h404D60A3D0000000)) begin
                            if (LE(Temperature, 64'h4040FEB850000000)) begin
                                if (LE(Rainfall, 64'h40942FC7A8000000)) begin
                                    yield_f_reg = 64'h40244CCCCCCCCCCD;
                                end else begin
                                    yield_f_reg = 64'h4023CCCCCCCCCCCD;
                                end
                            end else begin
                                yield_f_reg = 64'h4022147AE147AE14;
                            end
                        end else begin
                            if (LE(N, 64'h404E800000000000)) begin
                                yield_f_reg = 64'h402528F5C28F5C29;
                            end else begin
                                if (LE(P, 64'h4054400000000000)) begin
                                    yield_f_reg = 64'h4025C7AE147AE148;
                                end else begin
                                    yield_f_reg = 64'h402651EB851EB852;
                                end
                            end
                        end
                    end
                end else begin
                    if (LE(Organic_Carbon, 64'h3FD947AE10000000)) begin
                        if (LE(Wind_Speed, 64'h402168F5C0000000)) begin
                            if (LE(Pesticide_Used, 64'h400C851EB0000000)) begin
                                yield_f_reg = 64'h40283851EB851EB8;
                            end else begin
                                if (LE(Season, 64'h3FF8000000000000)) begin
                                    yield_f_reg = 64'h402728F5C28F5C29;
                                end else begin
                                    yield_f_reg = 64'h402799999999999A;
                                end
                            end
                        end else begin
                            yield_f_reg = 64'h40254CCCCCCCCCCD;
                        end
                    end else begin
                        if (LE(Soil_Moisture, 64'h404BE33340000000)) begin
                            if (LE(Humidity, 64'h405464CCD0000000)) begin
                                if (LE(Wind_Speed, 64'h402F07AE10000000)) begin
                                    yield_f_reg = 64'h4025E8F5C28F5C28;
                                end else begin
                                    yield_f_reg = 64'h40270369D0369D03;
                                end
                            end else begin
                                yield_f_reg = 64'h4023666666666666;
                            end
                        end else begin
                            if (LE(Wind_Speed, 64'h402DD1EB80000000)) begin
                                if (LE(Organic_Carbon, 64'h3FEE8F5C20000000)) begin
                                    yield_f_reg = 64'h40239B4E81B4E81C;
                                end else begin
                                    yield_f_reg = 64'h402544EC4EC4EC4F;
                                end
                            end else begin
                                if (LE(Wind_Speed, 64'h4030D851F0000000)) begin
                                    yield_f_reg = 64'h4020AE147AE147AE;
                                end else begin
                                    yield_f_reg = 64'h4023970A3D70A3D7;
                                end
                            end
                        end
                    end
                end
            end else begin
                if (LE(Fertilizer_Used, 64'h406FED70B0000000)) begin
                    if (LE(N, 64'h4059E00000000000)) begin
                        if (LE(Rainfall, 64'h407976F5C0000000)) begin
                            yield_f_reg = 64'h40210F5C28F5C28F;
                        end else begin
                            yield_f_reg = 64'h401EEB851EB851EC;
                        end
                    end else begin
                        if (LE(Region, 64'h4008000000000000)) begin
                            yield_f_reg = 64'h401BAE147AE147AE;
                        end else begin
                            yield_f_reg = 64'h4019C28F5C28F5C3;
                        end
                    end
                end else begin
                    if (LE(Humidity, 64'h404AF66660000000)) begin
                        if (LE(N, 64'h4065600000000000)) begin
                            if (LE(P, 64'h4055C00000000000)) begin
                                if (LE(N, 64'h4061B00000000000)) begin
                                    yield_f_reg = 64'h4022ED3A06D3A06D;
                                end else begin
                                    yield_f_reg = 64'h402399999999999A;
                                end
                            end else begin
                                if (LE(Rainfall, 64'h407E0C7AF0000000)) begin
                                    yield_f_reg = 64'h4022666666666666;
                                end else begin
                                    yield_f_reg = 64'h4021F5C28F5C28F6;
                                end
                            end
                        end else begin
                            yield_f_reg = 64'h4025051EB851EB85;
                        end
                    end else begin
                        if (LE(K, 64'h405BC00000000000)) begin
                            yield_f_reg = 64'h40217AE147AE147B;
                        end else begin
                            yield_f_reg = 64'h401F333333333333;
                        end
                    end
                end
            end
        end
    end else begin
        if (LE(Soil_Moisture, 64'h40417A3D70000000)) begin
            if (LE(K, 64'h405EC00000000000)) begin
                if (LE(Fertilizer_Used, 64'h406FAEE150000000)) begin
                    if (LE(Soil_Moisture, 64'h4039EB8520000000)) begin
                        if (LE(Fertilizer_Used, 64'h406F00F5C0000000)) begin
                            if (LE(Sunlight_Hours, 64'h4024DEB850000000)) begin
                                if (LE(Organic_Carbon, 64'h3FDD1EB850000000)) begin
                                    yield_f_reg = 64'h4021DC28F5C28F5C;
                                end else begin
                                    yield_f_reg = 64'h402009374BC6A7EF;
                                end
                            end else begin
                                yield_f_reg = 64'h401AE147AE147AE1;
                            end
                        end else begin
                            if (LE(Rainfall, 64'h409E1E99A0000000)) begin
                                yield_f_reg = 64'h4019F5C28F5C28F6;
                            end else begin
                                yield_f_reg = 64'h401B851EB851EB85;
                            end
                        end
                    end else begin
                        if (LE(Pesticide_Used, 64'h4020A66670000000)) begin
                            if (LE(Sunlight_Hours, 64'h40163D70A0000000)) begin
                                yield_f_reg = 64'h4021147AE147AE14;
                            end else begin
                                yield_f_reg = 64'h401E1EB851EB851F;
                            end
                        end else begin
                            if (LE(Rainfall, 64'h40A0AE59A0000000)) begin
                                if (LE(Pesticide_Used, 64'h402EBD70B0000000)) begin
                                    yield_f_reg = 64'h4021E147AE147AE1;
                                end else begin
                                    yield_f_reg = 64'h40215C28F5C28F5C;
                                end
                            end else begin
                                if (LE(Rainfall, 64'h40A2AD7330000000)) begin
                                    yield_f_reg = 64'h4025147AE147AE14;
                                end else begin
                                    yield_f_reg = 64'h4023028F5C28F5C2;
                                end
                            end
                        end
                    end
                end else begin
                    if (LE(N, 64'h405EC00000000000)) begin
                        if (LE(Soil_pH, 64'h4016C28F60000000)) begin
                            if (LE(Soil_Moisture, 64'h40400D70A8000000)) begin
                                if (LE(Fertilizer_Used, 64'h4073CFD700000000)) begin
                                    yield_f_reg = 64'h4021051EB851EB85;
                                end else begin
                                    yield_f_reg = 64'h4024947AE147AE14;
                                end
                            end else begin
                                if (LE(Temperature, 64'h4035C66660000000)) begin
                                    yield_f_reg = 64'h401CC28F5C28F5C3;
                                end else begin
                                    yield_f_reg = 64'h401A3D70A3D70A3D;
                                end
                            end
                        end else begin
                            if (LE(Soil_pH, 64'h401F333330000000)) begin
                                if (LE(Sunlight_Hours, 64'h401B851EC0000000)) begin
                                    yield_f_reg = 64'h4025A1A54D880BB5;
                                end else begin
                                    yield_f_reg = 64'h4022FBAAEDE21155;
                                end
                            end else begin
                                if (LE(Wind_Speed, 64'h402FCA3D70000000)) begin
                                    yield_f_reg = 64'h4021F47AE147AE15;
                                end else begin
                                    yield_f_reg = 64'h401AA3D70A3D70A4;
                                end
                            end
                        end
                    end else begin
                        if (LE(Sunlight_Hours, 64'h4016051EB0000000)) begin
                            if (LE(Sunlight_Hours, 64'h4014C7AE10000000)) begin
                                yield_f_reg = 64'h4029428F5C28F5C3;
                            end else begin
                                yield_f_reg = 64'h402775C28F5C28F6;
                            end
                        end else begin
                            if (LE(N, 64'h4062700000000000)) begin
                                if (LE(Fertilizer_Used, 64'h40733C7AE0000000)) begin
                                    yield_f_reg = 64'h40245C28F5C28F5C;
                                end else begin
                                    yield_f_reg = 64'h402662FC962FC963;
                                end
                            end else begin
                                if (LE(Irrigation_Type, 64'h3FE0000000000000)) begin
                                    yield_f_reg = 64'h4023733333333333;
                                end else begin
                                    yield_f_reg = 64'h4022E147AE147AE2;
                                end
                            end
                        end
                    end
                end
            end else begin
                if (LE(Pesticide_Used, 64'h402187AE18000000)) begin
                    if (LE(P, 64'h4049C00000000000)) begin
                        if (LE(Soil_pH, 64'h40187AE140000000)) begin
                            if (LE(Pesticide_Used, 64'h4010051EB8000000)) begin
                                yield_f_reg = 64'h4024A3D70A3D70A4;
                            end else begin
                                yield_f_reg = 64'h4024BD70A3D70A3D;
                            end
                        end else begin
                            if (LE(N, 64'h4058800000000000)) begin
                                yield_f_reg = 64'h4026C7AE147AE148;
                            end else begin
                                yield_f_reg = 64'h402628F5C28F5C29;
                            end
                        end
                    end else begin
                        if (LE(N, 64'h404C800000000000)) begin
                            yield_f_reg = 64'h402647AE147AE148;
                        end else begin
                            if (LE(Fertilizer_Used, 64'h406E133340000000)) begin
                                yield_f_reg = 64'h4027AE147AE147AE;
                            end else begin
                                if (LE(P, 64'h404D800000000000)) begin
                                    yield_f_reg = 64'h4027051EB851EB85;
                                end else begin
                                    yield_f_reg = 64'h4027333333333333;
                                end
                            end
                        end
                    end
                end else begin
                    if (LE(Sunlight_Hours, 64'h40208F5C28000000)) begin
                        if (LE(Soil_pH, 64'h401BB33340000000)) begin
                            if (LE(Soil_Moisture, 64'h403563D710000000)) begin
                                if (LE(Rainfall, 64'h40A55F75D0000000)) begin
                                    yield_f_reg = 64'h4023E66666666666;
                                end else begin
                                    yield_f_reg = 64'h4023C7AE147AE148;
                                end
                            end else begin
                                if (LE(Wind_Speed, 64'h4025AB8520000000)) begin
                                    yield_f_reg = 64'h40250F5C28F5C28F;
                                end else begin
                                    yield_f_reg = 64'h402499999999999A;
                                end
                            end
                        end else begin
                            if (LE(Rainfall, 64'h40A1608520000000)) begin
                                yield_f_reg = 64'h4026147AE147AE14;
                            end else begin
                                yield_f_reg = 64'h4026947AE147AE14;
                            end
                        end
                    end else begin
                        if (LE(Altitude, 64'h407C000000000000)) begin
                            yield_f_reg = 64'h402075C28F5C28F6;
                        end else begin
                            if (LE(P, 64'h4051400000000000)) begin
                                yield_f_reg = 64'h40220A3D70A3D70A;
                            end else begin
                                yield_f_reg = 64'h4021800000000000;
                            end
                        end
                    end
                end
            end
        end else begin
            if (LE(Rainfall, 64'h40A2F24510000000)) begin
                if (LE(N, 64'h405A200000000000)) begin
                    if (LE(Fertilizer_Used, 64'h40728ECCD0000000)) begin
                        if (LE(Soil_pH, 64'h401BA3D710000000)) begin
                            if (LE(Sunlight_Hours, 64'h4022C51EB0000000)) begin
                                if (LE(Region, 64'h4004000000000000)) begin
                                    yield_f_reg = 64'h4021CFB9C8695362;
                                end else begin
                                    yield_f_reg = 64'h402368F5C28F5C29;
                                end
                            end else begin
                                if (LE(Soil_pH, 64'h401747AE10000000)) begin
                                    yield_f_reg = 64'h401F3D70A3D70A3D;
                                end else begin
                                    yield_f_reg = 64'h401F666666666666;
                                end
                            end
                        end else begin
                            if (LE(Organic_Carbon, 64'h3FF1333340000000)) begin
                                if (LE(Organic_Carbon, 64'h3FE3851EC0000000)) begin
                                    yield_f_reg = 64'h4023B53F7CED9168;
                                end else begin
                                    yield_f_reg = 64'h402575C28F5C28F6;
                                end
                            end else begin
                                if (LE(Temperature, 64'h402E5999A0000000)) begin
                                    yield_f_reg = 64'h4024B33333333334;
                                end else begin
                                    yield_f_reg = 64'h4021F0A3D70A3D71;
                                end
                            end
                        end
                    end else begin
                        if (LE(Pesticide_Used, 64'h402C3D70A0000000)) begin
                            if (LE(Soil_Moisture, 64'h4047E8F5C0000000)) begin
                                if (LE(Humidity, 64'h4046E28F60000000)) begin
                                    yield_f_reg = 64'h4023B33333333333;
                                end else begin
                                    yield_f_reg = 64'h4022F92C5F92C5F9;
                                end
                            end else begin
                                if (LE(Soil_Moisture, 64'h404BD99990000000)) begin
                                    yield_f_reg = 64'h402559999999999A;
                                end else begin
                                    yield_f_reg = 64'h40246B851EB851EC;
                                end
                            end
                        end else begin
                            if (LE(Sunlight_Hours, 64'h401E9EB850000000)) begin
                                if (LE(Sunlight_Hours, 64'h4017E66660000000)) begin
                                    yield_f_reg = 64'h4025E66666666667;
                                end else begin
                                    yield_f_reg = 64'h4023D70A3D70A3D7;
                                end
                            end else begin
                                if (LE(N, 64'h4053400000000000)) begin
                                    yield_f_reg = 64'h4026666666666666;
                                end else begin
                                    yield_f_reg = 64'h4028D9999999999A;
                                end
                            end
                        end
                    end
                end else begin
                    if (LE(Soil_Moisture, 64'h404B6999A0000000)) begin
                        if (LE(Temperature, 64'h40436999A0000000)) begin
                            if (LE(Sunlight_Hours, 64'h401B4CCCD0000000)) begin
                                if (LE(Wind_Speed, 64'h401B947AE0000000)) begin
                                    yield_f_reg = 64'h402517E4B17E4B18;
                                end else begin
                                    yield_f_reg = 64'h4022116872B020C5;
                                end
                            end else begin
                                if (LE(N, 64'h405DA00000000000)) begin
                                    yield_f_reg = 64'h4026970A3D70A3D7;
                                end else begin
                                    yield_f_reg = 64'h4024894F2094F209;
                                end
                            end
                        end else begin
                            yield_f_reg = 64'h402A666666666666;
                        end
                    end else begin
                        if (LE(Pesticide_Used, 64'h403267AE20000000)) begin
                            if (LE(Pesticide_Used, 64'h40305AE148000000)) begin
                                if (LE(Fertilizer_Used, 64'h4074323D70000000)) begin
                                    yield_f_reg = 64'h4025DC28F5C28F5C;
                                end else begin
                                    yield_f_reg = 64'h4027B17E4B17E4B1;
                                end
                            end else begin
                                if (LE(K, 64'h4057600000000000)) begin
                                    yield_f_reg = 64'h4022428F5C28F5C3;
                                end else begin
                                    yield_f_reg = 64'h4022333333333333;
                                end
                            end
                        end else begin
                            if (LE(N, 64'h4063900000000000)) begin
                                if (LE(Region, 64'h4004000000000000)) begin
                                    yield_f_reg = 64'h4028199999999999;
                                end else begin
                                    yield_f_reg = 64'h402735C28F5C28F6;
                                end
                            end else begin
                                if (LE(Fertilizer_Used, 64'h4072475C30000000)) begin
                                    yield_f_reg = 64'h4029C28F5C28F5C3;
                                end else begin
                                    yield_f_reg = 64'h4029D70A3D70A3D7;
                                end
                            end
                        end
                    end
                end
            end else begin
                if (LE(Soil_pH, 64'h40156147B0000000)) begin
                    if (LE(Sunlight_Hours, 64'h4020170A48000000)) begin
                        if (LE(Irrigation_Type, 64'h4004000000000000)) begin
                            if (LE(Soil_Type, 64'h4004000000000000)) begin
                                yield_f_reg = 64'h4023E66666666666;
                            end else begin
                                yield_f_reg = 64'h4023666666666666;
                            end
                        end else begin
                            yield_f_reg = 64'h40216147AE147AE1;
                        end
                    end else begin
                        if (LE(Soil_Moisture, 64'h404CF3D710000000)) begin
                            if (LE(Soil_Type, 64'h3FF8000000000000)) begin
                                yield_f_reg = 64'h402470A3D70A3D71;
                            end else begin
                                yield_f_reg = 64'h4024E66666666666;
                            end
                        end else begin
                            if (LE(Sunlight_Hours, 64'h40232147A0000000)) begin
                                yield_f_reg = 64'h40257AE147AE147B;
                            end else begin
                                yield_f_reg = 64'h40265C28F5C28F5C;
                            end
                        end
                    end
                end else begin
                    if (LE(Wind_Speed, 64'h3FFAE147A0000000)) begin
                        if (LE(Sunlight_Hours, 64'h4016E147B0000000)) begin
                            yield_f_reg = 64'h4022800000000000;
                        end else begin
                            yield_f_reg = 64'h4021D70A3D70A3D7;
                        end
                    end else begin
                        if (LE(Sunlight_Hours, 64'h4021E147B0000000)) begin
                            if (LE(Sunlight_Hours, 64'h401923D710000000)) begin
                                if (LE(Pesticide_Used, 64'h3FDF0A3D64000000)) begin
                                    yield_f_reg = 64'h402B75C28F5C28F6;
                                end else begin
                                    yield_f_reg = 64'h40268DA740DA740E;
                                end
                            end else begin
                                if (LE(N, 64'h405FC00000000000)) begin
                                    yield_f_reg = 64'h40277E4B17E4B17E;
                                end else begin
                                    yield_f_reg = 64'h402991EB851EB852;
                                end
                            end
                        end else begin
                            if (LE(Soil_pH, 64'h401A1999A0000000)) begin
                                if (LE(N, 64'h405B400000000000)) begin
                                    yield_f_reg = 64'h402786D3A06D3A07;
                                end else begin
                                    yield_f_reg = 64'h4025DA1CAC083127;
                                end
                            end else begin
                                if (LE(Fertilizer_Used, 64'h40728170B0000000)) begin
                                    yield_f_reg = 64'h40230F5C28F5C28F;
                                end else begin
                                    yield_f_reg = 64'h4025C51EB851EB85;
                                end
                            end
                        end
                    end
                end
            end
        end
    end
end
