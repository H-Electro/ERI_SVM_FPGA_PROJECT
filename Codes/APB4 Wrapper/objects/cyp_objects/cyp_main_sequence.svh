`ifndef CYP_WRAPPER_MAIN_SEQUENCE_SVH
`define CYP_WRAPPER_MAIN_SEQUENCE_SVH

class cyp_main_sequence extends uvm_sequence#(cyp_seq_item);

    `uvm_object_utils(cyp_main_sequence)

    int fp_altitude, fp_crop_type, fp_fertilizer_used, fp_humidity, fp_irrigation_type;
    int fp_K, fp_N, fp_organic_carbon, fp_P, fp_pesticide_used;
    int fp_rainfall, fp_region, fp_season, fp_soil_moisture, fp_soil_ph;
    int fp_soil_type, fp_sunlight_hours, fp_temperature, fp_wind_speed;

    int PERCENTAGE;

    function new(string name = "cyp_main_sequence", uvm_component parent = null, int percent = 100);
        super.new(name);
        PERCENTAGE = percent;
    endfunction : new

    task body;
        string line;
        int total_lines = 0;
        int cycles_to_run;
        int i;
        int line_ok;
        int scan_ok;
        cyp_seq_item seq_item;

        fp_altitude         = $fopen("design/cyp_design/hex_outputs/altitude.hex","r");
        fp_crop_type        = $fopen("design/cyp_design/hex_outputs/crop_type.hex","r");
        fp_fertilizer_used  = $fopen("design/cyp_design/hex_outputs/fertilizer_used.hex","r");
        fp_humidity         = $fopen("design/cyp_design/hex_outputs/humidity.hex","r");
        fp_irrigation_type  = $fopen("design/cyp_design/hex_outputs/irrigation_type.hex","r");
        fp_K                = $fopen("design/cyp_design/hex_outputs/K.hex","r");
        fp_N                = $fopen("design/cyp_design/hex_outputs/N.hex","r");
        fp_organic_carbon   = $fopen("design/cyp_design/hex_outputs/organic_carbon.hex","r");
        fp_P                = $fopen("design/cyp_design/hex_outputs/P.hex","r");
        fp_pesticide_used   = $fopen("design/cyp_design/hex_outputs/pesticide_used.hex","r");
        fp_rainfall         = $fopen("design/cyp_design/hex_outputs/rainfall.hex","r");
        fp_region           = $fopen("design/cyp_design/hex_outputs/region.hex","r");
        fp_season           = $fopen("design/cyp_design/hex_outputs/season.hex","r");
        fp_soil_moisture    = $fopen("design/cyp_design/hex_outputs/soil_moisture.hex","r");
        fp_soil_ph          = $fopen("design/cyp_design/hex_outputs/soil_ph.hex","r");
        fp_soil_type        = $fopen("design/cyp_design/hex_outputs/soil_type.hex","r");
        fp_sunlight_hours   = $fopen("design/cyp_design/hex_outputs/sunlight_hours.hex","r");
        fp_temperature      = $fopen("design/cyp_design/hex_outputs/temperature.hex","r");
        fp_wind_speed       = $fopen("design/cyp_design/hex_outputs/wind_speed.hex","r");

        while (!$feof(fp_altitude)) begin
            line_ok = $fgets(line, fp_altitude);
            if (line_ok != 0)
                total_lines++;
        end
        cycles_to_run = (total_lines * PERCENTAGE) / 100;
        if ((total_lines > 0) && (cycles_to_run == 0) && (PERCENTAGE > 0))
            cycles_to_run = 1;

        $fclose(fp_altitude);         fp_altitude        = $fopen("design/cyp_design/hex_outputs/altitude.hex","r");
        $fclose(fp_crop_type);        fp_crop_type       = $fopen("design/cyp_design/hex_outputs/crop_type.hex","r");
        $fclose(fp_fertilizer_used);  fp_fertilizer_used = $fopen("design/cyp_design/hex_outputs/fertilizer_used.hex","r");
        $fclose(fp_humidity);         fp_humidity        = $fopen("design/cyp_design/hex_outputs/humidity.hex","r");
        $fclose(fp_irrigation_type);  fp_irrigation_type = $fopen("design/cyp_design/hex_outputs/irrigation_type.hex","r");
        $fclose(fp_K);                fp_K               = $fopen("design/cyp_design/hex_outputs/K.hex","r");
        $fclose(fp_N);                fp_N               = $fopen("design/cyp_design/hex_outputs/N.hex","r");
        $fclose(fp_organic_carbon);   fp_organic_carbon  = $fopen("design/cyp_design/hex_outputs/organic_carbon.hex","r");
        $fclose(fp_P);                fp_P               = $fopen("design/cyp_design/hex_outputs/P.hex","r");
        $fclose(fp_pesticide_used);   fp_pesticide_used  = $fopen("design/cyp_design/hex_outputs/pesticide_used.hex","r");
        $fclose(fp_rainfall);         fp_rainfall        = $fopen("design/cyp_design/hex_outputs/rainfall.hex","r");
        $fclose(fp_region);           fp_region          = $fopen("design/cyp_design/hex_outputs/region.hex","r");
        $fclose(fp_season);           fp_season          = $fopen("design/cyp_design/hex_outputs/season.hex","r");
        $fclose(fp_soil_moisture);    fp_soil_moisture   = $fopen("design/cyp_design/hex_outputs/soil_moisture.hex","r");
        $fclose(fp_soil_ph);          fp_soil_ph         = $fopen("design/cyp_design/hex_outputs/soil_ph.hex","r");
        $fclose(fp_soil_type);        fp_soil_type       = $fopen("design/cyp_design/hex_outputs/soil_type.hex","r");
        $fclose(fp_sunlight_hours);   fp_sunlight_hours  = $fopen("design/cyp_design/hex_outputs/sunlight_hours.hex","r");
        $fclose(fp_temperature);      fp_temperature     = $fopen("design/cyp_design/hex_outputs/temperature.hex","r");
        $fclose(fp_wind_speed);       fp_wind_speed      = $fopen("design/cyp_design/hex_outputs/wind_speed.hex","r");

        for (i = 0; i < cycles_to_run; i++) begin
            seq_item = cyp_seq_item::type_id::create("seq_item");

            seq_item.rst = 1'b0;
            line_ok = $fgets(line, fp_altitude);         scan_ok = $sscanf(line, "%h", seq_item.altitude);
            line_ok = $fgets(line, fp_crop_type);        scan_ok = $sscanf(line, "%h", seq_item.crop_type);
            line_ok = $fgets(line, fp_fertilizer_used);  scan_ok = $sscanf(line, "%h", seq_item.fertilizer_used);
            line_ok = $fgets(line, fp_humidity);         scan_ok = $sscanf(line, "%h", seq_item.humidity);
            line_ok = $fgets(line, fp_irrigation_type);  scan_ok = $sscanf(line, "%h", seq_item.irrigation_type);
            line_ok = $fgets(line, fp_K);                scan_ok = $sscanf(line, "%h", seq_item.K);
            line_ok = $fgets(line, fp_N);                scan_ok = $sscanf(line, "%h", seq_item.N);
            line_ok = $fgets(line, fp_organic_carbon);   scan_ok = $sscanf(line, "%h", seq_item.organic_carbon);
            line_ok = $fgets(line, fp_P);                scan_ok = $sscanf(line, "%h", seq_item.P);
            line_ok = $fgets(line, fp_pesticide_used);   scan_ok = $sscanf(line, "%h", seq_item.pesticide_used);
            line_ok = $fgets(line, fp_rainfall);         scan_ok = $sscanf(line, "%h", seq_item.rainfall);
            line_ok = $fgets(line, fp_region);           scan_ok = $sscanf(line, "%h", seq_item.region);
            line_ok = $fgets(line, fp_season);           scan_ok = $sscanf(line, "%h", seq_item.season);
            line_ok = $fgets(line, fp_soil_moisture);    scan_ok = $sscanf(line, "%h", seq_item.soil_moisture);
            line_ok = $fgets(line, fp_soil_ph);          scan_ok = $sscanf(line, "%h", seq_item.soil_ph);
            line_ok = $fgets(line, fp_soil_type);        scan_ok = $sscanf(line, "%h", seq_item.soil_type);
            line_ok = $fgets(line, fp_sunlight_hours);   scan_ok = $sscanf(line, "%h", seq_item.sunlight_hours);
            line_ok = $fgets(line, fp_temperature);      scan_ok = $sscanf(line, "%h", seq_item.temperature);
            line_ok = $fgets(line, fp_wind_speed);       scan_ok = $sscanf(line, "%h", seq_item.wind_speed);

            start_item(seq_item);
            finish_item(seq_item);
        end

        $fclose(fp_altitude);         $fclose(fp_crop_type);        $fclose(fp_fertilizer_used);  $fclose(fp_humidity);
        $fclose(fp_irrigation_type);  $fclose(fp_K);                $fclose(fp_N);                $fclose(fp_organic_carbon);
        $fclose(fp_P);                $fclose(fp_pesticide_used);   $fclose(fp_rainfall);         $fclose(fp_region);
        $fclose(fp_season);           $fclose(fp_soil_moisture);    $fclose(fp_soil_ph);          $fclose(fp_soil_type);
        $fclose(fp_sunlight_hours);   $fclose(fp_temperature);      $fclose(fp_wind_speed);

    endtask : body

endclass : cyp_main_sequence

`endif // CYP_WRAPPER_MAIN_SEQUENCE_SVH
