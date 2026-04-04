if (LE(num__Fertilizer_Used, 64'h40680B5C20000000)) begin
    if (LE(num__Rainfall, 64'h409255CCD0000000)) begin
        if (LE(num__Fertilizer_Used, 64'h406044A3E0000000)) begin
            if (LE(num__Soil_Moisture, 64'h4043F33330000000)) begin
                if (LE(num__Temperature, 64'h402A051EC0000000)) begin
                    yield_f_reg = 64'h4021828F5C28F5C3;
                end else begin
                    yield_f_reg = 64'h401D228F5C28F5C2;
                end
            end else begin
                if (LE(num__Humidity, 64'h4055261480000000)) begin
                    yield_f_reg = 64'h402094911878CC19;
                end else begin
                    yield_f_reg = 64'h40232851EB851EB9;
                end
            end
        end else begin
            if (LE(num__K, 64'h4061A00000000000)) begin
                if (LE(num__Soil_Moisture, 64'h4043470A40000000)) begin
                    yield_f_reg = 64'h4020A22A890EF756;
                end else begin
                    yield_f_reg = 64'h402213F59620F9EE;
                end
            end else begin
                yield_f_reg = 64'h40241D0369D0369D;
            end
        end
    end else begin
        if (LE(num__Rainfall, 64'h40A16B6150000000)) begin
            if (LE(num__N, 64'h4061500000000000)) begin
                if (LE(num__K, 64'h4059600000000000)) begin
                    yield_f_reg = 64'h402208D90421C628;
                end else begin
                    yield_f_reg = 64'h402352417806B6FA;
                end
            end else begin
                if (LE(num__Humidity, 64'h40424147B0000000)) begin
                    yield_f_reg = 64'h402068F5C28F5C28;
                end else begin
                    yield_f_reg = 64'h40243D45AA630AE8;
                end
            end
        end else begin
            if (LE(num__Fertilizer_Used, 64'h405EAA8F50000000)) begin
                if (LE(num__Soil_Moisture, 64'h4038A00000000000)) begin
                    yield_f_reg = 64'h4021C4B17E4B17E5;
                end else begin
                    yield_f_reg = 64'h4023D495182A9932;
                end
            end else begin
                if (LE(num__Soil_pH, 64'h401F947AE0000000)) begin
                    yield_f_reg = 64'h4025A9DE4E9DE4EB;
                end else begin
                    yield_f_reg = 64'h401FEB851EB851EC;
                end
            end
        end
    end
end else begin
    if (LE(num__Rainfall, 64'h40981FFAE0000000)) begin
        if (LE(num__Soil_Moisture, 64'h4044728F60000000)) begin
            if (LE(num__Fertilizer_Used, 64'h4070E5AE20000000)) begin
                if (LE(num__Soil_Moisture, 64'h4036B47AE0000000)) begin
                    yield_f_reg = 64'h4020A1D950C83FB6;
                end else begin
                    yield_f_reg = 64'h4022C9A33CD67009;
                end
            end else begin
                if (LE(num__Temperature, 64'h4034CF5C20000000)) begin
                    yield_f_reg = 64'h4022A7CDCA7CDCA8;
                end else begin
                    yield_f_reg = 64'h4024DE7F5509597F;
                end
            end
        end else begin
            if (LE(num__Fertilizer_Used, 64'h40736A3D80000000)) begin
                if (LE(num__Rainfall, 64'h4090F970A0000000)) begin
                    yield_f_reg = 64'h402408541AC2B24F;
                end else begin
                    yield_f_reg = 64'h40259885A8B0C656;
                end
            end else begin
                if (LE(num__Rainfall, 64'h408C21F5C0000000)) begin
                    yield_f_reg = 64'h4025EAEAEAEAEAEA;
                end else begin
                    yield_f_reg = 64'h40285CCCCCCCCCCD;
                end
            end
        end
    end else begin
        if (LE(num__Soil_Moisture, 64'h404AB1EB80000000)) begin
            if (LE(num__Fertilizer_Used, 64'h4073168F60000000)) begin
                if (LE(num__Rainfall, 64'h40A24D4290000000)) begin
                    yield_f_reg = 64'h4024F98475984757;
                end else begin
                    yield_f_reg = 64'h4026E9DC0588FE9E;
                end
            end else begin
                if (LE(num__Rainfall, 64'h40A0863AE0000000)) begin
                    yield_f_reg = 64'h4026E16C16C16C17;
                end else begin
                    yield_f_reg = 64'h40287B72EA61D950;
                end
            end
        end else begin
            if (LE(num__Fertilizer_Used, 64'h406D34F5D0000000)) begin
                if (LE(num__Rainfall, 64'h40A1666B80000000)) begin
                    yield_f_reg = 64'h40258BB3EE721A55;
                end else begin
                    yield_f_reg = 64'h40282147AE147AE1;
                end
            end else begin
                if (LE(num__N, 64'h405BE00000000000)) begin
                    yield_f_reg = 64'h40281E94E5279383;
                end else begin
                    yield_f_reg = 64'h4029FB8DBE3F9887;
                end
            end
        end
    end
end
