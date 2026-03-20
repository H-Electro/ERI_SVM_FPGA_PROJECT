if (LE(Fertilizer_Used, 64'h406DDF8510000000)) begin
    if (LE(Rainfall, 64'h40954E4290000000)) begin
        if (LE(Fertilizer_Used, 64'h405F8D1EB0000000)) begin
            if (LE(Soil_Moisture, 64'h404291EB80000000)) begin
                if (LE(Temperature, 64'h404173D700000000)) begin
                    if (LE(K, 64'h4058E00000000000)) begin
                        if (LE(N, 64'h405DA00000000000)) begin
                            if (LE(Rainfall, 64'h408674EB80000000)) begin
                                if (LE(Altitude, 64'h40817C0000000000)) begin
                                    yield_f_reg = 64'h4035666666666666;
                                end else begin
                                    yield_f_reg = 64'h403495810624DD2F;
                                end
                            end else begin
                                if (LE(Altitude, 64'h4077100000000000)) begin
                                    yield_f_reg = 64'h40371C28F5C28F5C;
                                end else begin
                                    yield_f_reg = 64'h4035C1CAC083126E;
                                end
                            end
                        end else begin
                            if (LE(Soil_pH, 64'h401BE66660000000)) begin
                                if (LE(Season, 64'h3FE0000000000000)) begin
                                    yield_f_reg = 64'h403707AE147AE148;
                                end else begin
                                    yield_f_reg = 64'h40368F5C28F5C28F;
                                end
                            end else begin
                                if (LE(Soil_pH, 64'h401F1EB850000000)) begin
                                    yield_f_reg = 64'h40361D70A3D70A3E;
                                end else begin
                                    yield_f_reg = 64'h40356B851EB851EC;
                                end
                            end
                        end
                    end else begin
                        if (LE(Soil_Type, 64'h3FF8000000000000)) begin
                            if (LE(Sunlight_Hours, 64'h401D333330000000)) begin
                                if (LE(Pesticide_Used, 64'h402570A3E4000000)) begin
                                    yield_f_reg = 64'h4036E66666666666;
                                end else begin
                                    yield_f_reg = 64'h40375EB851EB851F;
                                end
                            end else begin
                                if (LE(Sunlight_Hours, 64'h4020999998000000)) begin
                                    yield_f_reg = 64'h403811EB851EB852;
                                end else begin
                                    yield_f_reg = 64'h4037C51EB851EB85;
                                end
                            end
                        end else begin
                            if (LE(Temperature, 64'h40366CCCD0000000)) begin
                                if (LE(Soil_pH, 64'h401E000000000000)) begin
                                    yield_f_reg = 64'h40372147AE147AE1;
                                end else begin
                                    yield_f_reg = 64'h4036733333333333;
                                end
                            end else begin
                                if (LE(Fertilizer_Used, 64'h4052E99990000000)) begin
                                    yield_f_reg = 64'h4037051EB851EB85;
                                end else begin
                                    yield_f_reg = 64'h40355EB851EB851E;
                                end
                            end
                        end
                    end
                end else begin
                    if (LE(Wind_Speed, 64'h402D70A3D0000000)) begin
                        if (LE(Fertilizer_Used, 64'h4056E6B850000000)) begin
                            if (LE(Humidity, 64'h4046A851E0000000)) begin
                                if (LE(Altitude, 64'h40A07C0000000000)) begin
                                    yield_f_reg = 64'h40374F5C28F5C28F;
                                end else begin
                                    yield_f_reg = 64'h40375EB851EB851F;
                                end
                            end else begin
                                if (LE(Sunlight_Hours, 64'h40213851F0000000)) begin
                                    yield_f_reg = 64'h4036B69D0369D037;
                                end else begin
                                    yield_f_reg = 64'h40362B851EB851EC;
                                end
                            end
                        end else begin
                            if (LE(P, 64'h404B400000000000)) begin
                                if (LE(Irrigation_Type, 64'h3FF8000000000000)) begin
                                    yield_f_reg = 64'h4037B5C28F5C28F6;
                                end else begin
                                    yield_f_reg = 64'h40374BF258BF258C;
                                end
                            end else begin
                                if (LE(P, 64'h4051A00000000000)) begin
                                    yield_f_reg = 64'h4038A147AE147AE1;
                                end else begin
                                    yield_f_reg = 64'h4037770A3D70A3D7;
                                end
                            end
                        end
                    end else begin
                        if (LE(Season, 64'h3FF0000000000000)) begin
                            yield_f_reg = 64'h4035B851EB851EB8;
                        end else begin
                            if (LE(Soil_Type, 64'h3FF0000000000000)) begin
                                yield_f_reg = 64'h403530A3D70A3D71;
                            end else begin
                                yield_f_reg = 64'h4034D47AE147AE14;
                            end
                        end
                    end
                end
            end else begin
                if (LE(K, 64'h4042400000000000)) begin
                    if (LE(Humidity, 64'h404807AE20000000)) begin
                        if (LE(Sunlight_Hours, 64'h40248F5C20000000)) begin
                            if (LE(Humidity, 64'h404595C290000000)) begin
                                yield_f_reg = 64'h40356147AE147AE1;
                            end else begin
                                yield_f_reg = 64'h40356B851EB851EC;
                            end
                        end else begin
                            yield_f_reg = 64'h4034570A3D70A3D7;
                        end
                    end else begin
                        if (LE(Pesticide_Used, 64'h402387AE10000000)) begin
                            if (LE(N, 64'h4055C00000000000)) begin
                                yield_f_reg = 64'h40370F5C28F5C28F;
                            end else begin
                                if (LE(Pesticide_Used, 64'h4016428F60000000)) begin
                                    yield_f_reg = 64'h4037BD70A3D70A3D;
                                end else begin
                                    yield_f_reg = 64'h4037F33333333333;
                                end
                            end
                        end else begin
                            if (LE(Wind_Speed, 64'h400EB851F0000000)) begin
                                yield_f_reg = 64'h403599999999999A;
                            end else begin
                                if (LE(Altitude, 64'h409A8A0000000000)) begin
                                    yield_f_reg = 64'h403695C28F5C28F6;
                                end else begin
                                    yield_f_reg = 64'h40363AE147AE147B;
                                end
                            end
                        end
                    end
                end else begin
                    if (LE(N, 64'h4060B00000000000)) begin
                        if (LE(P, 64'h403C800000000000)) begin
                            if (LE(K, 64'h405BC00000000000)) begin
                                if (LE(Pesticide_Used, 64'h3FEC51EB80000000)) begin
                                    yield_f_reg = 64'h40390A3D70A3D70A;
                                end else begin
                                    yield_f_reg = 64'h40387C28F5C28F5C;
                                end
                            end else begin
                                if (LE(Irrigation_Type, 64'h3FF8000000000000)) begin
                                    yield_f_reg = 64'h40378E147AE147AE;
                                end else begin
                                    yield_f_reg = 64'h4037F851EB851EB8;
                                end
                            end
                        end else begin
                            if (LE(Rainfall, 64'h40772DAE10000000)) begin
                                if (LE(Soil_Moisture, 64'h404695C290000000)) begin
                                    yield_f_reg = 64'h403711EB851EB852;
                                end else begin
                                    yield_f_reg = 64'h4035A81B4E81B4E8;
                                end
                            end else begin
                                if (LE(Soil_pH, 64'h4017570A40000000)) begin
                                    yield_f_reg = 64'h4036BAAEDE211545;
                                end else begin
                                    yield_f_reg = 64'h403797851EB851ED;
                                end
                            end
                        end
                    end else begin
                        if (LE(Soil_Type, 64'h3FE0000000000000)) begin
                            if (LE(Sunlight_Hours, 64'h401B851EB0000000)) begin
                                yield_f_reg = 64'h4039147AE147AE14;
                            end else begin
                                yield_f_reg = 64'h403991EB851EB852;
                            end
                        end else begin
                            if (LE(Irrigation_Type, 64'h4004000000000000)) begin
                                if (LE(N, 64'h4061100000000000)) begin
                                    yield_f_reg = 64'h403951EB851EB852;
                                end else begin
                                    yield_f_reg = 64'h40383B4E81B4E81B;
                                end
                            end else begin
                                if (LE(Soil_pH, 64'h401F0F5C30000000)) begin
                                    yield_f_reg = 64'h40375851EB851EB8;
                                end else begin
                                    yield_f_reg = 64'h4037BD70A3D70A3D;
                                end
                            end
                        end
                    end
                end
            end
        end else begin
            if (LE(Soil_Moisture, 64'h403CFEB850000000)) begin
                if (LE(Soil_pH, 64'h401BEB8520000000)) begin
                    if (LE(Soil_pH, 64'h401851EB80000000)) begin
                        if (LE(Temperature, 64'h4034CF5C30000000)) begin
                            if (LE(P, 64'h4053400000000000)) begin
                                if (LE(Sunlight_Hours, 64'h401928F5C0000000)) begin
                                    yield_f_reg = 64'h4036FEB851EB851F;
                                end else begin
                                    yield_f_reg = 64'h4037D55555555555;
                                end
                            end else begin
                                if (LE(Soil_Type, 64'h3FE0000000000000)) begin
                                    yield_f_reg = 64'h4039666666666666;
                                end else begin
                                    yield_f_reg = 64'h4039AB851EB851EC;
                                end
                            end
                        end else begin
                            if (LE(Temperature, 64'h403ED70A40000000)) begin
                                if (LE(P, 64'h4036000000000000)) begin
                                    yield_f_reg = 64'h4036CCCCCCCCCCCD;
                                end else begin
                                    yield_f_reg = 64'h403557E4B17E4B18;
                                end
                            end else begin
                                if (LE(Sunlight_Hours, 64'h401EE66660000000)) begin
                                    yield_f_reg = 64'h4037428F5C28F5C3;
                                end else begin
                                    yield_f_reg = 64'h4036566666666666;
                                end
                            end
                        end
                    end else begin
                        if (LE(N, 64'h4054E00000000000)) begin
                            if (LE(Organic_Carbon, 64'h3FF6000000000000)) begin
                                if (LE(Sunlight_Hours, 64'h401E999990000000)) begin
                                    yield_f_reg = 64'h4037800000000000;
                                end else begin
                                    yield_f_reg = 64'h4037E4B17E4B17E5;
                                end
                            end else begin
                                if (LE(Fertilizer_Used, 64'h406B4D47B0000000)) begin
                                    yield_f_reg = 64'h4036E147AE147AE1;
                                end else begin
                                    yield_f_reg = 64'h403730A3D70A3D71;
                                end
                            end
                        end else begin
                            if (LE(Temperature, 64'h403BF0A3D0000000)) begin
                                if (LE(Rainfall, 64'h40866E3D70000000)) begin
                                    yield_f_reg = 64'h4037866666666666;
                                end else begin
                                    yield_f_reg = 64'h4038E1CAC083126E;
                                end
                            end else begin
                                if (LE(Wind_Speed, 64'h401AC7AE10000000)) begin
                                    yield_f_reg = 64'h403A828F5C28F5C3;
                                end else begin
                                    yield_f_reg = 64'h4039FC28F5C28F5C;
                                end
                            end
                        end
                    end
                end else begin
                    if (LE(Soil_Moisture, 64'h403647AE10000000)) begin
                        if (LE(Rainfall, 64'h4088176660000000)) begin
                            if (LE(K, 64'h4053E00000000000)) begin
                                if (LE(Soil_pH, 64'h401D2E1480000000)) begin
                                    yield_f_reg = 64'h40360A3D70A3D70A;
                                end else begin
                                    yield_f_reg = 64'h403510369D0369D0;
                                end
                            end else begin
                                if (LE(Rainfall, 64'h4077EA1480000000)) begin
                                    yield_f_reg = 64'h40360E147AE147AE;
                                end else begin
                                    yield_f_reg = 64'h4036A47AE147AE14;
                                end
                            end
                        end else begin
                            if (LE(Rainfall, 64'h4093DC70B0000000)) begin
                                if (LE(Soil_pH, 64'h401F000000000000)) begin
                                    yield_f_reg = 64'h4036F33333333333;
                                end else begin
                                    yield_f_reg = 64'h4036400000000000;
                                end
                            end else begin
                                yield_f_reg = 64'h4038266666666666;
                            end
                        end
                    end else begin
                        if (LE(Sunlight_Hours, 64'h4011CCCCD0000000)) begin
                            yield_f_reg = 64'h4034C28F5C28F5C3;
                        end else begin
                            if (LE(Altitude, 64'h40814C0000000000)) begin
                                if (LE(Wind_Speed, 64'h4020BAE150000000)) begin
                                    yield_f_reg = 64'h40362147AE147AE1;
                                end else begin
                                    yield_f_reg = 64'h4036D1EB851EB852;
                                end
                            end else begin
                                if (LE(N, 64'h4062F00000000000)) begin
                                    yield_f_reg = 64'h40379645A1CAC083;
                                end else begin
                                    yield_f_reg = 64'h4038851EB851EB85;
                                end
                            end
                        end
                    end
                end
            end else begin
                if (LE(Soil_Moisture, 64'h404C8B8520000000)) begin
                    if (LE(Altitude, 64'h4071400000000000)) begin
                        if (LE(Soil_Type, 64'h3FE0000000000000)) begin
                            if (LE(Altitude, 64'h404B800000000000)) begin
                                if (LE(Region, 64'h3FE0000000000000)) begin
                                    yield_f_reg = 64'h403A59999999999A;
                                end else begin
                                    yield_f_reg = 64'h403A4CCCCCCCCCCD;
                                end
                            end else begin
                                if (LE(Soil_pH, 64'h4018000000000000)) begin
                                    yield_f_reg = 64'h403919999999999A;
                                end else begin
                                    yield_f_reg = 64'h4039A7AE147AE148;
                                end
                            end
                        end else begin
                            if (LE(Humidity, 64'h404EA99990000000)) begin
                                if (LE(Sunlight_Hours, 64'h401F70A3D0000000)) begin
                                    yield_f_reg = 64'h4038AB851EB851EC;
                                end else begin
                                    yield_f_reg = 64'h40378CCCCCCCCCCC;
                                end
                            end else begin
                                if (LE(Region, 64'h4004000000000000)) begin
                                    yield_f_reg = 64'h403970A3D70A3D70;
                                end else begin
                                    yield_f_reg = 64'h4038F0A3D70A3D70;
                                end
                            end
                        end
                    end else begin
                        if (LE(Fertilizer_Used, 64'h4068C1EB90000000)) begin
                            if (LE(Humidity, 64'h403F133330000000)) begin
                                if (LE(Soil_pH, 64'h401C28F5C0000000)) begin
                                    yield_f_reg = 64'h40396B851EB851EC;
                                end else begin
                                    yield_f_reg = 64'h403AB5C28F5C28F6;
                                end
                            end else begin
                                if (LE(Wind_Speed, 64'h40306B8520000000)) begin
                                    yield_f_reg = 64'h40378962FC962FC9;
                                end else begin
                                    yield_f_reg = 64'h4038F258BF258BF3;
                                end
                            end
                        end else begin
                            if (LE(P, 64'h404DC00000000000)) begin
                                if (LE(Humidity, 64'h4042233330000000)) begin
                                    yield_f_reg = 64'h4036B9999999999A;
                                end else begin
                                    yield_f_reg = 64'h403833B645A1CAC0;
                                end
                            end else begin
                                if (LE(Season, 64'h3FE0000000000000)) begin
                                    yield_f_reg = 64'h40396189374BC6A8;
                                end else begin
                                    yield_f_reg = 64'h4038864D319FE6CB;
                                end
                            end
                        end
                    end
                end else begin
                    if (LE(Soil_Moisture, 64'h404D8999A0000000)) begin
                        if (LE(Sunlight_Hours, 64'h401B28F5C0000000)) begin
                            if (LE(Soil_Moisture, 64'h404D41EB80000000)) begin
                                if (LE(N, 64'h404A800000000000)) begin
                                    yield_f_reg = 64'h403AA147AE147AE1;
                                end else begin
                                    yield_f_reg = 64'h403A5EB851EB851F;
                                end
                            end else begin
                                if (LE(Fertilizer_Used, 64'h4067D47AE0000000)) begin
                                    yield_f_reg = 64'h4039FAE147AE147B;
                                end else begin
                                    yield_f_reg = 64'h4039F851EB851EB8;
                                end
                            end
                        end else begin
                            if (LE(Fertilizer_Used, 64'h406A307AF0000000)) begin
                                if (LE(Irrigation_Type, 64'h3FF8000000000000)) begin
                                    yield_f_reg = 64'h4039ACCCCCCCCCCC;
                                end else begin
                                    yield_f_reg = 64'h40396E147AE147AE;
                                end
                            end else begin
                                if (LE(Organic_Carbon, 64'h3FE75C28F0000000)) begin
                                    yield_f_reg = 64'h403851EB851EB852;
                                end else begin
                                    yield_f_reg = 64'h4038947AE147AE14;
                                end
                            end
                        end
                    end else begin
                        if (LE(Altitude, 64'h409F320000000000)) begin
                            if (LE(Pesticide_Used, 64'h4036E66670000000)) begin
                                if (LE(Fertilizer_Used, 64'h4062530A40000000)) begin
                                    yield_f_reg = 64'h403857E4B17E4B18;
                                end else begin
                                    yield_f_reg = 64'h4039694D242E6BDC;
                                end
                            end else begin
                                if (LE(Organic_Carbon, 64'h3FED47AE10000000)) begin
                                    yield_f_reg = 64'h4037E8F5C28F5C29;
                                end else begin
                                    yield_f_reg = 64'h403759999999999A;
                                end
                            end
                        end else begin
                            if (LE(P, 64'h4053E00000000000)) begin
                                yield_f_reg = 64'h40382147AE147AE1;
                            end else begin
                                if (LE(Sunlight_Hours, 64'h402028F5B8000000)) begin
                                    yield_f_reg = 64'h4036F0A3D70A3D71;
                                end else begin
                                    yield_f_reg = 64'h4036B0A3D70A3D71;
                                end
                            end
                        end
                    end
                end
            end
        end
    end else begin
        if (LE(Soil_Moisture, 64'h4046D51EB0000000)) begin
            if (LE(Rainfall, 64'h40A02E5710000000)) begin
                if (LE(Wind_Speed, 64'h402A8CCCD0000000)) begin
                    if (LE(Fertilizer_Used, 64'h4060647AE0000000)) begin
                        if (LE(P, 64'h4058800000000000)) begin
                            if (LE(Organic_Carbon, 64'h3FF6A3D700000000)) begin
                                if (LE(Rainfall, 64'h409984A3E0000000)) begin
                                    yield_f_reg = 64'h4036D051EB851EB8;
                                end else begin
                                    yield_f_reg = 64'h4037F9CC032698CF;
                                end
                            end else begin
                                if (LE(Altitude, 64'h4098840000000000)) begin
                                    yield_f_reg = 64'h4038AA3D70A3D70A;
                                end else begin
                                    yield_f_reg = 64'h4039CE147AE147AE;
                                end
                            end
                        end else begin
                            yield_f_reg = 64'h403AD47AE147AE14;
                        end
                    end else begin
                        if (LE(Pesticide_Used, 64'h400DCCCCC0000000)) begin
                            if (LE(K, 64'h405D800000000000)) begin
                                if (LE(Irrigation_Type, 64'h3FE0000000000000)) begin
                                    yield_f_reg = 64'h4037D47AE147AE14;
                                end else begin
                                    yield_f_reg = 64'h4036F851EB851EB9;
                                end
                            end else begin
                                yield_f_reg = 64'h403A2B851EB851EC;
                            end
                        end else begin
                            if (LE(Sunlight_Hours, 64'h4024C7AE10000000)) begin
                                if (LE(Rainfall, 64'h409DB4E140000000)) begin
                                    yield_f_reg = 64'h40396E93E93E93E9;
                                end else begin
                                    yield_f_reg = 64'h40384F5C28F5C28F;
                                end
                            end else begin
                                if (LE(Fertilizer_Used, 64'h406645EB80000000)) begin
                                    yield_f_reg = 64'h4038ACCCCCCCCCCD;
                                end else begin
                                    yield_f_reg = 64'h4037400000000000;
                                end
                            end
                        end
                    end
                end else begin
                    if (LE(N, 64'h4063900000000000)) begin
                        if (LE(Humidity, 64'h404E2D70B0000000)) begin
                            if (LE(P, 64'h4058200000000000)) begin
                                if (LE(Soil_pH, 64'h4020333330000000)) begin
                                    yield_f_reg = 64'h4037C869536202EC;
                                end else begin
                                    yield_f_reg = 64'h4036028F5C28F5C3;
                                end
                            end else begin
                                if (LE(P, 64'h4058600000000000)) begin
                                    yield_f_reg = 64'h4038DEB851EB851F;
                                end else begin
                                    yield_f_reg = 64'h40397AE147AE147B;
                                end
                            end
                        end else begin
                            if (LE(Humidity, 64'h405241EB90000000)) begin
                                if (LE(N, 64'h405A400000000000)) begin
                                    yield_f_reg = 64'h4035F9DB22D0E560;
                                end else begin
                                    yield_f_reg = 64'h40372C28F5C28F5D;
                                end
                            end else begin
                                if (LE(Soil_Moisture, 64'h4042ED70A0000000)) begin
                                    yield_f_reg = 64'h4037DB22D0E56042;
                                end else begin
                                    yield_f_reg = 64'h4035E66666666666;
                                end
                            end
                        end
                    end else begin
                        if (LE(Sunlight_Hours, 64'h401C947AE0000000)) begin
                            if (LE(Altitude, 64'h409B4C0000000000)) begin
                                if (LE(Soil_pH, 64'h4018FAE150000000)) begin
                                    yield_f_reg = 64'h403703D70A3D70A4;
                                end else begin
                                    yield_f_reg = 64'h4037C369D0369D04;
                                end
                            end else begin
                                yield_f_reg = 64'h40397AE147AE147B;
                            end
                        end else begin
                            if (LE(K, 64'h4054E00000000000)) begin
                                if (LE(N, 64'h4064E00000000000)) begin
                                    yield_f_reg = 64'h403963D70A3D70A4;
                                end else begin
                                    yield_f_reg = 64'h4039D47AE147AE14;
                                end
                            end else begin
                                if (LE(Organic_Carbon, 64'h3FF0E147B0000000)) begin
                                    yield_f_reg = 64'h403A8A3D70A3D70A;
                                end else begin
                                    yield_f_reg = 64'h403B8CCCCCCCCCCD;
                                end
                            end
                        end
                    end
                end
            end else begin
                if (LE(Fertilizer_Used, 64'h40600DEB90000000)) begin
                    if (LE(Soil_Moisture, 64'h40354F5C30000000)) begin
                        if (LE(Pesticide_Used, 64'h402375C290000000)) begin
                            if (LE(K, 64'h4057600000000000)) begin
                                if (LE(Organic_Carbon, 64'h3FD75C28F0000000)) begin
                                    yield_f_reg = 64'h403675C28F5C28F6;
                                end else begin
                                    yield_f_reg = 64'h40363EB851EB851E;
                                end
                            end else begin
                                yield_f_reg = 64'h403707AE147AE148;
                            end
                        end else begin
                            if (LE(Altitude, 64'h409C860000000000)) begin
                                if (LE(Temperature, 64'h403E133340000000)) begin
                                    yield_f_reg = 64'h4037C147AE147AE2;
                                end else begin
                                    yield_f_reg = 64'h40384B851EB851EC;
                                end
                            end else begin
                                yield_f_reg = 64'h4038F5C28F5C28F6;
                            end
                        end
                    end else begin
                        if (LE(Soil_pH, 64'h401D23D710000000)) begin
                            if (LE(P, 64'h404BC00000000000)) begin
                                if (LE(Fertilizer_Used, 64'h4058138510000000)) begin
                                    yield_f_reg = 64'h4039547AE147AE15;
                                end else begin
                                    yield_f_reg = 64'h4038428F5C28F5C3;
                                end
                            end else begin
                                if (LE(Fertilizer_Used, 64'h40595851E0000000)) begin
                                    yield_f_reg = 64'h40391DFD1304637A;
                                end else begin
                                    yield_f_reg = 64'h4039EAAAAAAAAAAB;
                                end
                            end
                        end else begin
                            if (LE(Altitude, 64'h4098DE0000000000)) begin
                                if (LE(Irrigation_Type, 64'h3FE0000000000000)) begin
                                    yield_f_reg = 64'h4038766666666666;
                                end else begin
                                    yield_f_reg = 64'h40374320FEDCBA97;
                                end
                            end else begin
                                if (LE(Altitude, 64'h409E520000000000)) begin
                                    yield_f_reg = 64'h40387851EB851EB8;
                                end else begin
                                    yield_f_reg = 64'h40393D70A3D70A3D;
                                end
                            end
                        end
                    end
                end else begin
                    if (LE(P, 64'h4054000000000000)) begin
                        if (LE(Organic_Carbon, 64'h3FD3D70A40000000)) begin
                            yield_f_reg = 64'h403687AE147AE148;
                        end else begin
                            if (LE(Soil_Moisture, 64'h402FBD70B0000000)) begin
                                yield_f_reg = 64'h4036947AE147AE14;
                            end else begin
                                if (LE(Wind_Speed, 64'h400970A3E0000000)) begin
                                    yield_f_reg = 64'h403A2A6C405D9F75;
                                end else begin
                                    yield_f_reg = 64'h40392F1FF9500A07;
                                end
                            end
                        end
                    end else begin
                        if (LE(Rainfall, 64'h40A5284CC0000000)) begin
                            if (LE(Organic_Carbon, 64'h3FE947AE10000000)) begin
                                if (LE(N, 64'h4051E00000000000)) begin
                                    yield_f_reg = 64'h403851EB851EB852;
                                end else begin
                                    yield_f_reg = 64'h4039D4E81B4E81B4;
                                end
                            end else begin
                                if (LE(Altitude, 64'h409F040000000000)) begin
                                    yield_f_reg = 64'h403AF654320FEDCC;
                                end else begin
                                    yield_f_reg = 64'h40392B851EB851EC;
                                end
                            end
                        end else begin
                            if (LE(Fertilizer_Used, 64'h40661AB850000000)) begin
                                yield_f_reg = 64'h403830A3D70A3D71;
                            end else begin
                                yield_f_reg = 64'h403859999999999A;
                            end
                        end
                    end
                end
            end
        end else begin
            if (LE(Fertilizer_Used, 64'h405BA51EB0000000)) begin
                if (LE(Rainfall, 64'h40A173D1F0000000)) begin
                    if (LE(Soil_Moisture, 64'h404887AE10000000)) begin
                        if (LE(Rainfall, 64'h4098F1A8F0000000)) begin
                            if (LE(Altitude, 64'h409A060000000000)) begin
                                yield_f_reg = 64'h403A170A3D70A3D7;
                            end else begin
                                yield_f_reg = 64'h4039733333333333;
                            end
                        end else begin
                            if (LE(Fertilizer_Used, 64'h4053247AE0000000)) begin
                                yield_f_reg = 64'h4038451EB851EB85;
                            end else begin
                                if (LE(Wind_Speed, 64'h4023E66668000000)) begin
                                    yield_f_reg = 64'h4039466666666666;
                                end else begin
                                    yield_f_reg = 64'h4038E00000000000;
                                end
                            end
                        end
                    end else begin
                        if (LE(Organic_Carbon, 64'h3FF83D70A0000000)) begin
                            if (LE(Rainfall, 64'h409A23D710000000)) begin
                                if (LE(P, 64'h404D400000000000)) begin
                                    yield_f_reg = 64'h4037F5C28F5C28F6;
                                end else begin
                                    yield_f_reg = 64'h403714FDF3B645A2;
                                end
                            end else begin
                                if (LE(Sunlight_Hours, 64'h40123D70B0000000)) begin
                                    yield_f_reg = 64'h4039AB851EB851EC;
                                end else begin
                                    yield_f_reg = 64'h403844D5E6F8091A;
                                end
                            end
                        end else begin
                            if (LE(Pesticide_Used, 64'h40308E1478000000)) begin
                                yield_f_reg = 64'h4036B5C28F5C28F6;
                            end else begin
                                yield_f_reg = 64'h4035947AE147AE14;
                            end
                        end
                    end
                end else begin
                    if (LE(Temperature, 64'h403F0147B0000000)) begin
                        if (LE(Altitude, 64'h4099720000000000)) begin
                            if (LE(Soil_Type, 64'h3FE0000000000000)) begin
                                if (LE(Fertilizer_Used, 64'h40571AE150000000)) begin
                                    yield_f_reg = 64'h40396B851EB851EC;
                                end else begin
                                    yield_f_reg = 64'h4038C00000000000;
                                end
                            end else begin
                                if (LE(Wind_Speed, 64'h4018C7AE10000000)) begin
                                    yield_f_reg = 64'h403B2CCCCCCCCCCD;
                                end else begin
                                    yield_f_reg = 64'h403A75C28F5C28F6;
                                end
                            end
                        end else begin
                            if (LE(N, 64'h4054400000000000)) begin
                                yield_f_reg = 64'h4039851EB851EB85;
                            end else begin
                                if (LE(Organic_Carbon, 64'h3FEF851EB0000000)) begin
                                    yield_f_reg = 64'h4038A66666666666;
                                end else begin
                                    yield_f_reg = 64'h4038E8F5C28F5C29;
                                end
                            end
                        end
                    end else begin
                        if (LE(Irrigation_Type, 64'h4004000000000000)) begin
                            if (LE(Soil_Type, 64'h3FF0000000000000)) begin
                                yield_f_reg = 64'h4038147AE147AE14;
                            end else begin
                                yield_f_reg = 64'h40381EB851EB851F;
                            end
                        end else begin
                            yield_f_reg = 64'h4037F5C28F5C28F6;
                        end
                    end
                end
            end else begin
                if (LE(Rainfall, 64'h40A348C7B0000000)) begin
                    if (LE(K, 64'h405EE00000000000)) begin
                        if (LE(N, 64'h4063200000000000)) begin
                            if (LE(Soil_Moisture, 64'h4049A1EB90000000)) begin
                                if (LE(Pesticide_Used, 64'h402D570A40000000)) begin
                                    yield_f_reg = 64'h4037EA3D70A3D70A;
                                end else begin
                                    yield_f_reg = 64'h40394BC6A7EF9DB2;
                                end
                            end else begin
                                if (LE(Wind_Speed, 64'h402BA3D710000000)) begin
                                    yield_f_reg = 64'h4039D1851EB851EE;
                                end else begin
                                    yield_f_reg = 64'h403860595E0595E0;
                                end
                            end
                        end else begin
                            if (LE(N, 64'h4064F00000000000)) begin
                                if (LE(Region, 64'h4000000000000000)) begin
                                    yield_f_reg = 64'h403A9C28F5C28F5C;
                                end else begin
                                    yield_f_reg = 64'h403BB1EB851EB852;
                                end
                            end else begin
                                if (LE(Humidity, 64'h4053C0A3D0000000)) begin
                                    yield_f_reg = 64'h4039B95810624DD3;
                                end else begin
                                    yield_f_reg = 64'h4038666666666666;
                                end
                            end
                        end
                    end else begin
                        if (LE(K, 64'h4062200000000000)) begin
                            if (LE(Soil_pH, 64'h40185C28F0000000)) begin
                                if (LE(K, 64'h405F200000000000)) begin
                                    yield_f_reg = 64'h403AD70A3D70A3D7;
                                end else begin
                                    yield_f_reg = 64'h4039333333333333;
                                end
                            end else begin
                                if (LE(P, 64'h4057600000000000)) begin
                                    yield_f_reg = 64'h403A85B05B05B05C;
                                end else begin
                                    yield_f_reg = 64'h403C2B851EB851EC;
                                end
                            end
                        end else begin
                            if (LE(Soil_Moisture, 64'h40479F5C20000000)) begin
                                yield_f_reg = 64'h403AEE147AE147AE;
                            end else begin
                                if (LE(Rainfall, 64'h409D0F8520000000)) begin
                                    yield_f_reg = 64'h403C000000000000;
                                end else begin
                                    yield_f_reg = 64'h403C7851EB851EB8;
                                end
                            end
                        end
                    end
                end else begin
                    if (LE(K, 64'h4054800000000000)) begin
                        if (LE(Temperature, 64'h403A03D710000000)) begin
                            if (LE(K, 64'h4041C00000000000)) begin
                                if (LE(Soil_Moisture, 64'h404C1851F0000000)) begin
                                    yield_f_reg = 64'h403C30A3D70A3D71;
                                end else begin
                                    yield_f_reg = 64'h403B028F5C28F5C2;
                                end
                            end else begin
                                if (LE(Fertilizer_Used, 64'h4066A170A0000000)) begin
                                    yield_f_reg = 64'h4039F4395810624E;
                                end else begin
                                    yield_f_reg = 64'h403ADE147AE147AE;
                                end
                            end
                        end else begin
                            if (LE(Rainfall, 64'h40A57B91F0000000)) begin
                                if (LE(Rainfall, 64'h40A4A5D480000000)) begin
                                    yield_f_reg = 64'h40395B22D0E56042;
                                end else begin
                                    yield_f_reg = 64'h403A4CCCCCCCCCCC;
                                end
                            end else begin
                                yield_f_reg = 64'h403830A3D70A3D71;
                            end
                        end
                    end else begin
                        if (LE(Temperature, 64'h402D68F5D0000000)) begin
                            if (LE(Pesticide_Used, 64'h4031B33330000000)) begin
                                if (LE(Sunlight_Hours, 64'h401928F5C0000000)) begin
                                    yield_f_reg = 64'h403AD70A3D70A3D7;
                                end else begin
                                    yield_f_reg = 64'h403AD47AE147AE14;
                                end
                            end else begin
                                if (LE(K, 64'h405E800000000000)) begin
                                    yield_f_reg = 64'h4039F33333333333;
                                end else begin
                                    yield_f_reg = 64'h40396147AE147AE1;
                                end
                            end
                        end else begin
                            if (LE(Sunlight_Hours, 64'h401CDC28F0000000)) begin
                                if (LE(Sunlight_Hours, 64'h4016CCCCD0000000)) begin
                                    yield_f_reg = 64'h403BBD70A3D70A3D;
                                end else begin
                                    yield_f_reg = 64'h403C769D0369D037;
                                end
                            end else begin
                                if (LE(Rainfall, 64'h40A3820000000000)) begin
                                    yield_f_reg = 64'h403A4CCCCCCCCCCD;
                                end else begin
                                    yield_f_reg = 64'h403B500000000000;
                                end
                            end
                        end
                    end
                end
            end
        end
    end
end else begin
    if (LE(Rainfall, 64'h4096BCB850000000)) begin
        if (LE(Soil_Moisture, 64'h403867AE10000000)) begin
            if (LE(Rainfall, 64'h40912E3850000000)) begin
                if (LE(Wind_Speed, 64'h402DA66670000000)) begin
                    if (LE(Soil_Moisture, 64'h4030D47AE0000000)) begin
                        if (LE(Temperature, 64'h403F83D710000000)) begin
                            if (LE(Rainfall, 64'h40849199A0000000)) begin
                                yield_f_reg = 64'h40362E147AE147AE;
                            end else begin
                                if (LE(Soil_pH, 64'h401A6B8520000000)) begin
                                    yield_f_reg = 64'h4037200000000000;
                                end else begin
                                    yield_f_reg = 64'h403787AE147AE148;
                                end
                            end
                        end else begin
                            if (LE(Wind_Speed, 64'h40091EB850000000)) begin
                                yield_f_reg = 64'h40385EB851EB851F;
                            end else begin
                                yield_f_reg = 64'h40387D70A3D70A3D;
                            end
                        end
                    end else begin
                        if (LE(P, 64'h404BC00000000000)) begin
                            if (LE(Soil_Moisture, 64'h403223D710000000)) begin
                                if (LE(Soil_pH, 64'h40199EB850000000)) begin
                                    yield_f_reg = 64'h4039428F5C28F5C3;
                                end else begin
                                    yield_f_reg = 64'h4038B5C28F5C28F6;
                                end
                            end else begin
                                if (LE(Organic_Carbon, 64'h3FF2666660000000)) begin
                                    yield_f_reg = 64'h403798BF258BF259;
                                end else begin
                                    yield_f_reg = 64'h403834E81B4E81B5;
                                end
                            end
                        end else begin
                            if (LE(Organic_Carbon, 64'h3FF0F5C288000000)) begin
                                if (LE(Temperature, 64'h4041F1EB80000000)) begin
                                    yield_f_reg = 64'h4039000000000000;
                                end else begin
                                    yield_f_reg = 64'h40395EB851EB851F;
                                end
                            end else begin
                                if (LE(Temperature, 64'h4034FAE150000000)) begin
                                    yield_f_reg = 64'h4038570A3D70A3D7;
                                end else begin
                                    yield_f_reg = 64'h4038B5C28F5C28F6;
                                end
                            end
                        end
                    end
                end else begin
                    if (LE(N, 64'h405D600000000000)) begin
                        if (LE(Fertilizer_Used, 64'h4074D38520000000)) begin
                            if (LE(Pesticide_Used, 64'h401EF5C280000000)) begin
                                if (LE(Sunlight_Hours, 64'h401B70A3E0000000)) begin
                                    yield_f_reg = 64'h4036D1EB851EB852;
                                end else begin
                                    yield_f_reg = 64'h4036533333333333;
                                end
                            end else begin
                                if (LE(Altitude, 64'h408B300000000000)) begin
                                    yield_f_reg = 64'h4035D9999999999A;
                                end else begin
                                    yield_f_reg = 64'h403575C28F5C28F6;
                                end
                            end
                        end else begin
                            yield_f_reg = 64'h4037DEB851EB851F;
                        end
                    end else begin
                        if (LE(Season, 64'h3FF0000000000000)) begin
                            if (LE(Rainfall, 64'h4085A047B0000000)) begin
                                yield_f_reg = 64'h403787AE147AE148;
                            end else begin
                                yield_f_reg = 64'h4037CA3D70A3D70A;
                            end
                        end else begin
                            if (LE(Pesticide_Used, 64'h4023828F6A000000)) begin
                                yield_f_reg = 64'h4038C7AE147AE148;
                            end else begin
                                yield_f_reg = 64'h4038D9999999999A;
                            end
                        end
                    end
                end
            end else begin
                if (LE(Humidity, 64'h40455D70B0000000)) begin
                    if (LE(Rainfall, 64'h409357C290000000)) begin
                        if (LE(Fertilizer_Used, 64'h4072563D78000000)) begin
                            yield_f_reg = 64'h4038266666666666;
                        end else begin
                            yield_f_reg = 64'h4037AE147AE147AE;
                        end
                    end else begin
                        if (LE(Pesticide_Used, 64'h40282147AA000000)) begin
                            yield_f_reg = 64'h4038A66666666666;
                        end else begin
                            yield_f_reg = 64'h4038FD70A3D70A3D;
                        end
                    end
                end else begin
                    if (LE(N, 64'h405C200000000000)) begin
                        if (LE(P, 64'h404B400000000000)) begin
                            if (LE(Soil_Type, 64'h3FF8000000000000)) begin
                                yield_f_reg = 64'h4039FAE147AE147B;
                            end else begin
                                yield_f_reg = 64'h403A51EB851EB852;
                            end
                        end else begin
                            if (LE(Temperature, 64'h40371D70A0000000)) begin
                                yield_f_reg = 64'h4039C00000000000;
                            end else begin
                                if (LE(Soil_Moisture, 64'h402F170A40000000)) begin
                                    yield_f_reg = 64'h40396B851EB851EC;
                                end else begin
                                    yield_f_reg = 64'h4039570A3D70A3D7;
                                end
                            end
                        end
                    end else begin
                        if (LE(Soil_Moisture, 64'h4032CA3D70000000)) begin
                            yield_f_reg = 64'h40382E147AE147AE;
                        end else begin
                            if (LE(Soil_Moisture, 64'h4036C00000000000)) begin
                                if (LE(Fertilizer_Used, 64'h407229EB88000000)) begin
                                    yield_f_reg = 64'h4038CF5C28F5C28F;
                                end else begin
                                    yield_f_reg = 64'h4038F0A3D70A3D71;
                                end
                            end else begin
                                yield_f_reg = 64'h4039428F5C28F5C3;
                            end
                        end
                    end
                end
            end
        end else begin
            if (LE(N, 64'h4064F00000000000)) begin
                if (LE(K, 64'h4054C00000000000)) begin
                    if (LE(Soil_pH, 64'h4015F0A3E0000000)) begin
                        if (LE(Rainfall, 64'h408FF16670000000)) begin
                            if (LE(Humidity, 64'h40465999A0000000)) begin
                                yield_f_reg = 64'h4035E3D70A3D70A4;
                            end else begin
                                if (LE(Soil_Moisture, 64'h4046F851F0000000)) begin
                                    yield_f_reg = 64'h40372147AE147AE1;
                                end else begin
                                    yield_f_reg = 64'h4037C66666666667;
                                end
                            end
                        end else begin
                            if (LE(Humidity, 64'h40502B8520000000)) begin
                                if (LE(Temperature, 64'h4034EA3D80000000)) begin
                                    yield_f_reg = 64'h403870A3D70A3D71;
                                end else begin
                                    yield_f_reg = 64'h403950369D0369D0;
                                end
                            end else begin
                                if (LE(Soil_pH, 64'h4013B851E0000000)) begin
                                    yield_f_reg = 64'h40389C28F5C28F5C;
                                end else begin
                                    yield_f_reg = 64'h403828F5C28F5C28;
                                end
                            end
                        end
                    end else begin
                        if (LE(Pesticide_Used, 64'h402323D700000000)) begin
                            if (LE(P, 64'h4051800000000000)) begin
                                if (LE(Temperature, 64'h402C5EB850000000)) begin
                                    yield_f_reg = 64'h4037962FC962FC95;
                                end else begin
                                    yield_f_reg = 64'h4038628F5C28F5C5;
                                end
                            end else begin
                                if (LE(Temperature, 64'h4028A3D710000000)) begin
                                    yield_f_reg = 64'h4037B33333333333;
                                end else begin
                                    yield_f_reg = 64'h40399E353F7CED92;
                                end
                            end
                        end else begin
                            if (LE(K, 64'h4046C00000000000)) begin
                                if (LE(Pesticide_Used, 64'h402AB5C290000000)) begin
                                    yield_f_reg = 64'h40394BC6A7EF9DB2;
                                end else begin
                                    yield_f_reg = 64'h40386D3A06D3A06D;
                                end
                            end else begin
                                if (LE(Soil_pH, 64'h40173851F0000000)) begin
                                    yield_f_reg = 64'h4038CB851EB851EC;
                                end else begin
                                    yield_f_reg = 64'h403A0F0A3D70A3D8;
                                end
                            end
                        end
                    end
                end else begin
                    if (LE(Soil_pH, 64'h401F428F60000000)) begin
                        if (LE(N, 64'h4063000000000000)) begin
                            if (LE(Soil_Moisture, 64'h4049828F60000000)) begin
                                if (LE(Fertilizer_Used, 64'h4070CBC290000000)) begin
                                    yield_f_reg = 64'h4038A89E60F04C75;
                                end else begin
                                    yield_f_reg = 64'h403994D546448089;
                                end
                            end else begin
                                if (LE(Soil_pH, 64'h40168F5C30000000)) begin
                                    yield_f_reg = 64'h4039433333333334;
                                end else begin
                                    yield_f_reg = 64'h403A9FBE76C8B43A;
                                end
                            end
                        end else begin
                            if (LE(Temperature, 64'h4029A3D710000000)) begin
                                if (LE(Temperature, 64'h40283AE150000000)) begin
                                    yield_f_reg = 64'h403B4A3D70A3D70A;
                                end else begin
                                    yield_f_reg = 64'h403AA8F5C28F5C29;
                                end
                            end else begin
                                if (LE(Sunlight_Hours, 64'h401EE147B0000000)) begin
                                    yield_f_reg = 64'h403C333333333333;
                                end else begin
                                    yield_f_reg = 64'h403B947AE147AE14;
                                end
                            end
                        end
                    end else begin
                        if (LE(Region, 64'h4004000000000000)) begin
                            if (LE(Humidity, 64'h40544AE150000000)) begin
                                if (LE(Fertilizer_Used, 64'h4074EF8520000000)) begin
                                    yield_f_reg = 64'h4037F96AC9DFD130;
                                end else begin
                                    yield_f_reg = 64'h40369EB851EB851F;
                                end
                            end else begin
                                yield_f_reg = 64'h40398CCCCCCCCCCD;
                            end
                        end else begin
                            if (LE(Soil_pH, 64'h402051EB80000000)) begin
                                if (LE(Region, 64'h400C000000000000)) begin
                                    yield_f_reg = 64'h4038D70A3D70A3D8;
                                end else begin
                                    yield_f_reg = 64'h4039266666666666;
                                end
                            end else begin
                                yield_f_reg = 64'h403A8A3D70A3D70A;
                            end
                        end
                    end
                end
            end else begin
                if (LE(Rainfall, 64'h40880770A0000000)) begin
                    if (LE(Region, 64'h3FF8000000000000)) begin
                        if (LE(Sunlight_Hours, 64'h401C147AE0000000)) begin
                            yield_f_reg = 64'h403AF5C28F5C28F6;
                        end else begin
                            yield_f_reg = 64'h403A547AE147AE14;
                        end
                    end else begin
                        if (LE(Altitude, 64'h4086040000000000)) begin
                            yield_f_reg = 64'h40393AE147AE147B;
                        end else begin
                            if (LE(Season, 64'h3FF0000000000000)) begin
                                yield_f_reg = 64'h4038CCCCCCCCCCCD;
                            end else begin
                                if (LE(Region, 64'h400C000000000000)) begin
                                    yield_f_reg = 64'h40385C28F5C28F5C;
                                end else begin
                                    yield_f_reg = 64'h40388A3D70A3D70A;
                                end
                            end
                        end
                    end
                end else begin
                    if (LE(Altitude, 64'h408D380000000000)) begin
                        if (LE(Soil_Type, 64'h3FE0000000000000)) begin
                            if (LE(Altitude, 64'h4075F00000000000)) begin
                                if (LE(Fertilizer_Used, 64'h40759AA3D0000000)) begin
                                    yield_f_reg = 64'h403A35C28F5C28F6;
                                end else begin
                                    yield_f_reg = 64'h403A400000000000;
                                end
                            end else begin
                                yield_f_reg = 64'h403A9C28F5C28F5C;
                            end
                        end else begin
                            if (LE(Rainfall, 64'h408C9B47A0000000)) begin
                                if (LE(Humidity, 64'h404BD5C290000000)) begin
                                    yield_f_reg = 64'h403AD70A3D70A3D7;
                                end else begin
                                    yield_f_reg = 64'h403B000000000000;
                                end
                            end else begin
                                yield_f_reg = 64'h403B9C28F5C28F5C;
                            end
                        end
                    end else begin
                        if (LE(Season, 64'h3FE0000000000000)) begin
                            if (LE(Soil_Moisture, 64'h4047E0A3E0000000)) begin
                                yield_f_reg = 64'h403BF0A3D70A3D71;
                            end else begin
                                yield_f_reg = 64'h403BB5C28F5C28F6;
                            end
                        end else begin
                            yield_f_reg = 64'h403D2B851EB851EC;
                        end
                    end
                end
            end
        end
    end else begin
        if (LE(Soil_Moisture, 64'h4043E3D700000000)) begin
            if (LE(Wind_Speed, 64'h4028F5C290000000)) begin
                if (LE(Fertilizer_Used, 64'h40714B47B0000000)) begin
                    if (LE(Soil_pH, 64'h401475C290000000)) begin
                        if (LE(Organic_Carbon, 64'h3FF67AE150000000)) begin
                            if (LE(Organic_Carbon, 64'h3FF4F5C290000000)) begin
                                if (LE(Sunlight_Hours, 64'h40194CCCC0000000)) begin
                                    yield_f_reg = 64'h4037E147AE147AE1;
                                end else begin
                                    yield_f_reg = 64'h4038147AE147AE14;
                                end
                            end else begin
                                yield_f_reg = 64'h40386E147AE147AE;
                            end
                        end else begin
                            yield_f_reg = 64'h40369C28F5C28F5C;
                        end
                    end else begin
                        if (LE(Wind_Speed, 64'h4011428F60000000)) begin
                            if (LE(P, 64'h4049C00000000000)) begin
                                if (LE(Soil_Moisture, 64'h40395851E0000000)) begin
                                    yield_f_reg = 64'h403A051EB851EB85;
                                end else begin
                                    yield_f_reg = 64'h403A83D70A3D70A4;
                                end
                            end else begin
                                if (LE(Region, 64'h4008000000000000)) begin
                                    yield_f_reg = 64'h403BCCCCCCCCCCCD;
                                end else begin
                                    yield_f_reg = 64'h403B59999999999A;
                                end
                            end
                        end else begin
                            if (LE(N, 64'h4047C00000000000)) begin
                                yield_f_reg = 64'h403B428F5C28F5C3;
                            end else begin
                                if (LE(Rainfall, 64'h40A1677330000000)) begin
                                    yield_f_reg = 64'h40391A2B3C4D5E6F;
                                end else begin
                                    yield_f_reg = 64'h4039BA83A83A83A9;
                                end
                            end
                        end
                    end
                end else begin
                    if (LE(Temperature, 64'h4041833330000000)) begin
                        if (LE(Temperature, 64'h403E31EB80000000)) begin
                            if (LE(Altitude, 64'h409EB00000000000)) begin
                                if (LE(K, 64'h4052C00000000000)) begin
                                    yield_f_reg = 64'h4039F9F7390D2A6B;
                                end else begin
                                    yield_f_reg = 64'h403AAF694467381C;
                                end
                            end else begin
                                if (LE(Soil_Type, 64'h4004000000000000)) begin
                                    yield_f_reg = 64'h403AE1EB851EB852;
                                end else begin
                                    yield_f_reg = 64'h403C69D0369D036B;
                                end
                            end
                        end else begin
                            if (LE(Pesticide_Used, 64'h403851EB80000000)) begin
                                if (LE(Irrigation_Type, 64'h4004000000000000)) begin
                                    yield_f_reg = 64'h403BACFB9C869537;
                                end else begin
                                    yield_f_reg = 64'h403AC00000000000;
                                end
                            end else begin
                                yield_f_reg = 64'h403D23D70A3D70A4;
                            end
                        end
                    end else begin
                        if (LE(Soil_pH, 64'h401B051EB0000000)) begin
                            if (LE(K, 64'h4058C00000000000)) begin
                                if (LE(Organic_Carbon, 64'h3FEDC28F50000000)) begin
                                    yield_f_reg = 64'h4039F77777777778;
                                end else begin
                                    yield_f_reg = 64'h40388E147AE147AE;
                                end
                            end else begin
                                if (LE(Temperature, 64'h40439D70A0000000)) begin
                                    yield_f_reg = 64'h40379C28F5C28F5C;
                                end else begin
                                    yield_f_reg = 64'h4037E3D70A3D70A4;
                                end
                            end
                        end else begin
                            if (LE(Altitude, 64'h409A9C0000000000)) begin
                                if (LE(Soil_pH, 64'h401DA3D700000000)) begin
                                    yield_f_reg = 64'h403A666666666666;
                                end else begin
                                    yield_f_reg = 64'h403AF0A3D70A3D71;
                                end
                            end else begin
                                yield_f_reg = 64'h403B7D70A3D70A3D;
                            end
                        end
                    end
                end
            end else begin
                if (LE(Rainfall, 64'h40A297A8F0000000)) begin
                    if (LE(Fertilizer_Used, 64'h40738B47A0000000)) begin
                        if (LE(Sunlight_Hours, 64'h4017E66660000000)) begin
                            if (LE(Temperature, 64'h4039666670000000)) begin
                                if (LE(Region, 64'h4004000000000000)) begin
                                    yield_f_reg = 64'h40387D70A3D70A3D;
                                end else begin
                                    yield_f_reg = 64'h403846D3A06D3A07;
                                end
                            end else begin
                                if (LE(N, 64'h4064100000000000)) begin
                                    yield_f_reg = 64'h4037DDDDDDDDDDDD;
                                end else begin
                                    yield_f_reg = 64'h40376147AE147AE1;
                                end
                            end
                        end else begin
                            if (LE(Altitude, 64'h4085540000000000)) begin
                                if (LE(K, 64'h4057000000000000)) begin
                                    yield_f_reg = 64'h4038347AE147AE15;
                                end else begin
                                    yield_f_reg = 64'h4038A2FC962FC963;
                                end
                            end else begin
                                if (LE(Soil_pH, 64'h401C1EB850000000)) begin
                                    yield_f_reg = 64'h4038D258BF258BF3;
                                end else begin
                                    yield_f_reg = 64'h40397CCCCCCCCCCD;
                                end
                            end
                        end
                    end else begin
                        if (LE(Rainfall, 64'h409AC30520000000)) begin
                            if (LE(Soil_Moisture, 64'h4041F47AF0000000)) begin
                                yield_f_reg = 64'h403B170A3D70A3D7;
                            end else begin
                                yield_f_reg = 64'h403BC51EB851EB85;
                            end
                        end else begin
                            if (LE(P, 64'h404AC00000000000)) begin
                                if (LE(Humidity, 64'h404D67AE20000000)) begin
                                    yield_f_reg = 64'h4038FAE147AE147B;
                                end else begin
                                    yield_f_reg = 64'h40396147AE147AE1;
                                end
                            end else begin
                                if (LE(Irrigation_Type, 64'h3FF8000000000000)) begin
                                    yield_f_reg = 64'h403A088888888888;
                                end else begin
                                    yield_f_reg = 64'h403991EB851EB852;
                                end
                            end
                        end
                    end
                end else begin
                    if (LE(Fertilizer_Used, 64'h4075091EC0000000)) begin
                        if (LE(P, 64'h4042400000000000)) begin
                            if (LE(N, 64'h4047800000000000)) begin
                                if (LE(N, 64'h4044C00000000000)) begin
                                    yield_f_reg = 64'h4039B5C28F5C28F6;
                                end else begin
                                    yield_f_reg = 64'h403A4A3D70A3D70A;
                                end
                            end else begin
                                if (LE(P, 64'h403D800000000000)) begin
                                    yield_f_reg = 64'h40392EEEEEEEEEEF;
                                end else begin
                                    yield_f_reg = 64'h40388F5C28F5C28F;
                                end
                            end
                        end else begin
                            if (LE(N, 64'h4045C00000000000)) begin
                                if (LE(Rainfall, 64'h40A355F850000000)) begin
                                    yield_f_reg = 64'h403ACCCCCCCCCCCD;
                                end else begin
                                    yield_f_reg = 64'h403AD70A3D70A3D7;
                                end
                            end else begin
                                if (LE(P, 64'h4050E00000000000)) begin
                                    yield_f_reg = 64'h403A3D70A3D70A3E;
                                end else begin
                                    yield_f_reg = 64'h403A6C5F92C5F92C;
                                end
                            end
                        end
                    end else begin
                        if (LE(P, 64'h4039000000000000)) begin
                            if (LE(Season, 64'h3FE0000000000000)) begin
                                yield_f_reg = 64'h403ADC28F5C28F5C;
                            end else begin
                                yield_f_reg = 64'h403A147AE147AE14;
                            end
                        end else begin
                            if (LE(Wind_Speed, 64'h402D6147B0000000)) begin
                                yield_f_reg = 64'h403BD70A3D70A3D7;
                            end else begin
                                yield_f_reg = 64'h403BF5C28F5C28F6;
                            end
                        end
                    end
                end
            end
        end else begin
            if (LE(Soil_pH, 64'h40168A3D70000000)) begin
                if (LE(Pesticide_Used, 64'h40329D70B0000000)) begin
                    if (LE(Temperature, 64'h403DF47AE0000000)) begin
                        if (LE(Fertilizer_Used, 64'h4070871EC0000000)) begin
                            if (LE(Sunlight_Hours, 64'h40168A3D70000000)) begin
                                if (LE(Wind_Speed, 64'h40206147B8000000)) begin
                                    yield_f_reg = 64'h403A11EB851EB852;
                                end else begin
                                    yield_f_reg = 64'h403A428F5C28F5C3;
                                end
                            end else begin
                                if (LE(Soil_Type, 64'h3FE0000000000000)) begin
                                    yield_f_reg = 64'h4039E00000000000;
                                end else begin
                                    yield_f_reg = 64'h4039C51EB851EB86;
                                end
                            end
                        end else begin
                            if (LE(Fertilizer_Used, 64'h407337EB80000000)) begin
                                if (LE(Fertilizer_Used, 64'h40718AB860000000)) begin
                                    yield_f_reg = 64'h403923D70A3D70A4;
                                end else begin
                                    yield_f_reg = 64'h4038B77777777778;
                                end
                            end else begin
                                if (LE(N, 64'h404C000000000000)) begin
                                    yield_f_reg = 64'h403A30A3D70A3D71;
                                end else begin
                                    yield_f_reg = 64'h4039800000000001;
                                end
                            end
                        end
                    end else begin
                        if (LE(Wind_Speed, 64'h402A11EB90000000)) begin
                            if (LE(Soil_Moisture, 64'h4048533330000000)) begin
                                yield_f_reg = 64'h403B7851EB851EB8;
                            end else begin
                                if (LE(Rainfall, 64'h409FA3FAE0000000)) begin
                                    yield_f_reg = 64'h403A7EB851EB851E;
                                end else begin
                                    yield_f_reg = 64'h403A947AE147AE14;
                                end
                            end
                        end else begin
                            yield_f_reg = 64'h4039333333333333;
                        end
                    end
                end else begin
                    if (LE(K, 64'h405D000000000000)) begin
                        if (LE(Rainfall, 64'h40A4E26E20000000)) begin
                            if (LE(Pesticide_Used, 64'h40361851E0000000)) begin
                                if (LE(Fertilizer_Used, 64'h40725DAE10000000)) begin
                                    yield_f_reg = 64'h403AD1EB851EB852;
                                end else begin
                                    yield_f_reg = 64'h403ABAE147AE147B;
                                end
                            end else begin
                                yield_f_reg = 64'h403AA147AE147AE1;
                            end
                        end else begin
                            if (LE(Rainfall, 64'h40A5964A40000000)) begin
                                yield_f_reg = 64'h403B0F5C28F5C28F;
                            end else begin
                                yield_f_reg = 64'h403AEB851EB851EC;
                            end
                        end
                    end else begin
                        if (LE(Soil_pH, 64'h4014EB8520000000)) begin
                            yield_f_reg = 64'h403A000000000000;
                        end else begin
                            yield_f_reg = 64'h403A75C28F5C28F6;
                        end
                    end
                end
            end else begin
                if (LE(Rainfall, 64'h409F9070A0000000)) begin
                    if (LE(Wind_Speed, 64'h402B0A3D70000000)) begin
                        if (LE(Wind_Speed, 64'h4023E8F5C0000000)) begin
                            if (LE(P, 64'h4053000000000000)) begin
                                if (LE(Temperature, 64'h4027D99990000000)) begin
                                    yield_f_reg = 64'h403C75C28F5C28F6;
                                end else begin
                                    yield_f_reg = 64'h403A6FC962FC9630;
                                end
                            end else begin
                                if (LE(Wind_Speed, 64'h4010D1EB80000000)) begin
                                    yield_f_reg = 64'h403BB33333333333;
                                end else begin
                                    yield_f_reg = 64'h403B1D0369D0369D;
                                end
                            end
                        end else begin
                            if (LE(Organic_Carbon, 64'h3FEAB851F0000000)) begin
                                if (LE(Season, 64'h3FF0000000000000)) begin
                                    yield_f_reg = 64'h403B8E147AE147AE;
                                end else begin
                                    yield_f_reg = 64'h403B570A3D70A3D7;
                                end
                            end else begin
                                if (LE(Soil_Type, 64'h3FE0000000000000)) begin
                                    yield_f_reg = 64'h403C5C28F5C28F5C;
                                end else begin
                                    yield_f_reg = 64'h403D23D70A3D70A4;
                                end
                            end
                        end
                    end else begin
                        if (LE(Humidity, 64'h4051875C30000000)) begin
                            if (LE(Temperature, 64'h4039D33330000000)) begin
                                if (LE(Sunlight_Hours, 64'h401FD70A40000000)) begin
                                    yield_f_reg = 64'h403A08F5C28F5C29;
                                end else begin
                                    yield_f_reg = 64'h403A88F5C28F5C29;
                                end
                            end else begin
                                if (LE(Temperature, 64'h40410147B0000000)) begin
                                    yield_f_reg = 64'h403B0CCCCCCCCCCD;
                                end else begin
                                    yield_f_reg = 64'h403B47AE147AE148;
                                end
                            end
                        end else begin
                            if (LE(Soil_Type, 64'h3FE0000000000000)) begin
                                yield_f_reg = 64'h403A0CCCCCCCCCCD;
                            end else begin
                                if (LE(Irrigation_Type, 64'h3FF0000000000000)) begin
                                    yield_f_reg = 64'h403835C28F5C28F6;
                                end else begin
                                    yield_f_reg = 64'h40384F5C28F5C28F;
                                end
                            end
                        end
                    end
                end else begin
                    if (LE(Fertilizer_Used, 64'h407303AE10000000)) begin
                        if (LE(Organic_Carbon, 64'h3FEB333330000000)) begin
                            if (LE(Organic_Carbon, 64'h3FD75C28F0000000)) begin
                                if (LE(Soil_pH, 64'h401B8A3D70000000)) begin
                                    yield_f_reg = 64'h403C91EB851EB852;
                                end else begin
                                    yield_f_reg = 64'h403BEB851EB851EC;
                                end
                            end else begin
                                if (LE(Temperature, 64'h403B6B8520000000)) begin
                                    yield_f_reg = 64'h403AB33333333333;
                                end else begin
                                    yield_f_reg = 64'h4039B40DA740DA73;
                                end
                            end
                        end else begin
                            if (LE(K, 64'h404B800000000000)) begin
                                if (LE(Organic_Carbon, 64'h3FED70A3D0000000)) begin
                                    yield_f_reg = 64'h403919999999999A;
                                end else begin
                                    yield_f_reg = 64'h403B028F5C28F5C3;
                                end
                            end else begin
                                if (LE(N, 64'h4060C00000000000)) begin
                                    yield_f_reg = 64'h403BAFB586FB586F;
                                end else begin
                                    yield_f_reg = 64'h403CEC5F92C5F92D;
                                end
                            end
                        end
                    end else begin
                        if (LE(P, 64'h4049800000000000)) begin
                            if (LE(Soil_pH, 64'h4017C28F60000000)) begin
                                yield_f_reg = 64'h403B733333333333;
                            end else begin
                                if (LE(Rainfall, 64'h40A1AEDC30000000)) begin
                                    yield_f_reg = 64'h403B2E147AE147AE;
                                end else begin
                                    yield_f_reg = 64'h403AFAE147AE147B;
                                end
                            end
                        end else begin
                            if (LE(Pesticide_Used, 64'h403708F5D0000000)) begin
                                if (LE(Organic_Carbon, 64'h3FF35C28F0000000)) begin
                                    yield_f_reg = 64'h403CE1FA6A1FA6A1;
                                end else begin
                                    yield_f_reg = 64'h403C0147AE147AE1;
                                end
                            end else begin
                                yield_f_reg = 64'h403A6147AE147AE1;
                            end
                        end
                    end
                end
            end
        end
    end
end
