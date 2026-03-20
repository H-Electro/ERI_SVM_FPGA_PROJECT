if (LE(Fertilizer_Used, 64'h40693A8F60000000)) begin
    if (LE(Rainfall, 64'h409B0C5C30000000)) begin
        if (LE(Fertilizer_Used, 64'h4061868F50000000)) begin
            if (LE(Rainfall, 64'h408C0B70A0000000)) begin
                if (LE(Soil_Moisture, 64'h404D03D710000000)) begin
                    if (LE(Fertilizer_Used, 64'h4059CEB860000000)) begin
                        if (LE(Soil_Moisture, 64'h4039228F60000000)) begin
                            if (LE(Humidity, 64'h4041B147B0000000)) begin
                                yield_f_reg = 64'h401047AE147AE148;
                            end else begin
                                if (LE(Pesticide_Used, 64'h401CC7AE10000000)) begin
                                    yield_f_reg = 64'h401BB33333333333;
                                end else begin
                                    yield_f_reg = 64'h40173456789ABCDF;
                                end
                            end
                        end else begin
                            if (LE(K, 64'h4045C00000000000)) begin
                                if (LE(Soil_Moisture, 64'h4041C0A3D0000000)) begin
                                    yield_f_reg = 64'h40140A3D70A3D70A;
                                end else begin
                                    yield_f_reg = 64'h401370A3D70A3D71;
                                end
                            end else begin
                                if (LE(Soil_pH, 64'h401BAE1480000000)) begin
                                    yield_f_reg = 64'h401DA4B17E4B17E4;
                                end else begin
                                    yield_f_reg = 64'h401A81B4E81B4E82;
                                end
                            end
                        end
                    end else begin
                        if (LE(K, 64'h405A600000000000)) begin
                            if (LE(Altitude, 64'h4070800000000000)) begin
                                if (LE(Rainfall, 64'h4086AF70A0000000)) begin
                                    yield_f_reg = 64'h401528F5C28F5C29;
                                end else begin
                                    yield_f_reg = 64'h4013000000000000;
                                end
                            end else begin
                                if (LE(K, 64'h4040C00000000000)) begin
                                    yield_f_reg = 64'h401F0A3D70A3D70A;
                                end else begin
                                    yield_f_reg = 64'h401B6500EE500EE4;
                                end
                            end
                        end else begin
                            if (LE(N, 64'h405B800000000000)) begin
                                if (LE(Fertilizer_Used, 64'h405E4051F0000000)) begin
                                    yield_f_reg = 64'h40207258BF258BF3;
                                end else begin
                                    yield_f_reg = 64'h4019B0A3D70A3D71;
                                end
                            end else begin
                                if (LE(Soil_pH, 64'h40160A3D70000000)) begin
                                    yield_f_reg = 64'h401E28F5C28F5C29;
                                end else begin
                                    yield_f_reg = 64'h40220962FC962FCA;
                                end
                            end
                        end
                    end
                end else begin
                    if (LE(Soil_pH, 64'h40191EB850000000)) begin
                        if (LE(Sunlight_Hours, 64'h4020A3D710000000)) begin
                            if (LE(Organic_Carbon, 64'h3FECA3D710000000)) begin
                                if (LE(Humidity, 64'h40506BD710000000)) begin
                                    yield_f_reg = 64'h401E5C28F5C28F5C;
                                end else begin
                                    yield_f_reg = 64'h401F28F5C28F5C29;
                                end
                            end else begin
                                yield_f_reg = 64'h4020A3D70A3D70A4;
                            end
                        end else begin
                            if (LE(Pesticide_Used, 64'h4031600000000000)) begin
                                if (LE(Temperature, 64'h402E266660000000)) begin
                                    yield_f_reg = 64'h401C8F5C28F5C28F;
                                end else begin
                                    yield_f_reg = 64'h401CF5C28F5C28F6;
                                end
                            end else begin
                                yield_f_reg = 64'h401BE147AE147AE1;
                            end
                        end
                    end else begin
                        if (LE(Temperature, 64'h403D8F5C30000000)) begin
                            if (LE(Humidity, 64'h40518B3340000000)) begin
                                if (LE(P, 64'h4048C00000000000)) begin
                                    yield_f_reg = 64'h4020666666666666;
                                end else begin
                                    yield_f_reg = 64'h401FCCCCCCCCCCCD;
                                end
                            end else begin
                                if (LE(Wind_Speed, 64'h402A000010000000)) begin
                                    yield_f_reg = 64'h401EA3D70A3D70A4;
                                end else begin
                                    yield_f_reg = 64'h401EC28F5C28F5C3;
                                end
                            end
                        end else begin
                            if (LE(Sunlight_Hours, 64'h401DC28F70000000)) begin
                                if (LE(P, 64'h404C000000000000)) begin
                                    yield_f_reg = 64'h40220F5C28F5C28F;
                                end else begin
                                    yield_f_reg = 64'h40215C28F5C28F5C;
                                end
                            end else begin
                                if (LE(P, 64'h404E800000000000)) begin
                                    yield_f_reg = 64'h4022FAE147AE147B;
                                end else begin
                                    yield_f_reg = 64'h4023428F5C28F5C3;
                                end
                            end
                        end
                    end
                end
            end else begin
                if (LE(Wind_Speed, 64'h4018EB8520000000)) begin
                    if (LE(K, 64'h4060200000000000)) begin
                        if (LE(Humidity, 64'h404CE00000000000)) begin
                            if (LE(Wind_Speed, 64'h400C147AE0000000)) begin
                                if (LE(Pesticide_Used, 64'h40357AE150000000)) begin
                                    yield_f_reg = 64'h4022051EB851EB85;
                                end else begin
                                    yield_f_reg = 64'h401FE66666666666;
                                end
                            end else begin
                                if (LE(Sunlight_Hours, 64'h401A51EB80000000)) begin
                                    yield_f_reg = 64'h402070A3D70A3D71;
                                end else begin
                                    yield_f_reg = 64'h401BD593BFA2608D;
                                end
                            end
                        end else begin
                            if (LE(Altitude, 64'h4091940000000000)) begin
                                if (LE(Fertilizer_Used, 64'h405274CCD0000000)) begin
                                    yield_f_reg = 64'h401CE4B17E4B17E4;
                                end else begin
                                    yield_f_reg = 64'h40205EB851EB851E;
                                end
                            end else begin
                                if (LE(Soil_pH, 64'h4018A8F5D0000000)) begin
                                    yield_f_reg = 64'h40209DB22D0E5605;
                                end else begin
                                    yield_f_reg = 64'h4022796AC9DFD130;
                                end
                            end
                        end
                    end else begin
                        if (LE(Irrigation_Type, 64'h3FF8000000000000)) begin
                            if (LE(Sunlight_Hours, 64'h401FDC2900000000)) begin
                                if (LE(Rainfall, 64'h40935DA900000000)) begin
                                    yield_f_reg = 64'h4022428F5C28F5C3;
                                end else begin
                                    yield_f_reg = 64'h4023A8F5C28F5C29;
                                end
                            end else begin
                                if (LE(Altitude, 64'h4098060000000000)) begin
                                    yield_f_reg = 64'h402699999999999A;
                                end else begin
                                    yield_f_reg = 64'h40253D70A3D70A3E;
                                end
                            end
                        end else begin
                            if (LE(Temperature, 64'h403E43D710000000)) begin
                                if (LE(Soil_pH, 64'h401C23D700000000)) begin
                                    yield_f_reg = 64'h4024A8F5C28F5C29;
                                end else begin
                                    yield_f_reg = 64'h4023028F5C28F5C2;
                                end
                            end else begin
                                if (LE(K, 64'h4061A00000000000)) begin
                                    yield_f_reg = 64'h40217851EB851EB8;
                                end else begin
                                    yield_f_reg = 64'h401E666666666666;
                                end
                            end
                        end
                    end
                end else begin
                    if (LE(Soil_Moisture, 64'h40433E1470000000)) begin
                        if (LE(Fertilizer_Used, 64'h40537E6660000000)) begin
                            if (LE(Sunlight_Hours, 64'h4023D70A40000000)) begin
                                if (LE(Pesticide_Used, 64'h4018851EC0000000)) begin
                                    yield_f_reg = 64'h4017851EB851EB85;
                                end else begin
                                    yield_f_reg = 64'h4019AB851EB851EC;
                                end
                            end else begin
                                if (LE(Humidity, 64'h404D81EB90000000)) begin
                                    yield_f_reg = 64'h4021C28F5C28F5C3;
                                end else begin
                                    yield_f_reg = 64'h401F666666666666;
                                end
                            end
                        end else begin
                            if (LE(Fertilizer_Used, 64'h405C7BD710000000)) begin
                                if (LE(Wind_Speed, 64'h4027A8F5C0000000)) begin
                                    yield_f_reg = 64'h401E0147AE147AE1;
                                end else begin
                                    yield_f_reg = 64'h4020C9BA5E353F7E;
                                end
                            end else begin
                                if (LE(Wind_Speed, 64'h4027AB8510000000)) begin
                                    yield_f_reg = 64'h401B5C28F5C28F5D;
                                end else begin
                                    yield_f_reg = 64'h401D49BA5E353F7D;
                                end
                            end
                        end
                    end else begin
                        if (LE(N, 64'h404CC00000000000)) begin
                            if (LE(K, 64'h404C400000000000)) begin
                                if (LE(Soil_Moisture, 64'h404B2E1480000000)) begin
                                    yield_f_reg = 64'h4020B851EB851EB8;
                                end else begin
                                    yield_f_reg = 64'h401EAE147AE147AE;
                                end
                            end else begin
                                if (LE(Humidity, 64'h4052DCCCD0000000)) begin
                                    yield_f_reg = 64'h401C8BF258BF258B;
                                end else begin
                                    yield_f_reg = 64'h4019888888888889;
                                end
                            end
                        end else begin
                            if (LE(K, 64'h4052400000000000)) begin
                                if (LE(Wind_Speed, 64'h4021D1EB80000000)) begin
                                    yield_f_reg = 64'h4019E3D70A3D70A4;
                                end else begin
                                    yield_f_reg = 64'h40207851EB851EB8;
                                end
                            end else begin
                                if (LE(K, 64'h4060C00000000000)) begin
                                    yield_f_reg = 64'h402279F2F79F2F7A;
                                end else begin
                                    yield_f_reg = 64'h4020DF3B645A1CAC;
                                end
                            end
                        end
                    end
                end
            end
        end else begin
            if (LE(Soil_Moisture, 64'h404605C290000000)) begin
                if (LE(Soil_pH, 64'h401FF0A3E0000000)) begin
                    if (LE(N, 64'h4055400000000000)) begin
                        if (LE(Soil_pH, 64'h401D428F60000000)) begin
                            if (LE(Soil_pH, 64'h401551EB90000000)) begin
                                if (LE(P, 64'h4054600000000000)) begin
                                    yield_f_reg = 64'h401DAB851EB851EC;
                                end else begin
                                    yield_f_reg = 64'h401628F5C28F5C29;
                                end
                            end else begin
                                if (LE(Pesticide_Used, 64'h40369C2900000000)) begin
                                    yield_f_reg = 64'h402197CAFE316498;
                                end else begin
                                    yield_f_reg = 64'h4017F5C28F5C28F6;
                                end
                            end
                        end else begin
                            if (LE(Fertilizer_Used, 64'h4068C38520000000)) begin
                                if (LE(Altitude, 64'h4088140000000000)) begin
                                    yield_f_reg = 64'h401EFD70A3D70A3E;
                                end else begin
                                    yield_f_reg = 64'h4019796AC9DFD130;
                                end
                            end else begin
                                yield_f_reg = 64'h40225C28F5C28F5C;
                            end
                        end
                    end else begin
                        if (LE(N, 64'h4056A00000000000)) begin
                            if (LE(Soil_pH, 64'h40169EB850000000)) begin
                                yield_f_reg = 64'h4025DC28F5C28F5C;
                            end else begin
                                yield_f_reg = 64'h402623D70A3D70A4;
                            end
                        end else begin
                            if (LE(P, 64'h4046400000000000)) begin
                                if (LE(Rainfall, 64'h4091ECEB80000000)) begin
                                    yield_f_reg = 64'h401C96AC9DFD1305;
                                end else begin
                                    yield_f_reg = 64'h4021CA3D70A3D70A;
                                end
                            end else begin
                                if (LE(Altitude, 64'h40A04F0000000000)) begin
                                    yield_f_reg = 64'h4021416C16C16C16;
                                end else begin
                                    yield_f_reg = 64'h4023BEB851EB851E;
                                end
                            end
                        end
                    end
                end else begin
                    if (LE(K, 64'h405AE00000000000)) begin
                        if (LE(P, 64'h4054E00000000000)) begin
                            if (LE(Season, 64'h3FF8000000000000)) begin
                                if (LE(N, 64'h4049000000000000)) begin
                                    yield_f_reg = 64'h4015147AE147AE14;
                                end else begin
                                    yield_f_reg = 64'h4016570A3D70A3D7;
                                end
                            end else begin
                                if (LE(Organic_Carbon, 64'h3FE11EB850000000)) begin
                                    yield_f_reg = 64'h401747AE147AE148;
                                end else begin
                                    yield_f_reg = 64'h401828F5C28F5C29;
                                end
                            end
                        end else begin
                            if (LE(Irrigation_Type, 64'h3FF0000000000000)) begin
                                yield_f_reg = 64'h401C70A3D70A3D71;
                            end else begin
                                yield_f_reg = 64'h401BF5C28F5C28F6;
                            end
                        end
                    end else begin
                        yield_f_reg = 64'h4022666666666666;
                    end
                end
            end else begin
                if (LE(Sunlight_Hours, 64'h4024028F60000000)) begin
                    if (LE(Soil_Type, 64'h4004000000000000)) begin
                        if (LE(N, 64'h4060E00000000000)) begin
                            if (LE(Altitude, 64'h4078780000000000)) begin
                                if (LE(Wind_Speed, 64'h402D70A3E0000000)) begin
                                    yield_f_reg = 64'h401C28F5C28F5C29;
                                end else begin
                                    yield_f_reg = 64'h4018666666666666;
                                end
                            end else begin
                                if (LE(K, 64'h405EA00000000000)) begin
                                    yield_f_reg = 64'h4020901E573AC902;
                                end else begin
                                    yield_f_reg = 64'h4022C49BA5E353F7;
                                end
                            end
                        end else begin
                            if (LE(Soil_pH, 64'h4018BD70B0000000)) begin
                                if (LE(Altitude, 64'h407A200000000000)) begin
                                    yield_f_reg = 64'h4022B5C28F5C28F6;
                                end else begin
                                    yield_f_reg = 64'h40205DDDDDDDDDDD;
                                end
                            end else begin
                                if (LE(K, 64'h4060700000000000)) begin
                                    yield_f_reg = 64'h402547AE147AE148;
                                end else begin
                                    yield_f_reg = 64'h4022D1EB851EB852;
                                end
                            end
                        end
                    end else begin
                        if (LE(Soil_pH, 64'h401C28F5D0000000)) begin
                            if (LE(N, 64'h4056E00000000000)) begin
                                yield_f_reg = 64'h402799999999999A;
                            end else begin
                                if (LE(Organic_Carbon, 64'h3FF2A3D708000000)) begin
                                    yield_f_reg = 64'h40246147AE147AE1;
                                end else begin
                                    yield_f_reg = 64'h4025A8F5C28F5C28;
                                end
                            end
                        end else begin
                            if (LE(K, 64'h4060400000000000)) begin
                                if (LE(Pesticide_Used, 64'h402FA66670000000)) begin
                                    yield_f_reg = 64'h40231C28F5C28F5C;
                                end else begin
                                    yield_f_reg = 64'h402223D70A3D70A4;
                                end
                            end else begin
                                yield_f_reg = 64'h401DE147AE147AE1;
                            end
                        end
                    end
                end else begin
                    if (LE(Wind_Speed, 64'h40170F5C20000000)) begin
                        if (LE(Pesticide_Used, 64'h402D51EB80000000)) begin
                            if (LE(Soil_pH, 64'h401ABD70B0000000)) begin
                                yield_f_reg = 64'h40233D70A3D70A3D;
                            end else begin
                                if (LE(P, 64'h4045C00000000000)) begin
                                    yield_f_reg = 64'h402570A3D70A3D71;
                                end else begin
                                    yield_f_reg = 64'h4024E66666666666;
                                end
                            end
                        end else begin
                            if (LE(Region, 64'h4004000000000000)) begin
                                yield_f_reg = 64'h4026B33333333333;
                            end else begin
                                yield_f_reg = 64'h4026FAE147AE147B;
                            end
                        end
                    end else begin
                        if (LE(Humidity, 64'h404DDA3D80000000)) begin
                            if (LE(Sunlight_Hours, 64'h4024BAE140000000)) begin
                                if (LE(K, 64'h404D800000000000)) begin
                                    yield_f_reg = 64'h4024B851EB851EB8;
                                end else begin
                                    yield_f_reg = 64'h402519999999999A;
                                end
                            end else begin
                                if (LE(Humidity, 64'h4045DD70A0000000)) begin
                                    yield_f_reg = 64'h4023851EB851EB85;
                                end else begin
                                    yield_f_reg = 64'h402407AE147AE148;
                                end
                            end
                        end else begin
                            if (LE(Humidity, 64'h4053F47AE0000000)) begin
                                if (LE(K, 64'h4053000000000000)) begin
                                    yield_f_reg = 64'h4021051EB851EB85;
                                end else begin
                                    yield_f_reg = 64'h40218CCCCCCCCCCD;
                                end
                            end else begin
                                yield_f_reg = 64'h402247AE147AE148;
                            end
                        end
                    end
                end
            end
        end
    end else begin
        if (LE(Fertilizer_Used, 64'h4060C570A0000000)) begin
            if (LE(Soil_Moisture, 64'h404468F5C0000000)) begin
                if (LE(Soil_pH, 64'h401CDC28F0000000)) begin
                    if (LE(K, 64'h4044800000000000)) begin
                        if (LE(Altitude, 64'h40946E0000000000)) begin
                            if (LE(Altitude, 64'h4077780000000000)) begin
                                yield_f_reg = 64'h4020C28F5C28F5C3;
                            end else begin
                                if (LE(Sunlight_Hours, 64'h40170F5C30000000)) begin
                                    yield_f_reg = 64'h401A000000000000;
                                end else begin
                                    yield_f_reg = 64'h401C99999999999A;
                                end
                            end
                        end else begin
                            if (LE(Soil_Moisture, 64'h4040528F60000000)) begin
                                yield_f_reg = 64'h40215C28F5C28F5C;
                            end else begin
                                yield_f_reg = 64'h402247AE147AE148;
                            end
                        end
                    end else begin
                        if (LE(Organic_Carbon, 64'h3FF7D70A40000000)) begin
                            if (LE(Rainfall, 64'h40A02FB0A0000000)) begin
                                if (LE(Humidity, 64'h4049399990000000)) begin
                                    yield_f_reg = 64'h402190D2A6C405DA;
                                end else begin
                                    yield_f_reg = 64'h401CCCCCCCCCCCCD;
                                end
                            end else begin
                                if (LE(Fertilizer_Used, 64'h4059428F60000000)) begin
                                    yield_f_reg = 64'h4021D53BA2086ED5;
                                end else begin
                                    yield_f_reg = 64'h402456872B020C4A;
                                end
                            end
                        end else begin
                            if (LE(Season, 64'h3FF8000000000000)) begin
                                if (LE(K, 64'h405C400000000000)) begin
                                    yield_f_reg = 64'h4025666666666666;
                                end else begin
                                    yield_f_reg = 64'h4026F0A3D70A3D71;
                                end
                            end else begin
                                if (LE(Humidity, 64'h405183D700000000)) begin
                                    yield_f_reg = 64'h402470A3D70A3D71;
                                end else begin
                                    yield_f_reg = 64'h4022E147AE147AE1;
                                end
                            end
                        end
                    end
                end else begin
                    if (LE(Humidity, 64'h404C9851F0000000)) begin
                        if (LE(Soil_Type, 64'h3FF8000000000000)) begin
                            if (LE(Sunlight_Hours, 64'h40153D70A0000000)) begin
                                yield_f_reg = 64'h40235C28F5C28F5C;
                            end else begin
                                yield_f_reg = 64'h4024A8F5C28F5C29;
                            end
                        end else begin
                            if (LE(Soil_Moisture, 64'h4041728F60000000)) begin
                                yield_f_reg = 64'h4020A3D70A3D70A4;
                            end else begin
                                if (LE(Altitude, 64'h408F540000000000)) begin
                                    yield_f_reg = 64'h4020F0A3D70A3D71;
                                end else begin
                                    yield_f_reg = 64'h402128F5C28F5C29;
                                end
                            end
                        end
                    end else begin
                        if (LE(Wind_Speed, 64'h40247D70B0000000)) begin
                            if (LE(Temperature, 64'h403BF5C280000000)) begin
                                if (LE(Sunlight_Hours, 64'h401F70A3E0000000)) begin
                                    yield_f_reg = 64'h401DD70A3D70A3D7;
                                end else begin
                                    yield_f_reg = 64'h401C70A3D70A3D70;
                                end
                            end else begin
                                if (LE(Altitude, 64'h4091200000000000)) begin
                                    yield_f_reg = 64'h4020D9999999999A;
                                end else begin
                                    yield_f_reg = 64'h401F19999999999A;
                                end
                            end
                        end else begin
                            if (LE(P, 64'h4047800000000000)) begin
                                if (LE(Soil_pH, 64'h401D23D710000000)) begin
                                    yield_f_reg = 64'h4019851EB851EB85;
                                end else begin
                                    yield_f_reg = 64'h401B28F5C28F5C29;
                                end
                            end else begin
                                yield_f_reg = 64'h4017147AE147AE14;
                            end
                        end
                    end
                end
            end else begin
                if (LE(Rainfall, 64'h40A1C19EB0000000)) begin
                    if (LE(Temperature, 64'h4032051EB0000000)) begin
                        if (LE(Soil_Moisture, 64'h404C0E1470000000)) begin
                            if (LE(Humidity, 64'h4049FB8520000000)) begin
                                if (LE(Irrigation_Type, 64'h3FF8000000000000)) begin
                                    yield_f_reg = 64'h4021800000000000;
                                end else begin
                                    yield_f_reg = 64'h40217AE147AE147B;
                                end
                            end else begin
                                yield_f_reg = 64'h4020C7AE147AE148;
                            end
                        end else begin
                            if (LE(P, 64'h4044800000000000)) begin
                                yield_f_reg = 64'h401FCCCCCCCCCCCD;
                            end else begin
                                yield_f_reg = 64'h401EEB851EB851EC;
                            end
                        end
                    end else begin
                        if (LE(Region, 64'h3FF8000000000000)) begin
                            if (LE(K, 64'h405DA00000000000)) begin
                                if (LE(Temperature, 64'h4042747AE0000000)) begin
                                    yield_f_reg = 64'h40206D3A06D3A06C;
                                end else begin
                                    yield_f_reg = 64'h402362FC962FC963;
                                end
                            end else begin
                                if (LE(N, 64'h405BC00000000000)) begin
                                    yield_f_reg = 64'h4024828F5C28F5C2;
                                end else begin
                                    yield_f_reg = 64'h4023828F5C28F5C2;
                                end
                            end
                        end else begin
                            if (LE(Soil_Moisture, 64'h4045A00000000000)) begin
                                if (LE(Pesticide_Used, 64'h402F170A48000000)) begin
                                    yield_f_reg = 64'h40223851EB851EB8;
                                end else begin
                                    yield_f_reg = 64'h40207AE147AE147B;
                                end
                            end else begin
                                if (LE(Sunlight_Hours, 64'h4024170A40000000)) begin
                                    yield_f_reg = 64'h402476C8B4395810;
                                end else begin
                                    yield_f_reg = 64'h4021F0A3D70A3D70;
                                end
                            end
                        end
                    end
                end else begin
                    if (LE(Organic_Carbon, 64'h3FEC28F5D0000000)) begin
                        if (LE(N, 64'h4054000000000000)) begin
                            if (LE(N, 64'h404EC00000000000)) begin
                                yield_f_reg = 64'h4020E66666666666;
                            end else begin
                                yield_f_reg = 64'h401C99999999999A;
                            end
                        end else begin
                            if (LE(Altitude, 64'h4091080000000000)) begin
                                if (LE(Soil_pH, 64'h401BB33340000000)) begin
                                    yield_f_reg = 64'h4024D70A3D70A3D7;
                                end else begin
                                    yield_f_reg = 64'h4023D70A3D70A3D7;
                                end
                            end else begin
                                if (LE(Pesticide_Used, 64'h4030C8F5C0000000)) begin
                                    yield_f_reg = 64'h40233AE147AE147B;
                                end else begin
                                    yield_f_reg = 64'h40220F5C28F5C28F;
                                end
                            end
                        end
                    end else begin
                        if (LE(Humidity, 64'h405199EB90000000)) begin
                            if (LE(Wind_Speed, 64'h40204A3D78000000)) begin
                                if (LE(Temperature, 64'h402DFAE150000000)) begin
                                    yield_f_reg = 64'h4026BD70A3D70A3D;
                                end else begin
                                    yield_f_reg = 64'h402763D70A3D70A4;
                                end
                            end else begin
                                if (LE(Soil_Type, 64'h3FF0000000000000)) begin
                                    yield_f_reg = 64'h4026C28F5C28F5C3;
                                end else begin
                                    yield_f_reg = 64'h402475C28F5C28F6;
                                end
                            end
                        end else begin
                            if (LE(Irrigation_Type, 64'h3FE0000000000000)) begin
                                if (LE(Soil_Moisture, 64'h4049C3D710000000)) begin
                                    yield_f_reg = 64'h4022428F5C28F5C3;
                                end else begin
                                    yield_f_reg = 64'h402370A3D70A3D71;
                                end
                            end else begin
                                if (LE(Temperature, 64'h4040028F60000000)) begin
                                    yield_f_reg = 64'h4025E66666666666;
                                end else begin
                                    yield_f_reg = 64'h402475C28F5C28F6;
                                end
                            end
                        end
                    end
                end
            end
        end else begin
            if (LE(Sunlight_Hours, 64'h4020F0A3D0000000)) begin
                if (LE(Humidity, 64'h404815C290000000)) begin
                    if (LE(Humidity, 64'h403F51EB80000000)) begin
                        if (LE(Humidity, 64'h403EF33340000000)) begin
                            if (LE(Temperature, 64'h402C547AE0000000)) begin
                                yield_f_reg = 64'h4021C7AE147AE148;
                            end else begin
                                yield_f_reg = 64'h4020F0A3D70A3D71;
                            end
                        end else begin
                            if (LE(Soil_pH, 64'h401E051EB0000000)) begin
                                if (LE(Organic_Carbon, 64'h3FEC51EB90000000)) begin
                                    yield_f_reg = 64'h40243D70A3D70A3D;
                                end else begin
                                    yield_f_reg = 64'h4023BD70A3D70A3D;
                                end
                            end else begin
                                yield_f_reg = 64'h40230A3D70A3D70A;
                            end
                        end
                    end else begin
                        if (LE(N, 64'h404A000000000000)) begin
                            if (LE(Soil_pH, 64'h401D6B8520000000)) begin
                                if (LE(Region, 64'h3FE0000000000000)) begin
                                    yield_f_reg = 64'h4024147AE147AE14;
                                end else begin
                                    yield_f_reg = 64'h402619999999999A;
                                end
                            end else begin
                                if (LE(Altitude, 64'h4090420000000000)) begin
                                    yield_f_reg = 64'h4021FAE147AE147B;
                                end else begin
                                    yield_f_reg = 64'h402251EB851EB852;
                                end
                            end
                        end else begin
                            if (LE(Temperature, 64'h403AFEB850000000)) begin
                                if (LE(Sunlight_Hours, 64'h40190A3D70000000)) begin
                                    yield_f_reg = 64'h40245D2F1A9FBE76;
                                end else begin
                                    yield_f_reg = 64'h40262CCCCCCCCCCD;
                                end
                            end else begin
                                if (LE(Temperature, 64'h404091EB90000000)) begin
                                    yield_f_reg = 64'h4027CA3D70A3D70A;
                                end else begin
                                    yield_f_reg = 64'h4025792C5F92C5F8;
                                end
                            end
                        end
                    end
                end else begin
                    if (LE(Altitude, 64'h4086F00000000000)) begin
                        if (LE(Soil_pH, 64'h4019947AE0000000)) begin
                            if (LE(Organic_Carbon, 64'h3FDFAE1480000000)) begin
                                if (LE(Temperature, 64'h4037BD70B0000000)) begin
                                    yield_f_reg = 64'h4023DC28F5C28F5C;
                                end else begin
                                    yield_f_reg = 64'h4022570A3D70A3D7;
                                end
                            end else begin
                                if (LE(Temperature, 64'h402E2E1480000000)) begin
                                    yield_f_reg = 64'h40206147AE147AE1;
                                end else begin
                                    yield_f_reg = 64'h402192C5F92C5F93;
                                end
                            end
                        end else begin
                            if (LE(Fertilizer_Used, 64'h4062E51EC0000000)) begin
                                if (LE(Fertilizer_Used, 64'h406242E150000000)) begin
                                    yield_f_reg = 64'h4023A22222222223;
                                end else begin
                                    yield_f_reg = 64'h40222B851EB851EC;
                                end
                            end else begin
                                if (LE(Sunlight_Hours, 64'h40165C28F0000000)) begin
                                    yield_f_reg = 64'h4024A8F5C28F5C29;
                                end else begin
                                    yield_f_reg = 64'h4025000000000000;
                                end
                            end
                        end
                    end else begin
                        if (LE(Wind_Speed, 64'h4030466660000000)) begin
                            if (LE(Soil_Moisture, 64'h404C751EC0000000)) begin
                                if (LE(Temperature, 64'h40326E1480000000)) begin
                                    yield_f_reg = 64'h4024E3D70A3D70A3;
                                end else begin
                                    yield_f_reg = 64'h4023965781657817;
                                end
                            end else begin
                                if (LE(Fertilizer_Used, 64'h4067D40000000000)) begin
                                    yield_f_reg = 64'h402491EB851EB852;
                                end else begin
                                    yield_f_reg = 64'h4027028F5C28F5C3;
                                end
                            end
                        end else begin
                            if (LE(K, 64'h4059A00000000000)) begin
                                if (LE(Temperature, 64'h403A347AE0000000)) begin
                                    yield_f_reg = 64'h40212E147AE147AE;
                                end else begin
                                    yield_f_reg = 64'h4021A3D70A3D70A4;
                                end
                            end else begin
                                if (LE(Temperature, 64'h403415C290000000)) begin
                                    yield_f_reg = 64'h4022428F5C28F5C3;
                                end else begin
                                    yield_f_reg = 64'h402275C28F5C28F6;
                                end
                            end
                        end
                    end
                end
            end else begin
                if (LE(Soil_pH, 64'h401D9999A0000000)) begin
                    if (LE(Soil_pH, 64'h4016EB8510000000)) begin
                        if (LE(Humidity, 64'h404C20A3E0000000)) begin
                            if (LE(N, 64'h4056000000000000)) begin
                                if (LE(N, 64'h4044400000000000)) begin
                                    yield_f_reg = 64'h401BCCCCCCCCCCCD;
                                end else begin
                                    yield_f_reg = 64'h401E75C28F5C28F6;
                                end
                            end else begin
                                yield_f_reg = 64'h4020AE147AE147AE;
                            end
                        end else begin
                            if (LE(Soil_Type, 64'h3FF8000000000000)) begin
                                if (LE(Soil_Moisture, 64'h4045D33330000000)) begin
                                    yield_f_reg = 64'h4020BD70A3D70A3D;
                                end else begin
                                    yield_f_reg = 64'h402251EB851EB852;
                                end
                            end else begin
                                if (LE(Soil_pH, 64'h4014B851F0000000)) begin
                                    yield_f_reg = 64'h4023C28F5C28F5C3;
                                end else begin
                                    yield_f_reg = 64'h4024AB851EB851EC;
                                end
                            end
                        end
                    end else begin
                        if (LE(Altitude, 64'h409E4C0000000000)) begin
                            if (LE(Altitude, 64'h40814C0000000000)) begin
                                if (LE(Pesticide_Used, 64'h40355C28F0000000)) begin
                                    yield_f_reg = 64'h4022DC28F5C28F5C;
                                end else begin
                                    yield_f_reg = 64'h40248F5C28F5C28F;
                                end
                            end else begin
                                if (LE(N, 64'h4060B00000000000)) begin
                                    yield_f_reg = 64'h402417AE147AE148;
                                end else begin
                                    yield_f_reg = 64'h40254CCCCCCCCCCD;
                                end
                            end
                        end else begin
                            if (LE(Soil_pH, 64'h4019C7AE10000000)) begin
                                yield_f_reg = 64'h4026E66666666666;
                            end else begin
                                yield_f_reg = 64'h4027C28F5C28F5C3;
                            end
                        end
                    end
                end else begin
                    if (LE(Rainfall, 64'h40A16BE8F0000000)) begin
                        if (LE(N, 64'h4059200000000000)) begin
                            if (LE(Wind_Speed, 64'h402E3AE150000000)) begin
                                if (LE(Soil_Type, 64'h3FE0000000000000)) begin
                                    yield_f_reg = 64'h401DD70A3D70A3D7;
                                end else begin
                                    yield_f_reg = 64'h401CD70A3D70A3D7;
                                end
                            end else begin
                                if (LE(Soil_pH, 64'h401F666660000000)) begin
                                    yield_f_reg = 64'h401ECCCCCCCCCCCD;
                                end else begin
                                    yield_f_reg = 64'h401FC28F5C28F5C3;
                                end
                            end
                        end else begin
                            if (LE(P, 64'h404D800000000000)) begin
                                if (LE(Fertilizer_Used, 64'h40653EB850000000)) begin
                                    yield_f_reg = 64'h401F1EB851EB851F;
                                end else begin
                                    yield_f_reg = 64'h401FF5C28F5C28F6;
                                end
                            end else begin
                                if (LE(Soil_pH, 64'h401F428F60000000)) begin
                                    yield_f_reg = 64'h4020F0A3D70A3D71;
                                end else begin
                                    yield_f_reg = 64'h4021147AE147AE14;
                                end
                            end
                        end
                    end else begin
                        if (LE(Rainfall, 64'h40A224F0A0000000)) begin
                            if (LE(Soil_Moisture, 64'h4048528F60000000)) begin
                                if (LE(Sunlight_Hours, 64'h402428F5C0000000)) begin
                                    yield_f_reg = 64'h4022C7AE147AE148;
                                end else begin
                                    yield_f_reg = 64'h4022DC28F5C28F5C;
                                end
                            end else begin
                                yield_f_reg = 64'h4022F0A3D70A3D71;
                            end
                        end else begin
                            if (LE(Altitude, 64'h4087340000000000)) begin
                                yield_f_reg = 64'h401F47AE147AE148;
                            end else begin
                                if (LE(K, 64'h404CC00000000000)) begin
                                    yield_f_reg = 64'h40210F5C28F5C28F;
                                end else begin
                                    yield_f_reg = 64'h40214CCCCCCCCCCD;
                                end
                            end
                        end
                    end
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
                        if (LE(Pesticide_Used, 64'h4026FD70A0000000)) begin
                            if (LE(Altitude, 64'h4070B00000000000)) begin
                                if (LE(Organic_Carbon, 64'h3FEC28F5C0000000)) begin
                                    yield_f_reg = 64'h4018333333333333;
                                end else begin
                                    yield_f_reg = 64'h401B000000000000;
                                end
                            end else begin
                                if (LE(Humidity, 64'h40413B8520000000)) begin
                                    yield_f_reg = 64'h401EAE147AE147AE;
                                end else begin
                                    yield_f_reg = 64'h401D020C49BA5E35;
                                end
                            end
                        end else begin
                            if (LE(K, 64'h4057600000000000)) begin
                                if (LE(Soil_Moisture, 64'h4030DEB858000000)) begin
                                    yield_f_reg = 64'h402170A3D70A3D71;
                                end else begin
                                    yield_f_reg = 64'h401E3D70A3D70A3D;
                                end
                            end else begin
                                if (LE(Altitude, 64'h4096E20000000000)) begin
                                    yield_f_reg = 64'h40210E147AE147AF;
                                end else begin
                                    yield_f_reg = 64'h4023947AE147AE14;
                                end
                            end
                        end
                    end else begin
                        if (LE(Soil_pH, 64'h4020333330000000)) begin
                            if (LE(Soil_Moisture, 64'h403CE00000000000)) begin
                                if (LE(K, 64'h405E200000000000)) begin
                                    yield_f_reg = 64'h40218E81B4E81B4E;
                                end else begin
                                    yield_f_reg = 64'h40234736EC736EC7;
                                end
                            end else begin
                                if (LE(Season, 64'h3FF8000000000000)) begin
                                    yield_f_reg = 64'h401FC00000000000;
                                end else begin
                                    yield_f_reg = 64'h401D111111111110;
                                end
                            end
                        end else begin
                            if (LE(Season, 64'h3FF0000000000000)) begin
                                yield_f_reg = 64'h401A7AE147AE147B;
                            end else begin
                                yield_f_reg = 64'h40183D70A3D70A3D;
                            end
                        end
                    end
                end else begin
                    if (LE(Wind_Speed, 64'h402835C290000000)) begin
                        if (LE(Soil_Moisture, 64'h403F11EB80000000)) begin
                            if (LE(Fertilizer_Used, 64'h406E2EE150000000)) begin
                                if (LE(Region, 64'h400C000000000000)) begin
                                    yield_f_reg = 64'h40270A3D70A3D70A;
                                end else begin
                                    yield_f_reg = 64'h40268F5C28F5C28F;
                                end
                            end else begin
                                if (LE(Sunlight_Hours, 64'h4020F5C290000000)) begin
                                    yield_f_reg = 64'h4024C28F5C28F5C3;
                                end else begin
                                    yield_f_reg = 64'h4025A3D70A3D70A4;
                                end
                            end
                        end else begin
                            if (LE(Rainfall, 64'h40961AEB90000000)) begin
                                if (LE(Humidity, 64'h4054928F60000000)) begin
                                    yield_f_reg = 64'h4022792C5F92C5F9;
                                end else begin
                                    yield_f_reg = 64'h40256147AE147AE2;
                                end
                            end else begin
                                if (LE(P, 64'h4042C00000000000)) begin
                                    yield_f_reg = 64'h4022B851EB851EB8;
                                end else begin
                                    yield_f_reg = 64'h4025D5C28F5C28F6;
                                end
                            end
                        end
                    end else begin
                        if (LE(Soil_pH, 64'h401C8A3D70000000)) begin
                            if (LE(Fertilizer_Used, 64'h407202E140000000)) begin
                                if (LE(N, 64'h4062500000000000)) begin
                                    yield_f_reg = 64'h402300EE500EE501;
                                end else begin
                                    yield_f_reg = 64'h401F5C28F5C28F5C;
                                end
                            end else begin
                                if (LE(Temperature, 64'h4040BE1478000000)) begin
                                    yield_f_reg = 64'h401ED1EB851EB852;
                                end else begin
                                    yield_f_reg = 64'h4021666666666666;
                                end
                            end
                        end else begin
                            if (LE(N, 64'h405BE00000000000)) begin
                                if (LE(Soil_pH, 64'h401CA3D710000000)) begin
                                    yield_f_reg = 64'h402099999999999A;
                                end else begin
                                    yield_f_reg = 64'h401DDD2F1A9FBE76;
                                end
                            end else begin
                                if (LE(Pesticide_Used, 64'h402B87AE10000000)) begin
                                    yield_f_reg = 64'h401FE147AE147AE1;
                                end else begin
                                    yield_f_reg = 64'h40232147AE147AE1;
                                end
                            end
                        end
                    end
                end
            end else begin
                if (LE(Humidity, 64'h405564CCD0000000)) begin
                    if (LE(Sunlight_Hours, 64'h4024EE1480000000)) begin
                        if (LE(Sunlight_Hours, 64'h4010666670000000)) begin
                            yield_f_reg = 64'h401B851EB851EB85;
                        end else begin
                            if (LE(Sunlight_Hours, 64'h401BE147B0000000)) begin
                                if (LE(Humidity, 64'h40548EB850000000)) begin
                                    yield_f_reg = 64'h4023C8F5C28F5C28;
                                end else begin
                                    yield_f_reg = 64'h4020C00000000000;
                                end
                            end else begin
                                if (LE(Organic_Carbon, 64'h3FECF5C290000000)) begin
                                    yield_f_reg = 64'h402334679ACE0135;
                                end else begin
                                    yield_f_reg = 64'h4021BA83A83A83A9;
                                end
                            end
                        end
                    end else begin
                        if (LE(Soil_Moisture, 64'h4038B999A0000000)) begin
                            if (LE(Organic_Carbon, 64'h3FE4CCCCC8000000)) begin
                                yield_f_reg = 64'h401CE147AE147AE1;
                            end else begin
                                yield_f_reg = 64'h4023E66666666666;
                            end
                        end else begin
                            if (LE(Rainfall, 64'h40941A8000000000)) begin
                                if (LE(Altitude, 64'h409B520000000000)) begin
                                    yield_f_reg = 64'h40249851EB851EB8;
                                end else begin
                                    yield_f_reg = 64'h4026428F5C28F5C2;
                                end
                            end else begin
                                if (LE(Temperature, 64'h40393EB850000000)) begin
                                    yield_f_reg = 64'h40275C28F5C28F5C;
                                end else begin
                                    yield_f_reg = 64'h40263D70A3D70A3D;
                                end
                            end
                        end
                    end
                end else begin
                    if (LE(Humidity, 64'h40566CCCD0000000)) begin
                        if (LE(Soil_pH, 64'h40140F5C20000000)) begin
                            yield_f_reg = 64'h402428F5C28F5C29;
                        end else begin
                            if (LE(Humidity, 64'h40560B8520000000)) begin
                                if (LE(Rainfall, 64'h408D0A8518000000)) begin
                                    yield_f_reg = 64'h40268A3D70A3D70A;
                                end else begin
                                    yield_f_reg = 64'h40264CCCCCCCCCCD;
                                end
                            end else begin
                                yield_f_reg = 64'h40260F5C28F5C28F;
                            end
                        end
                    end else begin
                        yield_f_reg = 64'h40288A3D70A3D70A;
                    end
                end
            end
        end else begin
            if (LE(K, 64'h4053200000000000)) begin
                if (LE(Soil_pH, 64'h4016851EC0000000)) begin
                    if (LE(Wind_Speed, 64'h403103D710000000)) begin
                        if (LE(Humidity, 64'h404D9B8510000000)) begin
                            if (LE(N, 64'h405BE00000000000)) begin
                                if (LE(Region, 64'h4000000000000000)) begin
                                    yield_f_reg = 64'h4020DC28F5C28F5C;
                                end else begin
                                    yield_f_reg = 64'h401EF5C28F5C28F6;
                                end
                            end else begin
                                if (LE(Humidity, 64'h4047C66660000000)) begin
                                    yield_f_reg = 64'h40228A3D70A3D70A;
                                end else begin
                                    yield_f_reg = 64'h40218F5C28F5C28F;
                                end
                            end
                        end else begin
                            if (LE(P, 64'h403D000000000000)) begin
                                if (LE(Altitude, 64'h4091600000000000)) begin
                                    yield_f_reg = 64'h4019EB851EB851EC;
                                end else begin
                                    yield_f_reg = 64'h401B0A3D70A3D70A;
                                end
                            end else begin
                                if (LE(Soil_pH, 64'h4013B851E0000000)) begin
                                    yield_f_reg = 64'h4021C7AE147AE148;
                                end else begin
                                    yield_f_reg = 64'h401F11EB851EB852;
                                end
                            end
                        end
                    end else begin
                        yield_f_reg = 64'h4025B33333333333;
                    end
                end else begin
                    if (LE(Fertilizer_Used, 64'h4074CEB850000000)) begin
                        if (LE(Humidity, 64'h4048AA3D70000000)) begin
                            if (LE(Sunlight_Hours, 64'h401B0A3D70000000)) begin
                                if (LE(Soil_Type, 64'h3FF0000000000000)) begin
                                    yield_f_reg = 64'h401C5C28F5C28F5C;
                                end else begin
                                    yield_f_reg = 64'h4020000000000000;
                                end
                            end else begin
                                if (LE(Altitude, 64'h408A540000000000)) begin
                                    yield_f_reg = 64'h402151EB851EB852;
                                end else begin
                                    yield_f_reg = 64'h4024266666666666;
                                end
                            end
                        end else begin
                            if (LE(P, 64'h4041000000000000)) begin
                                if (LE(Rainfall, 64'h409669A8F0000000)) begin
                                    yield_f_reg = 64'h4020DDDDDDDDDDDD;
                                end else begin
                                    yield_f_reg = 64'h4025051EB851EB85;
                                end
                            end else begin
                                if (LE(Rainfall, 64'h4086E970B0000000)) begin
                                    yield_f_reg = 64'h402334BC6A7EF9DA;
                                end else begin
                                    yield_f_reg = 64'h40252AAAAAAAAAAB;
                                end
                            end
                        end
                    end else begin
                        if (LE(Irrigation_Type, 64'h3FE0000000000000)) begin
                            yield_f_reg = 64'h4028DC28F5C28F5C;
                        end else begin
                            if (LE(P, 64'h4042400000000000)) begin
                                if (LE(Pesticide_Used, 64'h403075C290000000)) begin
                                    yield_f_reg = 64'h4026570A3D70A3D7;
                                end else begin
                                    yield_f_reg = 64'h4026D1EB851EB852;
                                end
                            end else begin
                                if (LE(P, 64'h4046800000000000)) begin
                                    yield_f_reg = 64'h40257AE147AE147B;
                                end else begin
                                    yield_f_reg = 64'h4025F0A3D70A3D71;
                                end
                            end
                        end
                    end
                end
            end else begin
                if (LE(Fertilizer_Used, 64'h406F382900000000)) begin
                    if (LE(Rainfall, 64'h4092C56150000000)) begin
                        if (LE(Organic_Carbon, 64'h3FF6000000000000)) begin
                            if (LE(Soil_pH, 64'h4014C28F50000000)) begin
                                if (LE(Rainfall, 64'h408ED5AE20000000)) begin
                                    yield_f_reg = 64'h4022222222222223;
                                end else begin
                                    yield_f_reg = 64'h40203851EB851EB8;
                                end
                            end else begin
                                if (LE(Soil_Moisture, 64'h404D233340000000)) begin
                                    yield_f_reg = 64'h4024A0C49BA5E354;
                                end else begin
                                    yield_f_reg = 64'h4022FFFFFFFFFFFF;
                                end
                            end
                        end else begin
                            if (LE(Wind_Speed, 64'h402FD999A0000000)) begin
                                if (LE(Soil_Moisture, 64'h404EC8F5C0000000)) begin
                                    yield_f_reg = 64'h401E369D0369D037;
                                end else begin
                                    yield_f_reg = 64'h402128F5C28F5C29;
                                end
                            end else begin
                                if (LE(Soil_Moisture, 64'h404ABC28F0000000)) begin
                                    yield_f_reg = 64'h4023C28F5C28F5C3;
                                end else begin
                                    yield_f_reg = 64'h402375C28F5C28F6;
                                end
                            end
                        end
                    end else begin
                        if (LE(N, 64'h4061500000000000)) begin
                            if (LE(Organic_Carbon, 64'h3FE8F5C290000000)) begin
                                if (LE(N, 64'h405A800000000000)) begin
                                    yield_f_reg = 64'h4023D1EB851EB852;
                                end else begin
                                    yield_f_reg = 64'h4024A06D3A06D3A0;
                                end
                            end else begin
                                if (LE(Humidity, 64'h40447E1480000000)) begin
                                    yield_f_reg = 64'h4021FAE147AE147B;
                                end else begin
                                    yield_f_reg = 64'h4022E9D0369D036A;
                                end
                            end
                        end else begin
                            if (LE(K, 64'h405AA00000000000)) begin
                                yield_f_reg = 64'h4027000000000000;
                            end else begin
                                yield_f_reg = 64'h4026CCCCCCCCCCCD;
                            end
                        end
                    end
                end else begin
                    if (LE(Organic_Carbon, 64'h3FDEB851F0000000)) begin
                        if (LE(N, 64'h405F000000000000)) begin
                            if (LE(P, 64'h4052200000000000)) begin
                                if (LE(Temperature, 64'h4033451EB8000000)) begin
                                    yield_f_reg = 64'h4021E66666666666;
                                end else begin
                                    yield_f_reg = 64'h40225C28F5C28F5C;
                                end
                            end else begin
                                yield_f_reg = 64'h40206B851EB851EC;
                            end
                        end else begin
                            if (LE(Soil_Moisture, 64'h404AA1EB80000000)) begin
                                yield_f_reg = 64'h4023BD70A3D70A3D;
                            end else begin
                                yield_f_reg = 64'h4025666666666666;
                            end
                        end
                    end else begin
                        if (LE(Soil_pH, 64'h402063D700000000)) begin
                            if (LE(Humidity, 64'h403F628F50000000)) begin
                                yield_f_reg = 64'h402AC28F5C28F5C3;
                            end else begin
                                if (LE(Rainfall, 64'h407A97EB90000000)) begin
                                    yield_f_reg = 64'h402287AE147AE148;
                                end else begin
                                    yield_f_reg = 64'h4025E01767DCE433;
                                end
                            end
                        end else begin
                            yield_f_reg = 64'h401FAE147AE147AE;
                        end
                    end
                end
            end
        end
    end else begin
        if (LE(Fertilizer_Used, 64'h4071C7EB80000000)) begin
            if (LE(Soil_Moisture, 64'h404611EB80000000)) begin
                if (LE(Wind_Speed, 64'h401675C290000000)) begin
                    if (LE(Fertilizer_Used, 64'h406A670A40000000)) begin
                        if (LE(Organic_Carbon, 64'h3FF2E147B0000000)) begin
                            if (LE(K, 64'h4055A00000000000)) begin
                                yield_f_reg = 64'h4024F0A3D70A3D71;
                            end else begin
                                yield_f_reg = 64'h402547AE147AE148;
                            end
                        end else begin
                            if (LE(Soil_pH, 64'h401E6B8520000000)) begin
                                yield_f_reg = 64'h40228F5C28F5C28F;
                            end else begin
                                yield_f_reg = 64'h402070A3D70A3D71;
                            end
                        end
                    end else begin
                        if (LE(P, 64'h4054C00000000000)) begin
                            if (LE(Region, 64'h400C000000000000)) begin
                                if (LE(Region, 64'h4004000000000000)) begin
                                    yield_f_reg = 64'h4025CD242E6BDC80;
                                end else begin
                                    yield_f_reg = 64'h40272B277F44C119;
                                end
                            end else begin
                                if (LE(Fertilizer_Used, 64'h406C7D1EC0000000)) begin
                                    yield_f_reg = 64'h4026F851EB851EB8;
                                end else begin
                                    yield_f_reg = 64'h402485D9F7390D29;
                                end
                            end
                        end else begin
                            if (LE(Rainfall, 64'h40A1B1B338000000)) begin
                                if (LE(Rainfall, 64'h409AABA8F0000000)) begin
                                    yield_f_reg = 64'h40220F5C28F5C28F;
                                end else begin
                                    yield_f_reg = 64'h4022DC28F5C28F5C;
                                end
                            end else begin
                                if (LE(Wind_Speed, 64'h400FCCCCD0000000)) begin
                                    yield_f_reg = 64'h4025570A3D70A3D7;
                                end else begin
                                    yield_f_reg = 64'h40247AE147AE147B;
                                end
                            end
                        end
                    end
                end else begin
                    if (LE(Rainfall, 64'h409C0B8000000000)) begin
                        if (LE(K, 64'h4058800000000000)) begin
                            if (LE(Humidity, 64'h40443A3D70000000)) begin
                                yield_f_reg = 64'h4022851EB851EB85;
                            end else begin
                                if (LE(P, 64'h4051800000000000)) begin
                                    yield_f_reg = 64'h4020BD70A3D70A3D;
                                end else begin
                                    yield_f_reg = 64'h401ED1EB851EB852;
                                end
                            end
                        end else begin
                            if (LE(Pesticide_Used, 64'h4033EE1480000000)) begin
                                if (LE(Temperature, 64'h402B3851E0000000)) begin
                                    yield_f_reg = 64'h4022E147AE147AE1;
                                end else begin
                                    yield_f_reg = 64'h4024D3A06D3A06D3;
                                end
                            end else begin
                                if (LE(Soil_Moisture, 64'h403B5999A0000000)) begin
                                    yield_f_reg = 64'h402219999999999A;
                                end else begin
                                    yield_f_reg = 64'h4020C28F5C28F5C2;
                                end
                            end
                        end
                    end else begin
                        if (LE(P, 64'h403C800000000000)) begin
                            if (LE(Humidity, 64'h4044228F50000000)) begin
                                if (LE(Wind_Speed, 64'h40230A3D70000000)) begin
                                    yield_f_reg = 64'h4021E147AE147AE1;
                                end else begin
                                    yield_f_reg = 64'h4025333333333334;
                                end
                            end else begin
                                if (LE(Humidity, 64'h4054642900000000)) begin
                                    yield_f_reg = 64'h4020FE898231BCB5;
                                end else begin
                                    yield_f_reg = 64'h402351EB851EB852;
                                end
                            end
                        end else begin
                            if (LE(Organic_Carbon, 64'h3FF90A3D70000000)) begin
                                if (LE(Fertilizer_Used, 64'h406F8CA3D0000000)) begin
                                    yield_f_reg = 64'h40244D2A6C405DA0;
                                end else begin
                                    yield_f_reg = 64'h4026347AE147AE15;
                                end
                            end else begin
                                if (LE(Rainfall, 64'h40A048FAE0000000)) begin
                                    yield_f_reg = 64'h4020428F5C28F5C3;
                                end else begin
                                    yield_f_reg = 64'h401E51EB851EB852;
                                end
                            end
                        end
                    end
                end
            end else begin
                if (LE(Rainfall, 64'h40A1194000000000)) begin
                    if (LE(Organic_Carbon, 64'h3FF19999A0000000)) begin
                        if (LE(Pesticide_Used, 64'h401B333330000000)) begin
                            if (LE(Soil_pH, 64'h4016666670000000)) begin
                                yield_f_reg = 64'h4022428F5C28F5C3;
                            end else begin
                                if (LE(Organic_Carbon, 64'h3FE947AE10000000)) begin
                                    yield_f_reg = 64'h4025C5F92C5F92C5;
                                end else begin
                                    yield_f_reg = 64'h4024AB851EB851EC;
                                end
                            end
                        end else begin
                            if (LE(Soil_pH, 64'h4018800000000000)) begin
                                if (LE(Pesticide_Used, 64'h4033066670000000)) begin
                                    yield_f_reg = 64'h4027DC28F5C28F5C;
                                end else begin
                                    yield_f_reg = 64'h402899999999999A;
                                end
                            end else begin
                                if (LE(Soil_Type, 64'h3FF0000000000000)) begin
                                    yield_f_reg = 64'h402762FC962FC963;
                                end else begin
                                    yield_f_reg = 64'h4025A7EF9DB22D0E;
                                end
                            end
                        end
                    end else begin
                        if (LE(P, 64'h4056C00000000000)) begin
                            if (LE(Sunlight_Hours, 64'h40160F5C30000000)) begin
                                if (LE(P, 64'h4047C00000000000)) begin
                                    yield_f_reg = 64'h4023B17E4B17E4B1;
                                end else begin
                                    yield_f_reg = 64'h40276147AE147AE1;
                                end
                            end else begin
                                if (LE(Altitude, 64'h4099A20000000000)) begin
                                    yield_f_reg = 64'h40220C28F5C28F5C;
                                end else begin
                                    yield_f_reg = 64'h4023D0A3D70A3D71;
                                end
                            end
                        end else begin
                            if (LE(Soil_Moisture, 64'h404C251EC0000000)) begin
                                yield_f_reg = 64'h4026B851EB851EB8;
                            end else begin
                                yield_f_reg = 64'h40270A3D70A3D70A;
                            end
                        end
                    end
                end else begin
                    if (LE(K, 64'h4053E00000000000)) begin
                        if (LE(Soil_pH, 64'h401D9EB850000000)) begin
                            if (LE(Humidity, 64'h4051575C30000000)) begin
                                if (LE(Wind_Speed, 64'h40294A3D70000000)) begin
                                    yield_f_reg = 64'h402705C28F5C28F7;
                                end else begin
                                    yield_f_reg = 64'h4027F851EB851EB8;
                                end
                            end else begin
                                if (LE(Organic_Carbon, 64'h3FEF333320000000)) begin
                                    yield_f_reg = 64'h402391EB851EB852;
                                end else begin
                                    yield_f_reg = 64'h4025B77777777778;
                                end
                            end
                        end else begin
                            if (LE(N, 64'h4050000000000000)) begin
                                yield_f_reg = 64'h402228F5C28F5C29;
                            end else begin
                                if (LE(Organic_Carbon, 64'h3FF2F5C290000000)) begin
                                    yield_f_reg = 64'h4024F0A3D70A3D71;
                                end else begin
                                    yield_f_reg = 64'h4023EB851EB851EC;
                                end
                            end
                        end
                    end else begin
                        if (LE(K, 64'h4057800000000000)) begin
                            if (LE(Rainfall, 64'h40A4268000000000)) begin
                                if (LE(Temperature, 64'h4032D99990000000)) begin
                                    yield_f_reg = 64'h4028B0A3D70A3D70;
                                end else begin
                                    yield_f_reg = 64'h40283851EB851EB8;
                                end
                            end else begin
                                if (LE(Soil_Moisture, 64'h40465AE150000000)) begin
                                    yield_f_reg = 64'h4029BD70A3D70A3D;
                                end else begin
                                    yield_f_reg = 64'h402911EB851EB852;
                                end
                            end
                        end else begin
                            if (LE(Soil_pH, 64'h401C4CCCC0000000)) begin
                                if (LE(Sunlight_Hours, 64'h4013EB8520000000)) begin
                                    yield_f_reg = 64'h402850369D0369D0;
                                end else begin
                                    yield_f_reg = 64'h4026B579BE02468B;
                                end
                            end else begin
                                if (LE(Soil_Moisture, 64'h40497851F0000000)) begin
                                    yield_f_reg = 64'h402423D70A3D70A4;
                                end else begin
                                    yield_f_reg = 64'h40252E147AE147AF;
                                end
                            end
                        end
                    end
                end
            end
        end else begin
            if (LE(N, 64'h4061500000000000)) begin
                if (LE(Rainfall, 64'h40A3DFB850000000)) begin
                    if (LE(P, 64'h4040400000000000)) begin
                        if (LE(Irrigation_Type, 64'h4004000000000000)) begin
                            if (LE(N, 64'h4051800000000000)) begin
                                if (LE(Altitude, 64'h409DB20000000000)) begin
                                    yield_f_reg = 64'h4022322D0E56041A;
                                end else begin
                                    yield_f_reg = 64'h4025D70A3D70A3D7;
                                end
                            end else begin
                                if (LE(N, 64'h4060900000000000)) begin
                                    yield_f_reg = 64'h4026351EB851EB85;
                                end else begin
                                    yield_f_reg = 64'h4023BAE147AE147B;
                                end
                            end
                        end else begin
                            if (LE(P, 64'h403E000000000000)) begin
                                yield_f_reg = 64'h401EF5C28F5C28F6;
                            end else begin
                                yield_f_reg = 64'h4020570A3D70A3D7;
                            end
                        end
                    end else begin
                        if (LE(Soil_pH, 64'h40203D70A0000000)) begin
                            if (LE(Humidity, 64'h405679EB80000000)) begin
                                if (LE(Organic_Carbon, 64'h3FF90A3D70000000)) begin
                                    yield_f_reg = 64'h4026204FB4B8DF9D;
                                end else begin
                                    yield_f_reg = 64'h4028EB851EB851EC;
                                end
                            end else begin
                                yield_f_reg = 64'h4020F0A3D70A3D71;
                            end
                        end else begin
                            if (LE(Altitude, 64'h408DCC0000000000)) begin
                                yield_f_reg = 64'h40218A3D70A3D70A;
                            end else begin
                                if (LE(P, 64'h4043400000000000)) begin
                                    yield_f_reg = 64'h4022A3D70A3D70A4;
                                end else begin
                                    yield_f_reg = 64'h4022800000000000;
                                end
                            end
                        end
                    end
                end else begin
                    if (LE(Pesticide_Used, 64'h4025DC2900000000)) begin
                        if (LE(N, 64'h404C400000000000)) begin
                            if (LE(Wind_Speed, 64'h4022E66660000000)) begin
                                if (LE(Altitude, 64'h409C3C0000000000)) begin
                                    yield_f_reg = 64'h402423D70A3D70A4;
                                end else begin
                                    yield_f_reg = 64'h402419999999999A;
                                end
                            end else begin
                                yield_f_reg = 64'h402475C28F5C28F6;
                            end
                        end else begin
                            if (LE(Wind_Speed, 64'h4012B851F0000000)) begin
                                yield_f_reg = 64'h402A99999999999A;
                            end else begin
                                if (LE(Wind_Speed, 64'h402F1EB860000000)) begin
                                    yield_f_reg = 64'h40271DFD13046379;
                                end else begin
                                    yield_f_reg = 64'h40241EB851EB851F;
                                end
                            end
                        end
                    end else begin
                        if (LE(N, 64'h4053E00000000000)) begin
                            if (LE(Humidity, 64'h404E233330000000)) begin
                                if (LE(Sunlight_Hours, 64'h4011851EB0000000)) begin
                                    yield_f_reg = 64'h4029EB851EB851EC;
                                end else begin
                                    yield_f_reg = 64'h402891EB851EB852;
                                end
                            end else begin
                                if (LE(Fertilizer_Used, 64'h4074798520000000)) begin
                                    yield_f_reg = 64'h40282740DA740DA8;
                                end else begin
                                    yield_f_reg = 64'h4026AB851EB851EC;
                                end
                            end
                        end else begin
                            yield_f_reg = 64'h402C666666666666;
                        end
                    end
                end
            end else begin
                if (LE(Soil_Moisture, 64'h404620A3E0000000)) begin
                    if (LE(Soil_pH, 64'h40166147B0000000)) begin
                        if (LE(Temperature, 64'h40408CCCC8000000)) begin
                            if (LE(Humidity, 64'h404ECD70A0000000)) begin
                                yield_f_reg = 64'h402628F5C28F5C29;
                            end else begin
                                yield_f_reg = 64'h4025E147AE147AE1;
                            end
                        end else begin
                            if (LE(Altitude, 64'h4094C40000000000)) begin
                                yield_f_reg = 64'h4022E66666666666;
                            end else begin
                                yield_f_reg = 64'h40236147AE147AE1;
                            end
                        end
                    end else begin
                        if (LE(Altitude, 64'h409D120000000000)) begin
                            if (LE(Organic_Carbon, 64'h3FEB333330000000)) begin
                                if (LE(Temperature, 64'h403B0CCCD0000000)) begin
                                    yield_f_reg = 64'h4025AE147AE147AE;
                                end else begin
                                    yield_f_reg = 64'h402647AE147AE148;
                                end
                            end else begin
                                if (LE(K, 64'h405EA00000000000)) begin
                                    yield_f_reg = 64'h4028483FB72EA61C;
                                end else begin
                                    yield_f_reg = 64'h4026D1EB851EB853;
                                end
                            end
                        end else begin
                            if (LE(K, 64'h4052600000000000)) begin
                                yield_f_reg = 64'h4024A3D70A3D70A4;
                            end else begin
                                yield_f_reg = 64'h4025A3D70A3D70A4;
                            end
                        end
                    end
                end else begin
                    if (LE(Soil_pH, 64'h4017051EB0000000)) begin
                        if (LE(N, 64'h4063000000000000)) begin
                            if (LE(Sunlight_Hours, 64'h4020D47AE8000000)) begin
                                yield_f_reg = 64'h4028051EB851EB85;
                            end else begin
                                yield_f_reg = 64'h4027B851EB851EB8;
                            end
                        end else begin
                            if (LE(Season, 64'h3FE0000000000000)) begin
                                yield_f_reg = 64'h4026B851EB851EB8;
                            end else begin
                                if (LE(Organic_Carbon, 64'h3FF27AE140000000)) begin
                                    yield_f_reg = 64'h40270F5C28F5C28F;
                                end else begin
                                    yield_f_reg = 64'h4026E66666666666;
                                end
                            end
                        end
                    end else begin
                        if (LE(Pesticide_Used, 64'h402535C290000000)) begin
                            if (LE(Soil_pH, 64'h4017D70A40000000)) begin
                                yield_f_reg = 64'h4029B33333333333;
                            end else begin
                                if (LE(Soil_Moisture, 64'h404CCEB850000000)) begin
                                    yield_f_reg = 64'h402A3A06D3A06D3B;
                                end else begin
                                    yield_f_reg = 64'h402A666666666666;
                                end
                            end
                        end else begin
                            if (LE(Altitude, 64'h40830C0000000000)) begin
                                if (LE(K, 64'h405F000000000000)) begin
                                    yield_f_reg = 64'h4027DC28F5C28F5C;
                                end else begin
                                    yield_f_reg = 64'h4026F5C28F5C28F6;
                                end
                            end else begin
                                if (LE(Organic_Carbon, 64'h3FF370A3D8000000)) begin
                                    yield_f_reg = 64'h40293D70A3D70A3E;
                                end else begin
                                    yield_f_reg = 64'h4028CCCCCCCCCCCD;
                                end
                            end
                        end
                    end
                end
            end
        end
    end
end
