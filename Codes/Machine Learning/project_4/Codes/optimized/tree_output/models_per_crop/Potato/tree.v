if (LE(num__Fertilizer_Used, 64'h406DDF8510000000)) begin
    if (LE(num__Rainfall, 64'h40954E4290000000)) begin
        if (LE(num__Fertilizer_Used, 64'h405F8D1EB0000000)) begin
            if (LE(num__Soil_Moisture, 64'h404291EB80000000)) begin
                if (LE(num__Temperature, 64'h404173D700000000)) begin
                    yield_f_reg = 64'h403610943C76FAA5;
                end else begin
                    yield_f_reg = 64'h4037190FA1252FF7;
                end
            end else begin
                if (LE(num__K, 64'h4042400000000000)) begin
                    yield_f_reg = 64'h403649FBE76C8B43;
                end else begin
                    yield_f_reg = 64'h40378BFED46827C8;
                end
            end
        end else begin
            if (LE(num__Soil_Moisture, 64'h403CFEB850000000)) begin
                if (LE(num__Soil_pH, 64'h401BEB8520000000)) begin
                    yield_f_reg = 64'h4037B90AC3DF712B;
                end else begin
                    yield_f_reg = 64'h4036D7A91D7A91D7;
                end
            end else begin
                if (LE(num__Soil_Moisture, 64'h404C8B8520000000)) begin
                    yield_f_reg = 64'h403836F2A5A469DA;
                end else begin
                    yield_f_reg = 64'h403900866ECD533D;
                end
            end
        end
    end else begin
        if (LE(num__Soil_Moisture, 64'h4046D51EB0000000)) begin
            if (LE(num__Rainfall, 64'h40A02E5710000000)) begin
                if (LE(num__Wind_Speed, 64'h402A8CCCD0000000)) begin
                    yield_f_reg = 64'h4038732079B5AFD4;
                end else begin
                    yield_f_reg = 64'h4037C215FF3DD1BB;
                end
            end else begin
                if (LE(num__Fertilizer_Used, 64'h40600DEB90000000)) begin
                    yield_f_reg = 64'h40388C6F2D593BFA;
                end else begin
                    yield_f_reg = 64'h40396D9D52D9D52F;
                end
            end
        end else begin
            if (LE(num__Fertilizer_Used, 64'h405BA51EB0000000)) begin
                if (LE(num__Rainfall, 64'h40A173D1F0000000)) begin
                    yield_f_reg = 64'h40382231BCB564EF;
                end else begin
                    yield_f_reg = 64'h40398AF8AF8AF8B0;
                end
            end else begin
                if (LE(num__Rainfall, 64'h40A348C7B0000000)) begin
                    yield_f_reg = 64'h4039AC53B36C3016;
                end else begin
                    yield_f_reg = 64'h403AA8380CEF4AEA;
                end
            end
        end
    end
end else begin
    if (LE(num__Rainfall, 64'h4096BCB850000000)) begin
        if (LE(num__Soil_Moisture, 64'h403867AE10000000)) begin
            if (LE(num__Rainfall, 64'h40912E3850000000)) begin
                if (LE(num__Wind_Speed, 64'h402DA66670000000)) begin
                    yield_f_reg = 64'h40383F1C0C77517A;
                end else begin
                    yield_f_reg = 64'h403728F5C28F5C29;
                end
            end else begin
                yield_f_reg = 64'h4039094160E2DAFB;
            end
        end else begin
            if (LE(num__N, 64'h4064F00000000000)) begin
                if (LE(num__K, 64'h4054C00000000000)) begin
                    yield_f_reg = 64'h4038CAE5B54692AE;
                end else begin
                    yield_f_reg = 64'h403977E73BC5E4DC;
                end
            end else begin
                yield_f_reg = 64'h403A810624DD2F1B;
            end
        end
    end else begin
        if (LE(num__Soil_Moisture, 64'h4043E3D700000000)) begin
            if (LE(num__Wind_Speed, 64'h4028F5C290000000)) begin
                if (LE(num__Fertilizer_Used, 64'h40714B47B0000000)) begin
                    yield_f_reg = 64'h4039A130463796AB;
                end else begin
                    yield_f_reg = 64'h403A97BFB96C3A98;
                end
            end else begin
                if (LE(num__Rainfall, 64'h40A297A8F0000000)) begin
                    yield_f_reg = 64'h4038F3BA2086ED53;
                end else begin
                    yield_f_reg = 64'h403A3F9885A8B0C7;
                end
            end
        end else begin
            if (LE(num__Soil_pH, 64'h40168A3D70000000)) begin
                if (LE(num__Pesticide_Used, 64'h40329D70B0000000)) begin
                    yield_f_reg = 64'h4039BCB564EFE898;
                end else begin
                    yield_f_reg = 64'h403AA8F5C28F5C29;
                end
            end else begin
                if (LE(num__Rainfall, 64'h409F9070A0000000)) begin
                    yield_f_reg = 64'h403AD2D6C70609FB;
                end else begin
                    yield_f_reg = 64'h403BA55B66C77D8B;
                end
            end
        end
    end
end
