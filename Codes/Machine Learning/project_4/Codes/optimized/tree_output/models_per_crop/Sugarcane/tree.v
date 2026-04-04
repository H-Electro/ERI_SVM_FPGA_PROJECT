if (LE(num__Fertilizer_Used, 64'h406D3C7AE0000000)) begin
    if (LE(num__Rainfall, 64'h408F010A40000000)) begin
        if (LE(num__K, 64'h405FA00000000000)) begin
            if (LE(num__Wind_Speed, 64'h402B0F5C30000000)) begin
                if (LE(num__Soil_Moisture, 64'h40482D70A0000000)) begin
                    if (LE(num__Soil_pH, 64'h401D0A3D70000000)) begin
                        if (LE(num__K, 64'h4059600000000000)) begin
                            yield_f_reg = 64'h4052447AE147AE14;
                        end else begin
                            yield_f_reg = 64'h405281999999999A;
                        end
                    end else begin
                        yield_f_reg = 64'h40521B851EB851EC;
                    end
                end else begin
                    if (LE(num__Fertilizer_Used, 64'h40633570A0000000)) begin
                        yield_f_reg = 64'h40525AE147AE147B;
                    end else begin
                        yield_f_reg = 64'h40529147AE147AE2;
                    end
                end
            end else begin
                if (LE(num__K, 64'h4053E00000000000)) begin
                    yield_f_reg = 64'h4051F8F5C28F5C29;
                end else begin
                    yield_f_reg = 64'h40523C28F5C28F5C;
                end
            end
        end else begin
            if (LE(num__N, 64'h405D600000000000)) begin
                yield_f_reg = 64'h40526851EB851EB8;
            end else begin
                yield_f_reg = 64'h4052B66666666666;
            end
        end
    end else begin
        if (LE(num__Rainfall, 64'h40A16CAB80000000)) begin
            if (LE(num__Soil_Moisture, 64'h4049B1EB80000000)) begin
                if (LE(num__Fertilizer_Used, 64'h405860F5C0000000)) begin
                    if (LE(num__N, 64'h4061100000000000)) begin
                        if (LE(num__Rainfall, 64'h409B38CCD0000000)) begin
                            yield_f_reg = 64'h4052366666666666;
                        end else begin
                            yield_f_reg = 64'h40525AE147AE147B;
                        end
                    end else begin
                        yield_f_reg = 64'h4052A3D70A3D70A4;
                    end
                end else begin
                    if (LE(num__Soil_pH, 64'h401CE66660000000)) begin
                        if (LE(num__Soil_pH, 64'h40183851F0000000)) begin
                            yield_f_reg = 64'h405281EB851EB852;
                        end else begin
                            yield_f_reg = 64'h4052A70A3D70A3D7;
                        end
                    end else begin
                        if (LE(num__Fertilizer_Used, 64'h4065321480000000)) begin
                            yield_f_reg = 64'h40525851EB851EB8;
                        end else begin
                            yield_f_reg = 64'h405285C28F5C28F6;
                        end
                    end
                end
            end else begin
                if (LE(num__P, 64'h4053000000000000)) begin
                    if (LE(num__N, 64'h405BC00000000000)) begin
                        if (LE(num__Altitude, 64'h40952C0000000000)) begin
                            yield_f_reg = 64'h4052A47AE147AE14;
                        end else begin
                            yield_f_reg = 64'h405269999999999A;
                        end
                    end else begin
                        yield_f_reg = 64'h4052B51EB851EB85;
                    end
                end else begin
                    yield_f_reg = 64'h4052E8F5C28F5C29;
                end
            end
        end else begin
            if (LE(num__Soil_pH, 64'h401F8A3D70000000)) begin
                if (LE(num__Fertilizer_Used, 64'h4060E68F60000000)) begin
                    if (LE(num__K, 64'h404B800000000000)) begin
                        yield_f_reg = 64'h405286147AE147AE;
                    end else begin
                        if (LE(num__Rainfall, 64'h40A3E04520000000)) begin
                            yield_f_reg = 64'h4052BD70A3D70A3D;
                        end else begin
                            yield_f_reg = 64'h4052D051EB851EB8;
                        end
                    end
                end else begin
                    if (LE(num__Soil_Moisture, 64'h403735C290000000)) begin
                        yield_f_reg = 64'h4052AF5C28F5C28F;
                    end else begin
                        if (LE(num__Fertilizer_Used, 64'h4066FD47B0000000)) begin
                            yield_f_reg = 64'h4052E147AE147AE2;
                        end else begin
                            yield_f_reg = 64'h405309999999999A;
                        end
                    end
                end
            end else begin
                yield_f_reg = 64'h405280A3D70A3D71;
            end
        end
    end
end else begin
    if (LE(num__Rainfall, 64'h409932EB90000000)) begin
        if (LE(num__Soil_Moisture, 64'h40423851F0000000)) begin
            if (LE(num__Soil_pH, 64'h4015BD70A0000000)) begin
                yield_f_reg = 64'h4052747AE147AE14;
            end else begin
                if (LE(cat__Soil_Type_Loamy, 64'h3FE0000000000000)) begin
                    if (LE(num__Sunlight_Hours, 64'h4015000000000000)) begin
                        yield_f_reg = 64'h4052C33333333333;
                    end else begin
                        if (LE(num__Organic_Carbon, 64'h3FF051EB90000000)) begin
                            yield_f_reg = 64'h40529A3D70A3D70A;
                        end else begin
                            yield_f_reg = 64'h40527AE147AE147B;
                        end
                    end
                end else begin
                    yield_f_reg = 64'h4052C147AE147AE2;
                end
            end
        end else begin
            if (LE(num__Rainfall, 64'h4084DFEB80000000)) begin
                if (LE(num__Soil_pH, 64'h4017428F60000000)) begin
                    yield_f_reg = 64'h40529051EB851EB8;
                end else begin
                    yield_f_reg = 64'h4052D3851EB851EC;
                end
            end else begin
                if (LE(num__Soil_Moisture, 64'h404AAC28F0000000)) begin
                    if (LE(num__Soil_pH, 64'h4016EB8510000000)) begin
                        yield_f_reg = 64'h4052C51EB851EB85;
                    end else begin
                        if (LE(num__Sunlight_Hours, 64'h40207AE140000000)) begin
                            yield_f_reg = 64'h4052E1EB851EB852;
                        end else begin
                            yield_f_reg = 64'h4052FD1EB851EB85;
                        end
                    end
                end else begin
                    if (LE(num__K, 64'h404A400000000000)) begin
                        yield_f_reg = 64'h4052DC28F5C28F5C;
                    end else begin
                        if (LE(num__Altitude, 64'h4091040000000000)) begin
                            yield_f_reg = 64'h40530F5C28F5C28F;
                        end else begin
                            yield_f_reg = 64'h405344CCCCCCCCCC;
                        end
                    end
                end
            end
        end
    end else begin
        if (LE(num__Fertilizer_Used, 64'h4073DEB850000000)) begin
            if (LE(num__Soil_Moisture, 64'h4048FB8520000000)) begin
                if (LE(num__Wind_Speed, 64'h40225999A0000000)) begin
                    if (LE(num__N, 64'h4059C00000000000)) begin
                        if (LE(num__P, 64'h4048400000000000)) begin
                            yield_f_reg = 64'h4052EC28F5C28F5C;
                        end else begin
                            yield_f_reg = 64'h4053128F5C28F5C3;
                        end
                    end else begin
                        yield_f_reg = 64'h4053370A3D70A3D7;
                    end
                end else begin
                    if (LE(num__Sunlight_Hours, 64'h4017E66660000000)) begin
                        yield_f_reg = 64'h4053066666666666;
                    end else begin
                        if (LE(num__Rainfall, 64'h409E573850000000)) begin
                            yield_f_reg = 64'h4052F47AE147AE14;
                        end else begin
                            yield_f_reg = 64'h4052D428F5C28F5C;
                        end
                    end
                end
            end else begin
                if (LE(num__Humidity, 64'h4049BB8520000000)) begin
                    yield_f_reg = 64'h40534FAE147AE148;
                end else begin
                    if (LE(num__Altitude, 64'h408CD00000000000)) begin
                        yield_f_reg = 64'h4052EE147AE147AE;
                    end else begin
                        yield_f_reg = 64'h40532CCCCCCCCCCD;
                    end
                end
            end
        end else begin
            if (LE(num__Soil_Moisture, 64'h4042DF5C20000000)) begin
                if (LE(num__Rainfall, 64'h40A19C4F60000000)) begin
                    yield_f_reg = 64'h405305C28F5C28F6;
                end else begin
                    yield_f_reg = 64'h405331EB851EB852;
                end
            end else begin
                if (LE(num__Wind_Speed, 64'h4028F5C290000000)) begin
                    yield_f_reg = 64'h4053670A3D70A3D7;
                end else begin
                    yield_f_reg = 64'h4053433333333333;
                end
            end
        end
    end
end
