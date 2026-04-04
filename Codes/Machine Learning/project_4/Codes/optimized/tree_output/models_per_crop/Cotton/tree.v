if (LE(num__Fertilizer_Used, 64'h406B04A3E0000000)) begin
    if (LE(num__Rainfall, 64'h4096AA3D70000000)) begin
        if (LE(num__Soil_Moisture, 64'h403523D700000000)) begin
            if (LE(num__Fertilizer_Used, 64'h4061A4CCD0000000)) begin
                yield_f_reg = 64'h40118A3D70A3D70A;
            end else begin
                yield_f_reg = 64'h401399999999999A;
            end
        end else begin
            if (LE(num__Fertilizer_Used, 64'h405B37AE10000000)) begin
                if (LE(num__Wind_Speed, 64'h400EA3D700000000)) begin
                    yield_f_reg = 64'h40198A3D70A3D70A;
                end else begin
                    if (LE(num__K, 64'h4055E00000000000)) begin
                        if (LE(num__Rainfall, 64'h408FDCF5C0000000)) begin
                            yield_f_reg = 64'h4011851EB851EB85;
                        end else begin
                            yield_f_reg = 64'h4015666666666666;
                        end
                    end else begin
                        if (LE(num__Rainfall, 64'h408A520000000000)) begin
                            yield_f_reg = 64'h40163D70A3D70A3D;
                        end else begin
                            yield_f_reg = 64'h4018AE147AE147AE;
                        end
                    end
                end
            end else begin
                if (LE(num__Wind_Speed, 64'h4023EB8520000000)) begin
                    if (LE(num__K, 64'h4053E00000000000)) begin
                        yield_f_reg = 64'h4019B33333333333;
                    end else begin
                        if (LE(cat__Soil_Type_Silt, 64'h3FE0000000000000)) begin
                            yield_f_reg = 64'h401A99999999999A;
                        end else begin
                            yield_f_reg = 64'h401DCCCCCCCCCCCD;
                        end
                    end
                end else begin
                    if (LE(num__Soil_pH, 64'h401D7AE140000000)) begin
                        if (LE(num__K, 64'h4052000000000000)) begin
                            yield_f_reg = 64'h4016CCCCCCCCCCCD;
                        end else begin
                            yield_f_reg = 64'h401A7AE147AE147B;
                        end
                    end else begin
                        yield_f_reg = 64'h4013E66666666666;
                    end
                end
            end
        end
    end else begin
        if (LE(num__Fertilizer_Used, 64'h406347AE10000000)) begin
            if (LE(num__Soil_Moisture, 64'h404983D710000000)) begin
                if (LE(num__Rainfall, 64'h409DB96B80000000)) begin
                    if (LE(num__Wind_Speed, 64'h401FD1EB90000000)) begin
                        yield_f_reg = 64'h401AEB851EB851EC;
                    end else begin
                        if (LE(num__Soil_Moisture, 64'h4040B51EB0000000)) begin
                            yield_f_reg = 64'h40147AE147AE147B;
                        end else begin
                            yield_f_reg = 64'h4018CCCCCCCCCCCD;
                        end
                    end
                end else begin
                    if (LE(num__Humidity, 64'h4051C199A0000000)) begin
                        if (LE(num__P, 64'h4044C00000000000)) begin
                            yield_f_reg = 64'h40183851EB851EB8;
                        end else begin
                            yield_f_reg = 64'h401BC28F5C28F5C3;
                        end
                    end else begin
                        if (LE(num__Wind_Speed, 64'h40251C28F0000000)) begin
                            yield_f_reg = 64'h401DEB851EB851EC;
                        end else begin
                            yield_f_reg = 64'h401BC28F5C28F5C3;
                        end
                    end
                end
            end else begin
                if (LE(num__N, 64'h4058400000000000)) begin
                    yield_f_reg = 64'h401DAE147AE147AE;
                end else begin
                    yield_f_reg = 64'h4020F0A3D70A3D71;
                end
            end
        end else begin
            if (LE(num__Wind_Speed, 64'h4022A8F5D0000000)) begin
                if (LE(num__Soil_Moisture, 64'h404483D700000000)) begin
                    if (LE(num__Humidity, 64'h404BFF5C30000000)) begin
                        yield_f_reg = 64'h401D5C28F5C28F5C;
                    end else begin
                        yield_f_reg = 64'h4021EE147AE147AE;
                    end
                end else begin
                    if (LE(num__Humidity, 64'h404A4A3D70000000)) begin
                        yield_f_reg = 64'h4023D70A3D70A3D7;
                    end else begin
                        yield_f_reg = 64'h4021451EB851EB85;
                    end
                end
            end else begin
                if (LE(num__Rainfall, 64'h409AC60000000000)) begin
                    yield_f_reg = 64'h40193851EB851EB8;
                end else begin
                    if (LE(num__Soil_Moisture, 64'h404027AE18000000)) begin
                        yield_f_reg = 64'h401C570A3D70A3D7;
                    end else begin
                        if (LE(num__P, 64'h4045400000000000)) begin
                            yield_f_reg = 64'h401DC28F5C28F5C2;
                        end else begin
                            yield_f_reg = 64'h402070A3D70A3D71;
                        end
                    end
                end
            end
        end
    end
end else begin
    if (LE(num__Rainfall, 64'h409B440520000000)) begin
        if (LE(num__Soil_Moisture, 64'h403CF47AE0000000)) begin
            if (LE(num__N, 64'h405CE00000000000)) begin
                if (LE(num__Humidity, 64'h404923D710000000)) begin
                    yield_f_reg = 64'h401C47AE147AE148;
                end else begin
                    if (LE(num__Altitude, 64'h40915C0000000000)) begin
                        yield_f_reg = 64'h4017F0A3D70A3D71;
                    end else begin
                        yield_f_reg = 64'h401AB851EB851EB8;
                    end
                end
            end else begin
                if (LE(num__K, 64'h4053E00000000000)) begin
                    yield_f_reg = 64'h401CD70A3D70A3D7;
                end else begin
                    yield_f_reg = 64'h4020400000000000;
                end
            end
        end else begin
            if (LE(num__Wind_Speed, 64'h40224A3D70000000)) begin
                if (LE(num__Rainfall, 64'h408F72E150000000)) begin
                    if (LE(num__Humidity, 64'h404E90A3D0000000)) begin
                        if (LE(num__Organic_Carbon, 64'h3FEE3D70A0000000)) begin
                            yield_f_reg = 64'h40200F5C28F5C28F;
                        end else begin
                            yield_f_reg = 64'h4020EE147AE147AE;
                        end
                    end else begin
                        yield_f_reg = 64'h401C23D70A3D70A4;
                    end
                end else begin
                    if (LE(num__N, 64'h4060B00000000000)) begin
                        yield_f_reg = 64'h40210A3D70A3D70A;
                    end else begin
                        yield_f_reg = 64'h4022666666666666;
                    end
                end
            end else begin
                if (LE(num__Fertilizer_Used, 64'h4070E799A0000000)) begin
                    if (LE(num__Soil_pH, 64'h401C9999A0000000)) begin
                        if (LE(num__Soil_Moisture, 64'h40480A3D70000000)) begin
                            yield_f_reg = 64'h401D5C28F5C28F5C;
                        end else begin
                            yield_f_reg = 64'h40212B851EB851EC;
                        end
                    end else begin
                        yield_f_reg = 64'h401B570A3D70A3D7;
                    end
                end else begin
                    if (LE(num__Soil_pH, 64'h40168A3D70000000)) begin
                        yield_f_reg = 64'h401E147AE147AE14;
                    end else begin
                        if (LE(num__Rainfall, 64'h4089FB70A0000000)) begin
                            yield_f_reg = 64'h401DF5C28F5C28F6;
                        end else begin
                            yield_f_reg = 64'h40208A3D70A3D70A;
                        end
                    end
                end
            end
        end
    end else begin
        if (LE(num__N, 64'h4052600000000000)) begin
            if (LE(num__Wind_Speed, 64'h4020851EB0000000)) begin
                yield_f_reg = 64'h40220F5C28F5C28F;
            end else begin
                if (LE(num__Soil_Moisture, 64'h404805C290000000)) begin
                    yield_f_reg = 64'h401FD70A3D70A3D7;
                end else begin
                    yield_f_reg = 64'h40219EB851EB851F;
                end
            end
        end else begin
            if (LE(num__K, 64'h404C000000000000)) begin
                if (LE(num__Temperature, 64'h4036D70A40000000)) begin
                    yield_f_reg = 64'h402099999999999A;
                end else begin
                    yield_f_reg = 64'h40226147AE147AE1;
                end
            end else begin
                if (LE(num__P, 64'h404C400000000000)) begin
                    if (LE(num__Soil_pH, 64'h401B333330000000)) begin
                        yield_f_reg = 64'h4022FAE147AE147B;
                    end else begin
                        yield_f_reg = 64'h4021333333333333;
                    end
                end else begin
                    if (LE(num__Soil_Moisture, 64'h40469B8520000000)) begin
                        if (LE(num__Rainfall, 64'h40A0751480000000)) begin
                            yield_f_reg = 64'h4022547AE147AE14;
                        end else begin
                            yield_f_reg = 64'h4023851EB851EB85;
                        end
                    end else begin
                        yield_f_reg = 64'h4024BD70A3D70A3E;
                    end
                end
            end
        end
    end
end
