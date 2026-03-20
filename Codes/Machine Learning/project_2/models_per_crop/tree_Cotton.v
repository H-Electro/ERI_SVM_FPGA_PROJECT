if (LE(Fertilizer_Used, 64'h406B04A3E0000000)) begin
    if (LE(Rainfall, 64'h409AD3CCD0000000)) begin
        if (LE(Fertilizer_Used, 64'h405B37AE10000000)) begin
            if (LE(Soil_pH, 64'h401D1999A0000000)) begin
                if (LE(Soil_pH, 64'h4016B851E0000000)) begin
                    if (LE(Wind_Speed, 64'h40270F5C20000000)) begin
                        if (LE(Temperature, 64'h4042700000000000)) begin
                            if (LE(Soil_Moisture, 64'h4043000000000000)) begin
                                if (LE(Rainfall, 64'h407CE51EC0000000)) begin
                                    yield_f_reg = 64'h400851EB851EB852;
                                end else begin
                                    yield_f_reg = 64'h4012872B020C49BA;
                                end
                            end else begin
                                if (LE(P, 64'h4050200000000000)) begin
                                    yield_f_reg = 64'h40138D4FDF3B645A;
                                end else begin
                                    yield_f_reg = 64'h4017111111111112;
                                end
                            end
                        end else begin
                            if (LE(Soil_Moisture, 64'h40498C28F0000000)) begin
                                if (LE(Season, 64'h3FF0000000000000)) begin
                                    yield_f_reg = 64'h401A333333333333;
                                end else begin
                                    yield_f_reg = 64'h401ACCCCCCCCCCCD;
                                end
                            end else begin
                                yield_f_reg = 64'h40185C28F5C28F5C;
                            end
                        end
                    end else begin
                        if (LE(Fertilizer_Used, 64'h4058BB3330000000)) begin
                            if (LE(Organic_Carbon, 64'h3FF4E147B0000000)) begin
                                if (LE(Humidity, 64'h4055D1EB80000000)) begin
                                    yield_f_reg = 64'h401045A1CAC08312;
                                end else begin
                                    yield_f_reg = 64'h4013333333333333;
                                end
                            end else begin
                                if (LE(Pesticide_Used, 64'h40261EB848000000)) begin
                                    yield_f_reg = 64'h400CEB851EB851EC;
                                end else begin
                                    yield_f_reg = 64'h400651EB851EB852;
                                end
                            end
                        end else begin
                            if (LE(Soil_Moisture, 64'h4041A3D710000000)) begin
                                yield_f_reg = 64'h4015AE147AE147AE;
                            end else begin
                                if (LE(Soil_Moisture, 64'h4045CCCCD0000000)) begin
                                    yield_f_reg = 64'h4012E147AE147AE1;
                                end else begin
                                    yield_f_reg = 64'h4014333333333333;
                                end
                            end
                        end
                    end
                end else begin
                    if (LE(Temperature, 64'h40317D70B0000000)) begin
                        if (LE(P, 64'h4052600000000000)) begin
                            if (LE(Pesticide_Used, 64'h3FF7EB8520000000)) begin
                                if (LE(Temperature, 64'h402F75C2A0000000)) begin
                                    yield_f_reg = 64'h40163D70A3D70A3D;
                                end else begin
                                    yield_f_reg = 64'h401770A3D70A3D71;
                                end
                            end else begin
                                if (LE(Humidity, 64'h4049B147A0000000)) begin
                                    yield_f_reg = 64'h401D258BF258BF25;
                                end else begin
                                    yield_f_reg = 64'h401A628F5C28F5C2;
                                end
                            end
                        end else begin
                            if (LE(Wind_Speed, 64'h4029C00000000000)) begin
                                if (LE(K, 64'h405D400000000000)) begin
                                    yield_f_reg = 64'h4020428F5C28F5C3;
                                end else begin
                                    yield_f_reg = 64'h40203D70A3D70A3D;
                                end
                            end else begin
                                yield_f_reg = 64'h401F666666666666;
                            end
                        end
                    end else begin
                        if (LE(Wind_Speed, 64'h4014800000000000)) begin
                            if (LE(Temperature, 64'h4031C51EC0000000)) begin
                                yield_f_reg = 64'h40121EB851EB851F;
                            end else begin
                                if (LE(Sunlight_Hours, 64'h40174CCCD0000000)) begin
                                    yield_f_reg = 64'h401E888888888888;
                                end else begin
                                    yield_f_reg = 64'h401A70A3D70A3D70;
                                end
                            end
                        end else begin
                            if (LE(Region, 64'h4004000000000000)) begin
                                if (LE(Sunlight_Hours, 64'h401B051EB0000000)) begin
                                    yield_f_reg = 64'h4017B17E4B17E4B1;
                                end else begin
                                    yield_f_reg = 64'h4012DD9F7390D2A8;
                                end
                            end else begin
                                if (LE(Organic_Carbon, 64'h3FF48F5C30000000)) begin
                                    yield_f_reg = 64'h401A777777777778;
                                end else begin
                                    yield_f_reg = 64'h4015428F5C28F5C3;
                                end
                            end
                        end
                    end
                end
            end else begin
                if (LE(Rainfall, 64'h40873CAE20000000)) begin
                    if (LE(Sunlight_Hours, 64'h40250A3D70000000)) begin
                        if (LE(N, 64'h4045C00000000000)) begin
                            yield_f_reg = 64'h401599999999999A;
                        end else begin
                            if (LE(Humidity, 64'h404BE0A3D0000000)) begin
                                if (LE(Organic_Carbon, 64'h3FF228F5C0000000)) begin
                                    yield_f_reg = 64'h4010F5C28F5C28F6;
                                end else begin
                                    yield_f_reg = 64'h4010000000000000;
                                end
                            end else begin
                                if (LE(P, 64'h404F000000000000)) begin
                                    yield_f_reg = 64'h400B9D0369D0369D;
                                end else begin
                                    yield_f_reg = 64'h400E000000000000;
                                end
                            end
                        end
                    end else begin
                        if (LE(Fertilizer_Used, 64'h4058CB8520000000)) begin
                            yield_f_reg = 64'h4018A3D70A3D70A4;
                        end else begin
                            yield_f_reg = 64'h40158F5C28F5C28F;
                        end
                    end
                end else begin
                    if (LE(Organic_Carbon, 64'h3FF6147AE0000000)) begin
                        if (LE(Pesticide_Used, 64'h401B051EB0000000)) begin
                            yield_f_reg = 64'h400BAE147AE147AE;
                        end else begin
                            if (LE(Altitude, 64'h409AE20000000000)) begin
                                if (LE(Season, 64'h3FF8000000000000)) begin
                                    yield_f_reg = 64'h4019DA740DA740DB;
                                end else begin
                                    yield_f_reg = 64'h40157AE147AE147B;
                                end
                            end else begin
                                if (LE(Region, 64'h4008000000000000)) begin
                                    yield_f_reg = 64'h4011A3D70A3D70A4;
                                end else begin
                                    yield_f_reg = 64'h4017A3D70A3D70A4;
                                end
                            end
                        end
                    end else begin
                        if (LE(Season, 64'h3FE0000000000000)) begin
                            yield_f_reg = 64'h40160A3D70A3D70A;
                        end else begin
                            if (LE(Season, 64'h3FF8000000000000)) begin
                                if (LE(Irrigation_Type, 64'h3FF0000000000000)) begin
                                    yield_f_reg = 64'h400C28F5C28F5C29;
                                end else begin
                                    yield_f_reg = 64'h400A666666666666;
                                end
                            end else begin
                                if (LE(Soil_pH, 64'h401F3D70A0000000)) begin
                                    yield_f_reg = 64'h40105C28F5C28F5C;
                                end else begin
                                    yield_f_reg = 64'h400EB851EB851EB8;
                                end
                            end
                        end
                    end
                end
            end
        end else begin
            if (LE(Soil_Moisture, 64'h4043533330000000)) begin
                if (LE(Wind_Speed, 64'h40276B8520000000)) begin
                    if (LE(Fertilizer_Used, 64'h40656CA3E0000000)) begin
                        if (LE(N, 64'h4058800000000000)) begin
                            if (LE(Humidity, 64'h404E499990000000)) begin
                                if (LE(Soil_pH, 64'h401F428F50000000)) begin
                                    yield_f_reg = 64'h4011D4FDF3B645A2;
                                end else begin
                                    yield_f_reg = 64'h400C147AE147AE14;
                                end
                            end else begin
                                if (LE(Rainfall, 64'h4084453330000000)) begin
                                    yield_f_reg = 64'h4019DC28F5C28F5C;
                                end else begin
                                    yield_f_reg = 64'h401447AE147AE148;
                                end
                            end
                        end else begin
                            if (LE(Temperature, 64'h403CC3D710000000)) begin
                                if (LE(Season, 64'h3FF8000000000000)) begin
                                    yield_f_reg = 64'h4014EB851EB851EB;
                                end else begin
                                    yield_f_reg = 64'h4019851EB851EB85;
                                end
                            end else begin
                                if (LE(Fertilizer_Used, 64'h405C01EB80000000)) begin
                                    yield_f_reg = 64'h40138F5C28F5C28F;
                                end else begin
                                    yield_f_reg = 64'h401CE2BE2BE2BE2D;
                                end
                            end
                        end
                    end else begin
                        if (LE(Soil_Moisture, 64'h404095C290000000)) begin
                            if (LE(Organic_Carbon, 64'h3FE7851EB0000000)) begin
                                if (LE(Temperature, 64'h4033570A30000000)) begin
                                    yield_f_reg = 64'h40126B851EB851EC;
                                end else begin
                                    yield_f_reg = 64'h401A2B851EB851EC;
                                end
                            end else begin
                                if (LE(Wind_Speed, 64'h40226147A0000000)) begin
                                    yield_f_reg = 64'h401C471C71C71C72;
                                end else begin
                                    yield_f_reg = 64'h4018999999999999;
                                end
                            end
                        end else begin
                            if (LE(Organic_Carbon, 64'h3FF3851EB0000000)) begin
                                if (LE(Soil_pH, 64'h401B70A3E0000000)) begin
                                    yield_f_reg = 64'h401FBD70A3D70A3E;
                                end else begin
                                    yield_f_reg = 64'h401DF5C28F5C28F6;
                                end
                            end else begin
                                yield_f_reg = 64'h4022147AE147AE14;
                            end
                        end
                    end
                end else begin
                    if (LE(Rainfall, 64'h4086046660000000)) begin
                        if (LE(Sunlight_Hours, 64'h401275C280000000)) begin
                            yield_f_reg = 64'h3FFC28F5C28F5C29;
                        end else begin
                            if (LE(Soil_pH, 64'h4013D1EB90000000)) begin
                                yield_f_reg = 64'h401A70A3D70A3D71;
                            end else begin
                                if (LE(Rainfall, 64'h407B21C290000000)) begin
                                    yield_f_reg = 64'h40152C5F92C5F92C;
                                end else begin
                                    yield_f_reg = 64'h4010FAE147AE147B;
                                end
                            end
                        end
                    end else begin
                        if (LE(Region, 64'h400C000000000000)) begin
                            if (LE(Fertilizer_Used, 64'h4061707AE0000000)) begin
                                if (LE(Soil_pH, 64'h4014666670000000)) begin
                                    yield_f_reg = 64'h40152E147AE147AE;
                                end else begin
                                    yield_f_reg = 64'h4010FE4B17E4B17F;
                                end
                            end else begin
                                if (LE(Pesticide_Used, 64'h40207FFFF8000000)) begin
                                    yield_f_reg = 64'h4013F70A3D70A3D7;
                                end else begin
                                    yield_f_reg = 64'h40181FBE76C8B43A;
                                end
                            end
                        end else begin
                            if (LE(Fertilizer_Used, 64'h4060A11EB0000000)) begin
                                if (LE(K, 64'h405B600000000000)) begin
                                    yield_f_reg = 64'h402023D70A3D70A4;
                                end else begin
                                    yield_f_reg = 64'h402051EB851EB852;
                                end
                            end else begin
                                if (LE(Pesticide_Used, 64'h402C7851F0000000)) begin
                                    yield_f_reg = 64'h4019BC28F5C28F5C;
                                end else begin
                                    yield_f_reg = 64'h401347AE147AE148;
                                end
                            end
                        end
                    end
                end
            end else begin
                if (LE(Wind_Speed, 64'h40236147B0000000)) begin
                    if (LE(Rainfall, 64'h4094FE3850000000)) begin
                        if (LE(K, 64'h4062100000000000)) begin
                            if (LE(Temperature, 64'h4041CB8520000000)) begin
                                if (LE(Soil_pH, 64'h401F1EB850000000)) begin
                                    yield_f_reg = 64'h401B848D159E26AF;
                                end else begin
                                    yield_f_reg = 64'h40165EB851EB851E;
                                end
                            end else begin
                                if (LE(Altitude, 64'h4075000000000000)) begin
                                    yield_f_reg = 64'h4025000000000000;
                                end else begin
                                    yield_f_reg = 64'h401D50369D0369D0;
                                end
                            end
                        end else begin
                            yield_f_reg = 64'h402428F5C28F5C29;
                        end
                    end else begin
                        if (LE(Humidity, 64'h4053C199A0000000)) begin
                            if (LE(Irrigation_Type, 64'h4004000000000000)) begin
                                if (LE(Soil_Moisture, 64'h404FBCCCD0000000)) begin
                                    yield_f_reg = 64'h402081B4E81B4E81;
                                end else begin
                                    yield_f_reg = 64'h4023428F5C28F5C3;
                                end
                            end else begin
                                yield_f_reg = 64'h402519999999999A;
                            end
                        end else begin
                            if (LE(Temperature, 64'h4042351EC0000000)) begin
                                if (LE(Temperature, 64'h4040AEB850000000)) begin
                                    yield_f_reg = 64'h401DD70A3D70A3D7;
                                end else begin
                                    yield_f_reg = 64'h401A99999999999A;
                                end
                            end else begin
                                yield_f_reg = 64'h401651EB851EB852;
                            end
                        end
                    end
                end else begin
                    if (LE(K, 64'h4042C00000000000)) begin
                        if (LE(Soil_pH, 64'h4014BD70B0000000)) begin
                            if (LE(Soil_pH, 64'h4013570A40000000)) begin
                                yield_f_reg = 64'h4017A3D70A3D70A4;
                            end else begin
                                yield_f_reg = 64'h4016A3D70A3D70A4;
                            end
                        end else begin
                            if (LE(Fertilizer_Used, 64'h4063500000000000)) begin
                                yield_f_reg = 64'h4010851EB851EB85;
                            end else begin
                                if (LE(Fertilizer_Used, 64'h40690EE150000000)) begin
                                    yield_f_reg = 64'h40148A3D70A3D70A;
                                end else begin
                                    yield_f_reg = 64'h40134CCCCCCCCCCD;
                                end
                            end
                        end
                    end else begin
                        if (LE(P, 64'h4036000000000000)) begin
                            if (LE(K, 64'h4054200000000000)) begin
                                if (LE(Altitude, 64'h4067400000000000)) begin
                                    yield_f_reg = 64'h4017F5C28F5C28F6;
                                end else begin
                                    yield_f_reg = 64'h401C6147AE147AE2;
                                end
                            end else begin
                                if (LE(Region, 64'h4004000000000000)) begin
                                    yield_f_reg = 64'h40144B17E4B17E4B;
                                end else begin
                                    yield_f_reg = 64'h4011947AE147AE14;
                                end
                            end
                        end else begin
                            if (LE(Altitude, 64'h4040000000000000)) begin
                                yield_f_reg = 64'h4022D1EB851EB852;
                            end else begin
                                if (LE(Soil_pH, 64'h4016EB8520000000)) begin
                                    yield_f_reg = 64'h40187120ABA453E0;
                                end else begin
                                    yield_f_reg = 64'h401AE851EB851EB8;
                                end
                            end
                        end
                    end
                end
            end
        end
    end else begin
        if (LE(Fertilizer_Used, 64'h4062B9EB80000000)) begin
            if (LE(Soil_Moisture, 64'h40485F5C20000000)) begin
                if (LE(P, 64'h4053E00000000000)) begin
                    if (LE(Wind_Speed, 64'h3FFB70A3E0000000)) begin
                        if (LE(Rainfall, 64'h40A3530A30000000)) begin
                            if (LE(Wind_Speed, 64'h3FFA3D70B0000000)) begin
                                if (LE(Wind_Speed, 64'h3FF07AE140000000)) begin
                                    yield_f_reg = 64'h401CB851EB851EB8;
                                end else begin
                                    yield_f_reg = 64'h401B8F5C28F5C290;
                                end
                            end else begin
                                yield_f_reg = 64'h401E5C28F5C28F5C;
                            end
                        end else begin
                            if (LE(Fertilizer_Used, 64'h4059D947B0000000)) begin
                                if (LE(Humidity, 64'h404F83D700000000)) begin
                                    yield_f_reg = 64'h4020C28F5C28F5C3;
                                end else begin
                                    yield_f_reg = 64'h40208A3D70A3D70A;
                                end
                            end else begin
                                if (LE(Fertilizer_Used, 64'h405B8D70A0000000)) begin
                                    yield_f_reg = 64'h40224CCCCCCCCCCD;
                                end else begin
                                    yield_f_reg = 64'h40220F5C28F5C28F;
                                end
                            end
                        end
                    end else begin
                        if (LE(K, 64'h4043800000000000)) begin
                            if (LE(Sunlight_Hours, 64'h401B333330000000)) begin
                                if (LE(Season, 64'h3FF8000000000000)) begin
                                    yield_f_reg = 64'h4016AAAAAAAAAAAB;
                                end else begin
                                    yield_f_reg = 64'h4010B17E4B17E4B1;
                                end
                            end else begin
                                if (LE(Soil_pH, 64'h4014147AE0000000)) begin
                                    yield_f_reg = 64'h4014A3D70A3D70A4;
                                end else begin
                                    yield_f_reg = 64'h401A7851EB851EB8;
                                end
                            end
                        end else begin
                            if (LE(Temperature, 64'h40430EB850000000)) begin
                                if (LE(Wind_Speed, 64'h4024AE1480000000)) begin
                                    yield_f_reg = 64'h401B4B4395810622;
                                end else begin
                                    yield_f_reg = 64'h4019316497CAFE30;
                                end
                            end else begin
                                if (LE(Soil_pH, 64'h401A800000000000)) begin
                                    yield_f_reg = 64'h4012CCCCCCCCCCCD;
                                end else begin
                                    yield_f_reg = 64'h4015D3A06D3A06D4;
                                end
                            end
                        end
                    end
                end else begin
                    if (LE(Rainfall, 64'h40A517AB80000000)) begin
                        if (LE(Pesticide_Used, 64'h3FFF70A3D0000000)) begin
                            if (LE(P, 64'h4056E00000000000)) begin
                                yield_f_reg = 64'h40224CCCCCCCCCCD;
                            end else begin
                                yield_f_reg = 64'h4022BD70A3D70A3D;
                            end
                        end else begin
                            if (LE(K, 64'h405D200000000000)) begin
                                if (LE(N, 64'h4055200000000000)) begin
                                    yield_f_reg = 64'h40207C962FC962FC;
                                end else begin
                                    yield_f_reg = 64'h401D6A3D70A3D70A;
                                end
                            end else begin
                                if (LE(Organic_Carbon, 64'h3FEE666660000000)) begin
                                    yield_f_reg = 64'h401DE147AE147AE1;
                                end else begin
                                    yield_f_reg = 64'h4016B33333333334;
                                end
                            end
                        end
                    end else begin
                        yield_f_reg = 64'h4025051EB851EB85;
                    end
                end
            end else begin
                if (LE(N, 64'h405C200000000000)) begin
                    if (LE(Soil_Moisture, 64'h404F3F5C20000000)) begin
                        if (LE(P, 64'h4032800000000000)) begin
                            yield_f_reg = 64'h401328F5C28F5C29;
                        end else begin
                            if (LE(Soil_pH, 64'h401FBD70A0000000)) begin
                                if (LE(Pesticide_Used, 64'h40341AE140000000)) begin
                                    yield_f_reg = 64'h401C8AE147AE147A;
                                end else begin
                                    yield_f_reg = 64'h401F8D4FDF3B645B;
                                end
                            end else begin
                                if (LE(Pesticide_Used, 64'h4032D0A3E0000000)) begin
                                    yield_f_reg = 64'h40194CCCCCCCCCCC;
                                end else begin
                                    yield_f_reg = 64'h4016B33333333334;
                                end
                            end
                        end
                    end else begin
                        if (LE(N, 64'h4054800000000000)) begin
                            if (LE(Altitude, 64'h407C400000000000)) begin
                                yield_f_reg = 64'h4021570A3D70A3D7;
                            end else begin
                                yield_f_reg = 64'h401FEB851EB851EC;
                            end
                        end else begin
                            yield_f_reg = 64'h4024428F5C28F5C3;
                        end
                    end
                end else begin
                    if (LE(Soil_Moisture, 64'h404DF5C290000000)) begin
                        if (LE(Organic_Carbon, 64'h3FF8000000000000)) begin
                            if (LE(Temperature, 64'h403E866670000000)) begin
                                if (LE(Region, 64'h400C000000000000)) begin
                                    yield_f_reg = 64'h401F51EB851EB852;
                                end else begin
                                    yield_f_reg = 64'h4020C7AE147AE148;
                                end
                            end else begin
                                if (LE(Temperature, 64'h4040CB8520000000)) begin
                                    yield_f_reg = 64'h4021EB851EB851EC;
                                end else begin
                                    yield_f_reg = 64'h402111EB851EB852;
                                end
                            end
                        end else begin
                            yield_f_reg = 64'h40197AE147AE147B;
                        end
                    end else begin
                        if (LE(Altitude, 64'h4072F80000000000)) begin
                            yield_f_reg = 64'h40273D70A3D70A3D;
                        end else begin
                            if (LE(Fertilizer_Used, 64'h405DABD710000000)) begin
                                if (LE(Fertilizer_Used, 64'h4052428F60000000)) begin
                                    yield_f_reg = 64'h4021AE147AE147AE;
                                end else begin
                                    yield_f_reg = 64'h4022170A3D70A3D7;
                                end
                            end else begin
                                if (LE(N, 64'h4062100000000000)) begin
                                    yield_f_reg = 64'h40231EB851EB851F;
                                end else begin
                                    yield_f_reg = 64'h4024428F5C28F5C3;
                                end
                            end
                        end
                    end
                end
            end
        end else begin
            if (LE(Wind_Speed, 64'h4022A8F5D0000000)) begin
                if (LE(Soil_Moisture, 64'h4041251EB0000000)) begin
                    if (LE(Humidity, 64'h404E6E1480000000)) begin
                        if (LE(Sunlight_Hours, 64'h40216B8520000000)) begin
                            if (LE(K, 64'h4059200000000000)) begin
                                if (LE(Soil_Moisture, 64'h40351C28F0000000)) begin
                                    yield_f_reg = 64'h40188B4395810625;
                                end else begin
                                    yield_f_reg = 64'h401FB851EB851EB8;
                                end
                            end else begin
                                if (LE(N, 64'h4064400000000000)) begin
                                    yield_f_reg = 64'h401F333333333333;
                                end else begin
                                    yield_f_reg = 64'h40191EB851EB851F;
                                end
                            end
                        end else begin
                            if (LE(K, 64'h4057000000000000)) begin
                                if (LE(Organic_Carbon, 64'h3FE4000000000000)) begin
                                    yield_f_reg = 64'h402028F5C28F5C29;
                                end else begin
                                    yield_f_reg = 64'h4021E66666666666;
                                end
                            end else begin
                                yield_f_reg = 64'h4023FAE147AE147B;
                            end
                        end
                    end else begin
                        if (LE(Pesticide_Used, 64'h4013147AF0000000)) begin
                            if (LE(Soil_pH, 64'h401B333320000000)) begin
                                yield_f_reg = 64'h401ACCCCCCCCCCCD;
                            end else begin
                                yield_f_reg = 64'h401C28F5C28F5C29;
                            end
                        end else begin
                            if (LE(Region, 64'h3FF8000000000000)) begin
                                if (LE(Sunlight_Hours, 64'h4020F33330000000)) begin
                                    yield_f_reg = 64'h4022547AE147AE14;
                                end else begin
                                    yield_f_reg = 64'h401CD70A3D70A3D7;
                                end
                            end else begin
                                if (LE(P, 64'h4057A00000000000)) begin
                                    yield_f_reg = 64'h4022A6C405D9F739;
                                end else begin
                                    yield_f_reg = 64'h4025CCCCCCCCCCCD;
                                end
                            end
                        end
                    end
                end else begin
                    if (LE(Soil_pH, 64'h4015947AE0000000)) begin
                        if (LE(Soil_Moisture, 64'h4048FE1480000000)) begin
                            if (LE(Organic_Carbon, 64'h3FF23D70A8000000)) begin
                                yield_f_reg = 64'h401970A3D70A3D71;
                            end else begin
                                yield_f_reg = 64'h4019333333333333;
                            end
                        end else begin
                            if (LE(Fertilizer_Used, 64'h4066921480000000)) begin
                                if (LE(Rainfall, 64'h40A539C7A0000000)) begin
                                    yield_f_reg = 64'h401F000000000000;
                                end else begin
                                    yield_f_reg = 64'h401FA3D70A3D70A4;
                                end
                            end else begin
                                if (LE(K, 64'h4058600000000000)) begin
                                    yield_f_reg = 64'h4022A3D70A3D70A4;
                                end else begin
                                    yield_f_reg = 64'h40221EB851EB851F;
                                end
                            end
                        end
                    end else begin
                        if (LE(Pesticide_Used, 64'h4033F5C290000000)) begin
                            if (LE(Pesticide_Used, 64'h4022CCCCD0000000)) begin
                                if (LE(Region, 64'h3FF8000000000000)) begin
                                    yield_f_reg = 64'h4020BC962FC962FD;
                                end else begin
                                    yield_f_reg = 64'h4022FFFFFFFFFFFF;
                                end
                            end else begin
                                if (LE(Humidity, 64'h40541CCCD0000000)) begin
                                    yield_f_reg = 64'h4024658BF258BF26;
                                end else begin
                                    yield_f_reg = 64'h402735C28F5C28F6;
                                end
                            end
                        end else begin
                            if (LE(Temperature, 64'h4035666660000000)) begin
                                if (LE(Soil_Moisture, 64'h4044E99990000000)) begin
                                    yield_f_reg = 64'h4020428F5C28F5C3;
                                end else begin
                                    yield_f_reg = 64'h40233F258BF258BF;
                                end
                            end else begin
                                if (LE(Soil_pH, 64'h401A147AE0000000)) begin
                                    yield_f_reg = 64'h401828F5C28F5C29;
                                end else begin
                                    yield_f_reg = 64'h401E19999999999A;
                                end
                            end
                        end
                    end
                end
            end else begin
                if (LE(Fertilizer_Used, 64'h40698A3D70000000)) begin
                    if (LE(Soil_Moisture, 64'h404027AE18000000)) begin
                        if (LE(Wind_Speed, 64'h402E11EB80000000)) begin
                            if (LE(Organic_Carbon, 64'h3FEF0A3D70000000)) begin
                                if (LE(Organic_Carbon, 64'h3FE3D70A40000000)) begin
                                    yield_f_reg = 64'h401BB851EB851EB8;
                                end else begin
                                    yield_f_reg = 64'h401CBD70A3D70A3E;
                                end
                            end else begin
                                if (LE(Soil_pH, 64'h401A947AE0000000)) begin
                                    yield_f_reg = 64'h401E1B4E81B4E81B;
                                end else begin
                                    yield_f_reg = 64'h40200F5C28F5C28F;
                                end
                            end
                        end else begin
                            if (LE(Pesticide_Used, 64'h401E75C2A0000000)) begin
                                if (LE(Rainfall, 64'h40A17F51F0000000)) begin
                                    yield_f_reg = 64'h401F000000000000;
                                end else begin
                                    yield_f_reg = 64'h401C258BF258BF25;
                                end
                            end else begin
                                if (LE(Fertilizer_Used, 64'h4064EC0000000000)) begin
                                    yield_f_reg = 64'h401AD70A3D70A3D7;
                                end else begin
                                    yield_f_reg = 64'h4018F92C5F92C5F9;
                                end
                            end
                        end
                    end else begin
                        if (LE(Temperature, 64'h4043D7AE20000000)) begin
                            if (LE(Soil_pH, 64'h4020451EB0000000)) begin
                                if (LE(Soil_pH, 64'h4016C7AE10000000)) begin
                                    yield_f_reg = 64'h401DC51EB851EB84;
                                end else begin
                                    yield_f_reg = 64'h40204A3D70A3D70B;
                                end
                            end else begin
                                if (LE(N, 64'h4059800000000000)) begin
                                    yield_f_reg = 64'h401C2C5F92C5F92D;
                                end else begin
                                    yield_f_reg = 64'h4019F5C28F5C28F6;
                                end
                            end
                        end else begin
                            yield_f_reg = 64'h4023DC28F5C28F5C;
                        end
                    end
                end else begin
                    if (LE(P, 64'h404D000000000000)) begin
                        if (LE(K, 64'h4051C00000000000)) begin
                            yield_f_reg = 64'h402128F5C28F5C29;
                        end else begin
                            yield_f_reg = 64'h4021428F5C28F5C3;
                        end
                    end else begin
                        if (LE(Altitude, 64'h4098E00000000000)) begin
                            if (LE(Soil_Type, 64'h3FF8000000000000)) begin
                                yield_f_reg = 64'h4022947AE147AE14;
                            end else begin
                                yield_f_reg = 64'h4022666666666666;
                            end
                        end else begin
                            yield_f_reg = 64'h40238F5C28F5C28F;
                        end
                    end
                end
            end
        end
    end
end else begin
    if (LE(Rainfall, 64'h409B440520000000)) begin
        if (LE(Soil_Moisture, 64'h403BC3D700000000)) begin
            if (LE(N, 64'h405CE00000000000)) begin
                if (LE(Wind_Speed, 64'h4020A3D710000000)) begin
                    if (LE(Soil_pH, 64'h40155C2900000000)) begin
                        if (LE(Pesticide_Used, 64'h4023CF5C20000000)) begin
                            if (LE(Soil_Moisture, 64'h403551EB90000000)) begin
                                yield_f_reg = 64'h401428F5C28F5C29;
                            end else begin
                                yield_f_reg = 64'h401599999999999A;
                            end
                        end else begin
                            yield_f_reg = 64'h401AC28F5C28F5C3;
                        end
                    end else begin
                        if (LE(K, 64'h4057800000000000)) begin
                            if (LE(Rainfall, 64'h4082045C30000000)) begin
                                if (LE(Organic_Carbon, 64'h3FF5D70A40000000)) begin
                                    yield_f_reg = 64'h4017D70A3D70A3D7;
                                end else begin
                                    yield_f_reg = 64'h4016666666666666;
                                end
                            end else begin
                                if (LE(P, 64'h4032800000000000)) begin
                                    yield_f_reg = 64'h40206147AE147AE1;
                                end else begin
                                    yield_f_reg = 64'h401BB53F7CED916A;
                                end
                            end
                        end else begin
                            if (LE(Rainfall, 64'h4094D98A40000000)) begin
                                if (LE(Sunlight_Hours, 64'h40230F5C20000000)) begin
                                    yield_f_reg = 64'h401EE147AE147AE1;
                                end else begin
                                    yield_f_reg = 64'h401B7AE147AE147B;
                                end
                            end else begin
                                if (LE(Altitude, 64'h4091D40000000000)) begin
                                    yield_f_reg = 64'h40207AE147AE147B;
                                end else begin
                                    yield_f_reg = 64'h4021EB851EB851EC;
                                end
                            end
                        end
                    end
                end else begin
                    if (LE(N, 64'h4040C00000000000)) begin
                        if (LE(Wind_Speed, 64'h402B947AF0000000)) begin
                            yield_f_reg = 64'h400B851EB851EB85;
                        end else begin
                            yield_f_reg = 64'h4012333333333333;
                        end
                    end else begin
                        if (LE(Soil_Moisture, 64'h4039D0A3D0000000)) begin
                            if (LE(Fertilizer_Used, 64'h40707EA3D0000000)) begin
                                if (LE(Temperature, 64'h4028828F60000000)) begin
                                    yield_f_reg = 64'h402075C28F5C28F6;
                                end else begin
                                    yield_f_reg = 64'h4017DCE434A9B102;
                                end
                            end else begin
                                if (LE(Altitude, 64'h4073700000000000)) begin
                                    yield_f_reg = 64'h401851EB851EB852;
                                end else begin
                                    yield_f_reg = 64'h401E0B851EB851EC;
                                end
                            end
                        end else begin
                            if (LE(Soil_Moisture, 64'h403B347AE0000000)) begin
                                if (LE(Rainfall, 64'h4092814288000000)) begin
                                    yield_f_reg = 64'h40105C28F5C28F5C;
                                end else begin
                                    yield_f_reg = 64'h4012CCCCCCCCCCCD;
                                end
                            end else begin
                                if (LE(Sunlight_Hours, 64'h401FE66670000000)) begin
                                    yield_f_reg = 64'h4017000000000000;
                                end else begin
                                    yield_f_reg = 64'h401C851EB851EB85;
                                end
                            end
                        end
                    end
                end
            end else begin
                if (LE(Fertilizer_Used, 64'h4072C2F5D0000000)) begin
                    if (LE(Wind_Speed, 64'h4002666668000000)) begin
                        if (LE(Organic_Carbon, 64'h3FEBAE1480000000)) begin
                            yield_f_reg = 64'h40225C28F5C28F5C;
                        end else begin
                            if (LE(Humidity, 64'h404D7A3D80000000)) begin
                                yield_f_reg = 64'h4020851EB851EB85;
                            end else begin
                                yield_f_reg = 64'h402128F5C28F5C29;
                            end
                        end
                    end else begin
                        if (LE(Soil_Moisture, 64'h403207AE10000000)) begin
                            if (LE(Irrigation_Type, 64'h3FF8000000000000)) begin
                                if (LE(Irrigation_Type, 64'h3FE0000000000000)) begin
                                    yield_f_reg = 64'h4021800000000000;
                                end else begin
                                    yield_f_reg = 64'h402147AE147AE148;
                                end
                            end else begin
                                if (LE(Humidity, 64'h4050F80008000000)) begin
                                    yield_f_reg = 64'h401F333333333333;
                                end else begin
                                    yield_f_reg = 64'h401AEB851EB851EC;
                                end
                            end
                        end else begin
                            if (LE(Soil_pH, 64'h40181999A0000000)) begin
                                if (LE(P, 64'h4053A00000000000)) begin
                                    yield_f_reg = 64'h4015E147AE147AE1;
                                end else begin
                                    yield_f_reg = 64'h401992C5F92C5F93;
                                end
                            end else begin
                                if (LE(Rainfall, 64'h40913A23D0000000)) begin
                                    yield_f_reg = 64'h401F1EB851EB851F;
                                end else begin
                                    yield_f_reg = 64'h401AA61D950C83FB;
                                end
                            end
                        end
                    end
                end else begin
                    if (LE(Organic_Carbon, 64'h3FF3C28F60000000)) begin
                        if (LE(Wind_Speed, 64'h4004A3D710000000)) begin
                            if (LE(N, 64'h4065300000000000)) begin
                                if (LE(Region, 64'h400C000000000000)) begin
                                    yield_f_reg = 64'h401D0A3D70A3D70A;
                                end else begin
                                    yield_f_reg = 64'h401B99999999999A;
                                end
                            end else begin
                                yield_f_reg = 64'h401EC28F5C28F5C3;
                            end
                        end else begin
                            if (LE(Humidity, 64'h405417AE20000000)) begin
                                if (LE(Wind_Speed, 64'h4018F5C298000000)) begin
                                    yield_f_reg = 64'h402430A3D70A3D71;
                                end else begin
                                    yield_f_reg = 64'h4021A4924924924A;
                                end
                            end else begin
                                if (LE(Soil_pH, 64'h401D851EB0000000)) begin
                                    yield_f_reg = 64'h40202B851EB851EC;
                                end else begin
                                    yield_f_reg = 64'h401D7AE147AE147B;
                                end
                            end
                        end
                    end else begin
                        if (LE(Irrigation_Type, 64'h4004000000000000)) begin
                            if (LE(Region, 64'h4004000000000000)) begin
                                yield_f_reg = 64'h4019F5C28F5C28F6;
                            end else begin
                                yield_f_reg = 64'h4018000000000000;
                            end
                        end else begin
                            yield_f_reg = 64'h401FC28F5C28F5C3;
                        end
                    end
                end
            end
        end else begin
            if (LE(Soil_pH, 64'h4014F0A3D0000000)) begin
                if (LE(P, 64'h4045400000000000)) begin
                    if (LE(Wind_Speed, 64'h40304F5C30000000)) begin
                        if (LE(Humidity, 64'h4048BC28F0000000)) begin
                            if (LE(Region, 64'h3FF0000000000000)) begin
                                yield_f_reg = 64'h401E147AE147AE14;
                            end else begin
                                yield_f_reg = 64'h401B99999999999A;
                            end
                        end else begin
                            if (LE(Temperature, 64'h402DE3D700000000)) begin
                                yield_f_reg = 64'h4016851EB851EB85;
                            end else begin
                                if (LE(Wind_Speed, 64'h40060A3D68000000)) begin
                                    yield_f_reg = 64'h401A47AE147AE148;
                                end else begin
                                    yield_f_reg = 64'h40189EB851EB851E;
                                end
                            end
                        end
                    end else begin
                        yield_f_reg = 64'h400DC28F5C28F5C3;
                    end
                end else begin
                    if (LE(Fertilizer_Used, 64'h4071171EC0000000)) begin
                        if (LE(N, 64'h4053E00000000000)) begin
                            if (LE(N, 64'h404D800000000000)) begin
                                yield_f_reg = 64'h401E666666666666;
                            end else begin
                                yield_f_reg = 64'h401E5C28F5C28F5C;
                            end
                        end else begin
                            if (LE(N, 64'h4062300000000000)) begin
                                if (LE(Wind_Speed, 64'h401AFFFFF0000000)) begin
                                    yield_f_reg = 64'h401647AE147AE148;
                                end else begin
                                    yield_f_reg = 64'h40191B4E81B4E81C;
                                end
                            end else begin
                                yield_f_reg = 64'h401D333333333333;
                            end
                        end
                    end else begin
                        if (LE(P, 64'h4051000000000000)) begin
                            if (LE(Soil_pH, 64'h4014999990000000)) begin
                                if (LE(Soil_pH, 64'h4014147AE0000000)) begin
                                    yield_f_reg = 64'h401C99999999999A;
                                end else begin
                                    yield_f_reg = 64'h401D0A3D70A3D70A;
                                end
                            end else begin
                                yield_f_reg = 64'h401B333333333333;
                            end
                        end else begin
                            if (LE(Fertilizer_Used, 64'h4072BAE140000000)) begin
                                if (LE(Temperature, 64'h403C9C2900000000)) begin
                                    yield_f_reg = 64'h4020266666666666;
                                end else begin
                                    yield_f_reg = 64'h402099999999999A;
                                end
                            end else begin
                                if (LE(Temperature, 64'h40329C28F0000000)) begin
                                    yield_f_reg = 64'h4020028F5C28F5C3;
                                end else begin
                                    yield_f_reg = 64'h401DE81B4E81B4E8;
                                end
                            end
                        end
                    end
                end
            end else begin
                if (LE(Rainfall, 64'h4092465C20000000)) begin
                    if (LE(Soil_Moisture, 64'h404E73D710000000)) begin
                        if (LE(Humidity, 64'h404C2B8520000000)) begin
                            if (LE(Wind_Speed, 64'h401D051EC0000000)) begin
                                if (LE(Rainfall, 64'h408F72E150000000)) begin
                                    yield_f_reg = 64'h402074395810624E;
                                end else begin
                                    yield_f_reg = 64'h4023F9DB22D0E560;
                                end
                            end else begin
                                if (LE(Soil_pH, 64'h401C7AE150000000)) begin
                                    yield_f_reg = 64'h401FAACD9E83E425;
                                end else begin
                                    yield_f_reg = 64'h401C3659CC03269A;
                                end
                            end
                        end else begin
                            if (LE(Sunlight_Hours, 64'h40239C2900000000)) begin
                                if (LE(N, 64'h405F200000000000)) begin
                                    yield_f_reg = 64'h401CD9AA67734400;
                                end else begin
                                    yield_f_reg = 64'h4020317E4B17E4B2;
                                end
                            end else begin
                                if (LE(Humidity, 64'h4053F66670000000)) begin
                                    yield_f_reg = 64'h40188231BCB564F0;
                                end else begin
                                    yield_f_reg = 64'h401C6D3A06D3A06D;
                                end
                            end
                        end
                    end else begin
                        if (LE(N, 64'h4059E00000000000)) begin
                            if (LE(Soil_Moisture, 64'h404EA851F0000000)) begin
                                if (LE(N, 64'h4051200000000000)) begin
                                    yield_f_reg = 64'h4025000000000000;
                                end else begin
                                    yield_f_reg = 64'h4024947AE147AE14;
                                end
                            end else begin
                                if (LE(Soil_Moisture, 64'h404FB28F60000000)) begin
                                    yield_f_reg = 64'h4022CE81B4E81B4E;
                                end else begin
                                    yield_f_reg = 64'h4021888888888888;
                                end
                            end
                        end else begin
                            if (LE(Humidity, 64'h40507051F0000000)) begin
                                if (LE(Altitude, 64'h40801C0000000000)) begin
                                    yield_f_reg = 64'h4020970A3D70A3D8;
                                end else begin
                                    yield_f_reg = 64'h401F78D4FDF3B646;
                                end
                            end else begin
                                yield_f_reg = 64'h4021F5C28F5C28F6;
                            end
                        end
                    end
                end else begin
                    if (LE(Soil_pH, 64'h401C1999A0000000)) begin
                        if (LE(P, 64'h4058600000000000)) begin
                            if (LE(N, 64'h405EA00000000000)) begin
                                if (LE(Rainfall, 64'h409A09F0A0000000)) begin
                                    yield_f_reg = 64'h402149E7F5509598;
                                end else begin
                                    yield_f_reg = 64'h40178F5C28F5C28F;
                                end
                            end else begin
                                if (LE(Soil_pH, 64'h401BB33330000000)) begin
                                    yield_f_reg = 64'h40224C28F5C28F5C;
                                end else begin
                                    yield_f_reg = 64'h40257851EB851EB8;
                                end
                            end
                        end else begin
                            yield_f_reg = 64'h4026F5C28F5C28F6;
                        end
                    end else begin
                        if (LE(Wind_Speed, 64'h4022147AE0000000)) begin
                            if (LE(Region, 64'h3FF8000000000000)) begin
                                if (LE(P, 64'h403B000000000000)) begin
                                    yield_f_reg = 64'h4021733333333334;
                                end else begin
                                    yield_f_reg = 64'h402051EB851EB852;
                                end
                            end else begin
                                if (LE(Organic_Carbon, 64'h3FEFAE1480000000)) begin
                                    yield_f_reg = 64'h402283126E978D50;
                                end else begin
                                    yield_f_reg = 64'h4021147AE147AE14;
                                end
                            end
                        end else begin
                            if (LE(Fertilizer_Used, 64'h4074CDD700000000)) begin
                                if (LE(Fertilizer_Used, 64'h406D00CCC0000000)) begin
                                    yield_f_reg = 64'h401945A1CAC08313;
                                end else begin
                                    yield_f_reg = 64'h401E47AE147AE145;
                                end
                            end else begin
                                if (LE(Irrigation_Type, 64'h3FF8000000000000)) begin
                                    yield_f_reg = 64'h4023A22222222221;
                                end else begin
                                    yield_f_reg = 64'h401FEEEEEEEEEEEF;
                                end
                            end
                        end
                    end
                end
            end
        end
    end else begin
        if (LE(N, 64'h4051E00000000000)) begin
            if (LE(Wind_Speed, 64'h40138A3D70000000)) begin
                if (LE(Humidity, 64'h40553EB850000000)) begin
                    if (LE(Altitude, 64'h408A100000000000)) begin
                        if (LE(N, 64'h403F800000000000)) begin
                            yield_f_reg = 64'h40242E147AE147AE;
                        end else begin
                            if (LE(P, 64'h4053A00000000000)) begin
                                if (LE(Temperature, 64'h4030400000000000)) begin
                                    yield_f_reg = 64'h4024FAE147AE147B;
                                end else begin
                                    yield_f_reg = 64'h402547AE147AE148;
                                end
                            end else begin
                                yield_f_reg = 64'h402599999999999A;
                            end
                        end
                    end else begin
                        if (LE(Irrigation_Type, 64'h4004000000000000)) begin
                            if (LE(Pesticide_Used, 64'h40325C28F0000000)) begin
                                if (LE(Irrigation_Type, 64'h3FF0000000000000)) begin
                                    yield_f_reg = 64'h4021C7AE147AE148;
                                end else begin
                                    yield_f_reg = 64'h4021947AE147AE14;
                                end
                            end else begin
                                yield_f_reg = 64'h4022851EB851EB85;
                            end
                        end else begin
                            if (LE(P, 64'h4041000000000000)) begin
                                yield_f_reg = 64'h40249EB851EB851F;
                            end else begin
                                yield_f_reg = 64'h4024333333333333;
                            end
                        end
                    end
                end else begin
                    if (LE(Fertilizer_Used, 64'h4071ED0A40000000)) begin
                        if (LE(Rainfall, 64'h40A1BB4520000000)) begin
                            yield_f_reg = 64'h40235C28F5C28F5C;
                        end else begin
                            if (LE(Irrigation_Type, 64'h3FF8000000000000)) begin
                                yield_f_reg = 64'h4021000000000000;
                            end else begin
                                yield_f_reg = 64'h4021947AE147AE14;
                            end
                        end
                    end else begin
                        yield_f_reg = 64'h401DF5C28F5C28F6;
                    end
                end
            end else begin
                if (LE(Soil_Moisture, 64'h4047E47AE0000000)) begin
                    if (LE(Rainfall, 64'h409FD50010000000)) begin
                        if (LE(Soil_pH, 64'h40166B8520000000)) begin
                            if (LE(Temperature, 64'h403D63D710000000)) begin
                                yield_f_reg = 64'h4014D70A3D70A3D7;
                            end else begin
                                yield_f_reg = 64'h4018666666666666;
                            end
                        end else begin
                            if (LE(Irrigation_Type, 64'h3FF0000000000000)) begin
                                if (LE(Organic_Carbon, 64'h3FEE147AD0000000)) begin
                                    yield_f_reg = 64'h402023D70A3D70A4;
                                end else begin
                                    yield_f_reg = 64'h401FF0A3D70A3D70;
                                end
                            end else begin
                                if (LE(Region, 64'h3FF0000000000000)) begin
                                    yield_f_reg = 64'h401CFAE147AE147B;
                                end else begin
                                    yield_f_reg = 64'h4019EB851EB851EC;
                                end
                            end
                        end
                    end else begin
                        if (LE(Region, 64'h3FE0000000000000)) begin
                            if (LE(Humidity, 64'h4053E947B0000000)) begin
                                if (LE(Temperature, 64'h403B8B8520000000)) begin
                                    yield_f_reg = 64'h401AD70A3D70A3D7;
                                end else begin
                                    yield_f_reg = 64'h401C70A3D70A3D71;
                                end
                            end else begin
                                yield_f_reg = 64'h401F333333333333;
                            end
                        end else begin
                            if (LE(Temperature, 64'h402AF33330000000)) begin
                                if (LE(Altitude, 64'h408E300000000000)) begin
                                    yield_f_reg = 64'h401DE66666666666;
                                end else begin
                                    yield_f_reg = 64'h401B147AE147AE14;
                                end
                            end else begin
                                if (LE(Season, 64'h3FE0000000000000)) begin
                                    yield_f_reg = 64'h402090624DD2F1AA;
                                end else begin
                                    yield_f_reg = 64'h40220F5C28F5C290;
                                end
                            end
                        end
                    end
                end else begin
                    if (LE(Soil_pH, 64'h401E666670000000)) begin
                        if (LE(Temperature, 64'h4030F5C290000000)) begin
                            if (LE(Soil_Type, 64'h4004000000000000)) begin
                                yield_f_reg = 64'h4024B851EB851EB8;
                            end else begin
                                yield_f_reg = 64'h4024D1EB851EB852;
                            end
                        end else begin
                            if (LE(Humidity, 64'h40489AE150000000)) begin
                                if (LE(Temperature, 64'h403947AE10000000)) begin
                                    yield_f_reg = 64'h4022947AE147AE14;
                                end else begin
                                    yield_f_reg = 64'h4023828F5C28F5C2;
                                end
                            end else begin
                                if (LE(Organic_Carbon, 64'h3FE4CCCCC8000000)) begin
                                    yield_f_reg = 64'h40204CCCCCCCCCCD;
                                end else begin
                                    yield_f_reg = 64'h40219D0369D0369D;
                                end
                            end
                        end
                    end else begin
                        if (LE(Soil_Type, 64'h3FE0000000000000)) begin
                            yield_f_reg = 64'h40215C28F5C28F5C;
                        end else begin
                            if (LE(Wind_Speed, 64'h40272E1480000000)) begin
                                if (LE(Organic_Carbon, 64'h3FF2CCCCC0000000)) begin
                                    yield_f_reg = 64'h401EC28F5C28F5C3;
                                end else begin
                                    yield_f_reg = 64'h401E851EB851EB85;
                                end
                            end else begin
                                if (LE(Season, 64'h3FF0000000000000)) begin
                                    yield_f_reg = 64'h401FD70A3D70A3D7;
                                end else begin
                                    yield_f_reg = 64'h401FB851EB851EB8;
                                end
                            end
                        end
                    end
                end
            end
        end else begin
            if (LE(P, 64'h404D400000000000)) begin
                if (LE(Fertilizer_Used, 64'h4070FB9990000000)) begin
                    if (LE(Altitude, 64'h409B0A0000000000)) begin
                        if (LE(Organic_Carbon, 64'h3FF6147AE0000000)) begin
                            if (LE(K, 64'h4060F00000000000)) begin
                                if (LE(Sunlight_Hours, 64'h4010B851F0000000)) begin
                                    yield_f_reg = 64'h40180A3D70A3D70A;
                                end else begin
                                    yield_f_reg = 64'h401F44C118DE5AB2;
                                end
                            end else begin
                                yield_f_reg = 64'h4024666666666666;
                            end
                        end else begin
                            if (LE(Altitude, 64'h408DA00000000000)) begin
                                if (LE(Altitude, 64'h4089C40000000000)) begin
                                    yield_f_reg = 64'h4022E66666666666;
                                end else begin
                                    yield_f_reg = 64'h4023000000000000;
                                end
                            end else begin
                                yield_f_reg = 64'h4022851EB851EB85;
                            end
                        end
                    end else begin
                        if (LE(Pesticide_Used, 64'h402E68F5C0000000)) begin
                            if (LE(P, 64'h404BC00000000000)) begin
                                if (LE(Organic_Carbon, 64'h3FF2666660000000)) begin
                                    yield_f_reg = 64'h40215A740DA740DB;
                                end else begin
                                    yield_f_reg = 64'h4023028F5C28F5C2;
                                end
                            end else begin
                                yield_f_reg = 64'h401D3D70A3D70A3D;
                            end
                        end else begin
                            if (LE(Temperature, 64'h403F5AE140000000)) begin
                                if (LE(P, 64'h4048800000000000)) begin
                                    yield_f_reg = 64'h40255C28F5C28F5C;
                                end else begin
                                    yield_f_reg = 64'h40240A3D70A3D70A;
                                end
                            end else begin
                                yield_f_reg = 64'h4027333333333333;
                            end
                        end
                    end
                end else begin
                    if (LE(Altitude, 64'h4063700000000000)) begin
                        if (LE(Soil_pH, 64'h4017B33330000000)) begin
                            if (LE(Irrigation_Type, 64'h3FF8000000000000)) begin
                                yield_f_reg = 64'h40206147AE147AE1;
                            end else begin
                                yield_f_reg = 64'h40220F5C28F5C28F;
                            end
                        end else begin
                            if (LE(Humidity, 64'h404DDCCCC0000000)) begin
                                yield_f_reg = 64'h401F70A3D70A3D71;
                            end else begin
                                yield_f_reg = 64'h401C0A3D70A3D70A;
                            end
                        end
                    end else begin
                        if (LE(K, 64'h405E800000000000)) begin
                            if (LE(Wind_Speed, 64'h400770A3E0000000)) begin
                                if (LE(Organic_Carbon, 64'h3FE6147AE0000000)) begin
                                    yield_f_reg = 64'h402564B17E4B17E5;
                                end else begin
                                    yield_f_reg = 64'h402351EB851EB852;
                                end
                            end else begin
                                if (LE(Pesticide_Used, 64'h4026BAE150000000)) begin
                                    yield_f_reg = 64'h40216E6666666666;
                                end else begin
                                    yield_f_reg = 64'h4022DFA6A1FA6A1F;
                                end
                            end
                        end else begin
                            if (LE(Fertilizer_Used, 64'h4075578520000000)) begin
                                if (LE(Altitude, 64'h4083A40000000000)) begin
                                    yield_f_reg = 64'h40245D2F1A9FBE76;
                                end else begin
                                    yield_f_reg = 64'h40228B851EB851EB;
                                end
                            end else begin
                                if (LE(K, 64'h4060800000000000)) begin
                                    yield_f_reg = 64'h4025F0A3D70A3D71;
                                end else begin
                                    yield_f_reg = 64'h4025D70A3D70A3D7;
                                end
                            end
                        end
                    end
                end
            end else begin
                if (LE(Soil_Moisture, 64'h4045447AE0000000)) begin
                    if (LE(Rainfall, 64'h40A15DCF60000000)) begin
                        if (LE(Sunlight_Hours, 64'h4021F851F0000000)) begin
                            if (LE(Humidity, 64'h40427AE150000000)) begin
                                if (LE(Fertilizer_Used, 64'h4072FD3330000000)) begin
                                    yield_f_reg = 64'h4022C28F5C28F5C3;
                                end else begin
                                    yield_f_reg = 64'h4024E8F5C28F5C29;
                                end
                            end else begin
                                if (LE(Humidity, 64'h404621EB80000000)) begin
                                    yield_f_reg = 64'h40208E147AE147AE;
                                end else begin
                                    yield_f_reg = 64'h402285C28F5C28F7;
                                end
                            end
                        end else begin
                            if (LE(Soil_Moisture, 64'h403BC66660000000)) begin
                                if (LE(Irrigation_Type, 64'h3FE0000000000000)) begin
                                    yield_f_reg = 64'h401DD70A3D70A3D7;
                                end else begin
                                    yield_f_reg = 64'h401B5C28F5C28F5C;
                                end
                            end else begin
                                if (LE(K, 64'h4041800000000000)) begin
                                    yield_f_reg = 64'h4020CCCCCCCCCCCD;
                                end else begin
                                    yield_f_reg = 64'h401FAE147AE147AF;
                                end
                            end
                        end
                    end else begin
                        if (LE(Rainfall, 64'h40A5923D70000000)) begin
                            if (LE(Soil_pH, 64'h4014C7AE10000000)) begin
                                yield_f_reg = 64'h40207AE147AE147B;
                            end else begin
                                if (LE(Soil_pH, 64'h40169EB850000000)) begin
                                    yield_f_reg = 64'h402500DA740DA741;
                                end else begin
                                    yield_f_reg = 64'h40239EB851EB8520;
                                end
                            end
                        end else begin
                            yield_f_reg = 64'h401C70A3D70A3D71;
                        end
                    end
                end else begin
                    if (LE(Fertilizer_Used, 64'h406BD40000000000)) begin
                        if (LE(Irrigation_Type, 64'h4000000000000000)) begin
                            if (LE(Wind_Speed, 64'h40157AE140000000)) begin
                                yield_f_reg = 64'h4020B851EB851EB8;
                            end else begin
                                yield_f_reg = 64'h401F28F5C28F5C29;
                            end
                        end else begin
                            yield_f_reg = 64'h4022666666666666;
                        end
                    end else begin
                        if (LE(K, 64'h403B000000000000)) begin
                            yield_f_reg = 64'h40204CCCCCCCCCCD;
                        end else begin
                            if (LE(Temperature, 64'h4028599990000000)) begin
                                if (LE(Soil_Moisture, 64'h404A751EB0000000)) begin
                                    yield_f_reg = 64'h4023DC28F5C28F5C;
                                end else begin
                                    yield_f_reg = 64'h4021BD70A3D70A3E;
                                end
                            end else begin
                                if (LE(Fertilizer_Used, 64'h407577D700000000)) begin
                                    yield_f_reg = 64'h4025600000000000;
                                end else begin
                                    yield_f_reg = 64'h4022FAE147AE147A;
                                end
                            end
                        end
                    end
                end
            end
        end
    end
end
