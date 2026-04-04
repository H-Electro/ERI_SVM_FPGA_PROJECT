if (LE(Fertilizer_Used, 64'h406B3EB850000000)) begin
    if (LE(Rainfall, 64'h40991F1480000000)) begin
        if (LE(Fertilizer_Used, 64'h40622570A0000000)) begin
            if (LE(N, 64'h4059C00000000000)) begin
                if (LE(Soil_Moisture, 64'h403447AE10000000)) begin
                    yield_f_reg = 64'h4017CFB9C8695362;
                end else begin
                    yield_f_reg = 64'h401B687894313E77;
                end
            end else begin
                if (LE(Soil_Moisture, 64'h40439E1480000000)) begin
                    yield_f_reg = 64'h401BE18618618618;
                end else begin
                    yield_f_reg = 64'h401F2FAE147AE148;
                end
            end
        end else begin
            if (LE(Rainfall, 64'h408DFFF5C0000000)) begin
                if (LE(Soil_Moisture, 64'h40471147B0000000)) begin
                    yield_f_reg = 64'h401C83F6C03F6C04;
                end else begin
                    yield_f_reg = 64'h4020617839A5BC7E;
                end
            end else begin
                if (LE(Wind_Speed, 64'h4012BD70A0000000)) begin
                    yield_f_reg = 64'h40231D4C3B2A1907;
                end else begin
                    yield_f_reg = 64'h402031A1871A1873;
                end
            end
        end
    end else begin
        if (LE(Soil_Moisture, 64'h4040047AE0000000)) begin
            if (LE(Fertilizer_Used, 64'h4054099990000000)) begin
                yield_f_reg = 64'h4019FAE147AE147B;
            end else begin
                if (LE(Irrigation_Type, 64'h3FF8000000000000)) begin
                    yield_f_reg = 64'h401F724924924926;
                end else begin
                    yield_f_reg = 64'h40213C17B6B40227;
                end
            end
        end else begin
            if (LE(Fertilizer_Used, 64'h40614547B0000000)) begin
                if (LE(Wind_Speed, 64'h400C147AE0000000)) begin
                    yield_f_reg = 64'h402306E978D4FDF5;
                end else begin
                    yield_f_reg = 64'h4020BD32D04719B3;
                end
            end else begin
                if (LE(Soil_pH, 64'h4015051EC0000000)) begin
                    yield_f_reg = 64'h401FFC962FC962FB;
                end else begin
                    yield_f_reg = 64'h4022D8AC5081F12B;
                end
            end
        end
    end
end else begin
    if (LE(Rainfall, 64'h409BBC6670000000)) begin
        if (LE(Soil_Moisture, 64'h404AAB8520000000)) begin
            if (LE(Rainfall, 64'h408FC48F50000000)) begin
                if (LE(Fertilizer_Used, 64'h4071E98520000000)) begin
                    yield_f_reg = 64'h401FD0440E7E5888;
                end else begin
                    yield_f_reg = 64'h402171E2A9EDBBEB;
                end
            end else begin
                if (LE(Soil_Moisture, 64'h403D3999A0000000)) begin
                    yield_f_reg = 64'h4021558CF08C023D;
                end else begin
                    yield_f_reg = 64'h4023145BAC212877;
                end
            end
        end else begin
            if (LE(Soil_pH, 64'h401E428F50000000)) begin
                if (LE(N, 64'h4057A00000000000)) begin
                    yield_f_reg = 64'h4022C1DCA01DCA02;
                end else begin
                    yield_f_reg = 64'h4024F300C9A633FD;
                end
            end else begin
                yield_f_reg = 64'h40219374BC6A7EFB;
            end
        end
    end else begin
        if (LE(Soil_Moisture, 64'h40417A3D70000000)) begin
            if (LE(K, 64'h405EC00000000000)) begin
                if (LE(Fertilizer_Used, 64'h406FAEE150000000)) begin
                    yield_f_reg = 64'h4020D7530ECA8641;
                end else begin
                    yield_f_reg = 64'h40232DFA43FE5C91;
                end
            end else begin
                yield_f_reg = 64'h402508158ED23081;
            end
        end else begin
            if (LE(Rainfall, 64'h40A2F24510000000)) begin
                if (LE(N, 64'h405A200000000000)) begin
                    yield_f_reg = 64'h4023E75DB4A62893;
                end else begin
                    yield_f_reg = 64'h40259CF06ADA2813;
                end
            end else begin
                if (LE(Soil_pH, 64'h40156147B0000000)) begin
                    yield_f_reg = 64'h40244405D9F7390D;
                end else begin
                    yield_f_reg = 64'h4026E3851EB851EC;
                end
            end
        end
    end
end
