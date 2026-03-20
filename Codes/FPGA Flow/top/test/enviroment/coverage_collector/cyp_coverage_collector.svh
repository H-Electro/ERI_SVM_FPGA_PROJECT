`ifndef CYP_WRAPPER_COVERAGE_SVH
`define CYP_WRAPPER_COVERAGE_SVH

    class cyp_coverage extends uvm_component;

       `uvm_component_utils(cyp_coverage)

        localparam int apb_read_access   = 0;
        localparam int apb_write_access  = 1;

        localparam int apb_ctrl_regs     = 0;
        localparam int apb_status_regs   = 1;
        localparam int apb_yield_regs    = 2;
        localparam int apb_npk_regs      = 3;
        localparam int apb_soil_regs     = 4;
        localparam int apb_weather_regs  = 5;
        localparam int apb_misc_regs     = 6;
        localparam int apb_invalid_regs  = 7;

        localparam int apb_strobe_none   = 0;
        localparam int apb_strobe_full   = 1;
        localparam int apb_strobe_low    = 2;
        localparam int apb_strobe_high   = 3;
        localparam int apb_strobe_other  = 4;

        localparam int apb_ctrl_none     = 0;
        localparam int apb_ctrl_write    = 1;
        localparam int apb_ctrl_reset    = 2;

        localparam int apb_status_none   = 0;
        localparam int apb_status_busy   = 1;
        localparam int apb_status_ready  = 2;

        localparam int range_unknown     = 0;
        localparam int range_negative    = 1;
        localparam int range_zero        = 2;
        localparam int range_low         = 3;
        localparam int range_medium      = 4;
        localparam int range_high        = 5;
        localparam int range_extreme     = 6;

        localparam int ph_unknown        = 0;
        localparam int ph_acidic         = 1;
        localparam int ph_neutral        = 2;
        localparam int ph_alkaline       = 3;

        localparam int flag_unknown      = 0;
        localparam int flag_zero         = 1;
        localparam int flag_one          = 2;
        localparam int flag_other        = 3;

        localparam int enum_unknown      = 0;
        localparam int enum_zero         = 1;
        localparam int enum_one          = 2;
        localparam int enum_low          = 3;
        localparam int enum_medium       = 4;
        localparam int enum_high         = 5;

        virtual cyp_apb_master_if master_if;
        virtual cyp_apb_slave_if slave_if;

        uvm_analysis_export #(cyp_seq_item) cov_export;
        uvm_tlm_analysis_fifo #(cyp_seq_item) cov_cyp;
        cyp_seq_item seq_item_cov;
        cyp_apb_seq_item apb_seq_item_cov;

        int apb_access_kind;
        int apb_addr_kind;
        int apb_strobe_kind;
        int apb_ready_kind;
        int apb_error_kind;
        int apb_ctrl_kind;
        int apb_status_kind;

        int crop_rst_kind;
        int crop_ready_kind;
        int crop_npk_kind;
        int crop_soil_ph_kind;
        int crop_soil_moisture_kind;
        int crop_temperature_kind;
        int crop_rainfall_kind;
        int crop_humidity_kind;
        int crop_crop_type_kind;
        int crop_irrigation_kind;
        int crop_season_kind;
        int crop_fertilizer_kind;
        int crop_pesticide_kind;
        int crop_yield_kind;

        covergroup apb_cov_grp;
            option.per_instance = 1;

            cp_apb_access : coverpoint apb_access_kind {
                bins read  = {apb_read_access};
                bins write = {apb_write_access};
            }

            cp_apb_addr : coverpoint apb_addr_kind {
                bins ctrl_regs    = {apb_ctrl_regs};
                bins status_regs  = {apb_status_regs};
                bins yield_regs   = {apb_yield_regs};
                bins npk_regs     = {apb_npk_regs};
                bins soil_regs    = {apb_soil_regs};
                bins weather_regs = {apb_weather_regs};
                bins misc_regs    = {apb_misc_regs};
                ignore_bins invalid_regs = {apb_invalid_regs};
            }

            cp_apb_strobe : coverpoint apb_strobe_kind {
                bins none = {apb_strobe_none};
                bins full = {apb_strobe_full};
                ignore_bins partial = {apb_strobe_low, apb_strobe_high, apb_strobe_other};
            }

            cp_apb_ready : coverpoint apb_ready_kind {
                bins ready = {1};
            }

            cp_apb_error : coverpoint apb_error_kind {
                bins no_error = {0};
                ignore_bins error = {1};
            }

            cp_apb_ctrl : coverpoint apb_ctrl_kind {
                bins none       = {apb_ctrl_none};
                bins ctrl_reset = {apb_ctrl_reset};
                ignore_bins ctrl_write = {apb_ctrl_write};
            }

            cp_apb_status : coverpoint apb_status_kind {
                bins none  = {apb_status_none};
                bins busy  = {apb_status_busy};
                bins ready = {apb_status_ready};
            }

            cr_apb_access_addr : cross cp_apb_access, cp_apb_addr {
                bins ctrl_write    = binsof(cp_apb_access.write) && binsof(cp_apb_addr.ctrl_regs);
                bins status_read   = binsof(cp_apb_access.read)  && binsof(cp_apb_addr.status_regs);
                bins yield_read    = binsof(cp_apb_access.read)  && binsof(cp_apb_addr.yield_regs);
                bins npk_write     = binsof(cp_apb_access.write) && binsof(cp_apb_addr.npk_regs);
                bins soil_write    = binsof(cp_apb_access.write) && binsof(cp_apb_addr.soil_regs);
                bins weather_write = binsof(cp_apb_access.write) && binsof(cp_apb_addr.weather_regs);
                bins misc_write    = binsof(cp_apb_access.write) && binsof(cp_apb_addr.misc_regs);
            }

            cr_apb_error_access : cross cp_apb_error, cp_apb_access {
                bins clean_read  = binsof(cp_apb_error.no_error) && binsof(cp_apb_access.read);
                bins clean_write = binsof(cp_apb_error.no_error) && binsof(cp_apb_access.write);
            }

            cr_apb_strobe_addr : cross cp_apb_strobe, cp_apb_addr {
                bins ctrl_full    = binsof(cp_apb_strobe.full) && binsof(cp_apb_addr.ctrl_regs);
                bins status_none  = binsof(cp_apb_strobe.none) && binsof(cp_apb_addr.status_regs);
                bins yield_none   = binsof(cp_apb_strobe.none) && binsof(cp_apb_addr.yield_regs);
                bins npk_full     = binsof(cp_apb_strobe.full) && binsof(cp_apb_addr.npk_regs);
                bins soil_full    = binsof(cp_apb_strobe.full) && binsof(cp_apb_addr.soil_regs);
                bins weather_full = binsof(cp_apb_strobe.full) && binsof(cp_apb_addr.weather_regs);
                bins misc_full    = binsof(cp_apb_strobe.full) && binsof(cp_apb_addr.misc_regs);
            }
        endgroup : apb_cov_grp

        covergroup cyp_cov_grp;
            option.per_instance = 1;

            cp_crop_rst : coverpoint crop_rst_kind {
                bins rst_off = {0};
                bins rst_on  = {1};
            }

            cp_crop_ready : coverpoint crop_ready_kind {
                bins ready = {1};
            }

            cp_crop_npk : coverpoint crop_npk_kind {
                bins zero   = {range_zero};
                bins normal = {range_low, range_medium};
                bins rich   = {range_high, range_extreme};
                ignore_bins unused = {range_unknown, range_negative};
            }

            cp_crop_soil_ph : coverpoint crop_soil_ph_kind {
                bins acidic   = {ph_acidic};
                bins neutral  = {ph_neutral};
                bins alkaline = {ph_alkaline};
            }

            cp_crop_soil_moisture : coverpoint crop_soil_moisture_kind {
                bins zero = {range_zero};
                bins dry  = {range_low};
                bins wet  = {range_medium, range_high, range_extreme};
                ignore_bins unused = {range_unknown, range_negative};
            }

            cp_crop_temperature : coverpoint crop_temperature_kind {
                bins zero = {range_zero};
                bins mild = {range_low, range_medium};
                bins hot  = {range_high, range_extreme};
                ignore_bins unused = {range_unknown, range_negative};
            }

            cp_crop_rainfall : coverpoint crop_rainfall_kind {
                bins zero   = {range_zero};
                bins active = {range_low, range_medium, range_high, range_extreme};
                ignore_bins unused = {range_unknown, range_negative};
            }

            cp_crop_humidity : coverpoint crop_humidity_kind {
                bins zero   = {range_zero};
                bins normal = {range_low, range_medium};
                bins humid  = {range_high, range_extreme};
                ignore_bins unused = {range_unknown, range_negative};
            }

            cp_crop_type : coverpoint crop_crop_type_kind {
                bins unknown = {enum_unknown};
                bins base    = {enum_zero, enum_one};
                bins active  = {enum_low, enum_medium, enum_high};
            }

            cp_crop_irrigation : coverpoint crop_irrigation_kind {
                bins unknown = {enum_unknown};
                bins base    = {enum_zero, enum_one};
                bins active  = {enum_low, enum_medium, enum_high};
            }

            cp_crop_season : coverpoint crop_season_kind {
                bins unknown = {enum_unknown};
                bins base    = {enum_zero, enum_one};
                bins active  = {enum_low, enum_medium, enum_high};
            }

            cp_crop_fertilizer : coverpoint crop_fertilizer_kind {
                bins zero   = {flag_zero};
                bins active = {flag_one, flag_other};
                ignore_bins unknown = {flag_unknown};
            }

            cp_crop_pesticide : coverpoint crop_pesticide_kind {
                bins unknown = {flag_unknown};
                bins zero    = {flag_zero};
                bins active  = {flag_one, flag_other};
            }

            cp_crop_yield : coverpoint crop_yield_kind {
                bins med  = {range_medium};
                bins high = {range_high, range_extreme};
                ignore_bins unused = {range_unknown, range_negative, range_zero, range_low};
            }

            cr_npk_yield : cross cp_crop_npk, cp_crop_yield {
                bins zero_to_med     = binsof(cp_crop_npk.zero)   && binsof(cp_crop_yield.med);
                bins active_to_high  = binsof(cp_crop_npk.normal) && binsof(cp_crop_yield.high);
                bins rich_to_high    = binsof(cp_crop_npk.rich)   && binsof(cp_crop_yield.high);
            }

            cr_soil_moisture_yield : cross cp_crop_soil_moisture, cp_crop_yield {
                bins zero_to_med    = binsof(cp_crop_soil_moisture.zero) && binsof(cp_crop_yield.med);
                bins dry_to_high    = binsof(cp_crop_soil_moisture.dry)  && binsof(cp_crop_yield.high);
                bins wet_to_high    = binsof(cp_crop_soil_moisture.wet)  && binsof(cp_crop_yield.high);
            }

            cr_crop_type_yield : cross cp_crop_type, cp_crop_yield {
                bins base_to_med    = binsof(cp_crop_type.base)    && binsof(cp_crop_yield.med);
                bins active_to_high = binsof(cp_crop_type.active)  && binsof(cp_crop_yield.high);
                bins unknown_seen   = binsof(cp_crop_type.unknown) && binsof(cp_crop_yield.high);
            }
        endgroup : cyp_cov_grp

        function new (string name = "cyp_coverage", uvm_component parent);
            super.new(name, parent);
            apb_cov_grp = new();
            cyp_cov_grp = new();
        endfunction : new

        function void build_phase(uvm_phase phase);
            super.build_phase(phase);
            cov_export = new("cov_export", this);
            cov_cyp = new("cov_cyp", this);

            if(!uvm_config_db #(virtual cyp_apb_master_if)::get(this,"","master_if",master_if))
                `uvm_warning("build_phase","Unable to get master_if from the database")

            if(!uvm_config_db #(virtual cyp_apb_slave_if)::get(this,"","slave_if",slave_if))
                `uvm_warning("build_phase","Unable to get slave_if from the database")
        endfunction : build_phase

        function void connect_phase(uvm_phase phase);
            super.connect_phase(phase);
            cov_export.connect(cov_cyp.analysis_export);
        endfunction : connect_phase

        task run_phase(uvm_phase phase);
            super.run_phase(phase);
            fork
                forever begin
                    cov_cyp.get(seq_item_cov);
                    sample_crop_item(seq_item_cov);
                end

                if (slave_if != null) begin
                    forever begin
                        @(posedge slave_if.pclk);
                        if (slave_if.psel && slave_if.penable && slave_if.pready) begin
                            apb_seq_item_cov = cyp_apb_seq_item::type_id::create("apb_seq_item_cov");

                            apb_seq_item_cov.write  = slave_if.pwrite;
                            apb_seq_item_cov.addr   = slave_if.paddr;
                            apb_seq_item_cov.wdata  = slave_if.pwdata;
                            apb_seq_item_cov.strb   = slave_if.pstrb;
                            apb_seq_item_cov.prot   = slave_if.pprot;
                            apb_seq_item_cov.rdata  = slave_if.prdata;
                            apb_seq_item_cov.ready  = slave_if.pready;
                            apb_seq_item_cov.slverr = slave_if.pslverr;

                            sample_apb_item(apb_seq_item_cov);
                        end
                    end
                end
                else if (master_if != null) begin
                    forever begin
                        @(posedge master_if.pclk);
                        if (master_if.transfer && master_if.pready) begin
                            apb_seq_item_cov = cyp_apb_seq_item::type_id::create("apb_seq_item_cov");

                            apb_seq_item_cov.write  = master_if.swrite;
                            apb_seq_item_cov.addr   = master_if.saddr;
                            apb_seq_item_cov.wdata  = master_if.swdata;
                            apb_seq_item_cov.strb   = master_if.sstrb;
                            apb_seq_item_cov.prot   = master_if.sprot;
                            apb_seq_item_cov.rdata  = master_if.prdata;
                            apb_seq_item_cov.ready  = master_if.pready;
                            apb_seq_item_cov.slverr = master_if.pslverr;

                            sample_apb_item(apb_seq_item_cov);
                        end
                    end
                end
            join
        endtask : run_phase

        function void sample_apb_item(cyp_apb_seq_item item);
            apb_access_kind = item.write ? apb_write_access : apb_read_access;
            apb_addr_kind   = get_apb_addr_kind(item.addr);
            apb_strobe_kind = get_apb_strobe_kind(item.strb);
            apb_ready_kind  = item.ready;
            apb_error_kind  = item.slverr;
            apb_ctrl_kind   = get_apb_ctrl_kind(item);
            apb_status_kind = get_apb_status_kind(item);
            apb_cov_grp.sample();
        endfunction : sample_apb_item

        function void sample_crop_item(cyp_seq_item item);
            crop_rst_kind           = item.rst;
            crop_ready_kind         = item.ready;
            crop_npk_kind           = get_average_bucket(item.N, item.P, item.K, 40.0, 80.0, 160.0);
            crop_soil_ph_kind       = get_ph_bucket(item.soil_ph);
            crop_soil_moisture_kind = get_range_bucket(item.soil_moisture, 20.0, 40.0, 60.0);
            crop_temperature_kind   = get_range_bucket(item.temperature, 15.0, 30.0, 40.0);
            crop_rainfall_kind      = get_range_bucket(item.rainfall, 100.0, 500.0, 1000.0);
            crop_humidity_kind      = get_range_bucket(item.humidity, 30.0, 70.0, 90.0);
            crop_crop_type_kind     = get_enum_bucket(item.crop_type, 3, 7);
            crop_irrigation_kind    = get_enum_bucket(item.irrigation_type, 2, 5);
            crop_season_kind        = get_enum_bucket(item.season, 2, 4);
            crop_fertilizer_kind    = get_flag_bucket(item.fertilizer_used);
            crop_pesticide_kind     = get_flag_bucket(item.pesticide_used);
            crop_yield_kind         = get_range_bucket(item.yield_int, 1.0, 5.0, 10.0);
            cyp_cov_grp.sample();
        endfunction : sample_crop_item

        function int get_apb_addr_kind(logic [`APB_ADDR_WIDTH-1:0] addr);
            case (addr)
                `CTRL_ADDR                    : return apb_ctrl_regs;
                `STATUS_ADDR                  : return apb_status_regs;
                `YIELD_L_ADDR, `YIELD_H_ADDR  : return apb_yield_regs;

                `N_L_ADDR, `N_H_ADDR,
                `P_L_ADDR, `P_H_ADDR,
                `K_L_ADDR, `K_H_ADDR          : return apb_npk_regs;

                `SOIL_PH_L_ADDR, `SOIL_PH_H_ADDR,
                `SOIL_MOISTURE_L_ADDR, `SOIL_MOISTURE_H_ADDR,
                `ORGANIC_CARBON_L_ADDR, `ORGANIC_CARBON_H_ADDR,
                `SOIL_TYPE_L_ADDR, `SOIL_TYPE_H_ADDR : return apb_soil_regs;

                `TEMPERATURE_L_ADDR, `TEMPERATURE_H_ADDR,
                `RAINFALL_L_ADDR, `RAINFALL_H_ADDR,
                `SUNLIGHT_HOURS_L_ADDR, `SUNLIGHT_HOURS_H_ADDR,
                `WIND_SPEED_L_ADDR, `WIND_SPEED_H_ADDR,
                `HUMIDITY_L_ADDR, `HUMIDITY_H_ADDR : return apb_weather_regs;

                `CROP_TYPE_L_ADDR, `CROP_TYPE_H_ADDR,
                `FERTILIZER_USED_L_ADDR, `FERTILIZER_USED_H_ADDR,
                `ALTITUDE_L_ADDR, `ALTITUDE_H_ADDR,
                `REGION_L_ADDR, `REGION_H_ADDR,
                `IRRIGATION_TYPE_L_ADDR, `IRRIGATION_TYPE_H_ADDR,
                `SEASON_L_ADDR, `SEASON_H_ADDR,
                `PESTICIDE_USED_L_ADDR, `PESTICIDE_USED_H_ADDR : return apb_misc_regs;

                default : return apb_invalid_regs;
            endcase
        endfunction : get_apb_addr_kind

        function int get_apb_strobe_kind(logic [`APB_STRB_WIDTH-1:0] strb);
            case (strb)
                4'b0000 : return apb_strobe_none;
                4'b1111 : return apb_strobe_full;
                4'b0011 : return apb_strobe_low;
                4'b1100 : return apb_strobe_high;
                default : return apb_strobe_other;
            endcase
        endfunction : get_apb_strobe_kind

        function int get_apb_ctrl_kind(cyp_apb_seq_item item);
            if (item.write && (item.addr == `CTRL_ADDR)) begin
                if (item.wdata[0])
                    return apb_ctrl_reset;
                return apb_ctrl_write;
            end
            return apb_ctrl_none;
        endfunction : get_apb_ctrl_kind

        function int get_apb_status_kind(cyp_apb_seq_item item);
            if ((!item.write) && (item.addr == `STATUS_ADDR)) begin
                if (item.rdata[0])
                    return apb_status_ready;
                return apb_status_busy;
            end
            return apb_status_none;
        endfunction : get_apb_status_kind

        function bit has_unknown(logic [63:0] value);
            return (^value === 1'bx);
        endfunction : has_unknown

        function int get_range_bucket(logic [63:0] value, real low_t, real medium_t, real high_t);
            real real_value;

            if (has_unknown(value))
                return range_unknown;

            real_value = $bitstoreal(value);

            if (real_value < 0.0)
                return range_negative;
            if (real_value == 0.0)
                return range_zero;
            if (real_value < low_t)
                return range_low;
            if (real_value < medium_t)
                return range_medium;
            if (real_value < high_t)
                return range_high;
            return range_extreme;
        endfunction : get_range_bucket

        function int get_average_bucket(logic [63:0] value_0, logic [63:0] value_1, logic [63:0] value_2,
                                        real low_t, real medium_t, real high_t);
            real avg_value;

            if (has_unknown(value_0) || has_unknown(value_1) || has_unknown(value_2))
                return range_unknown;

            avg_value = ($bitstoreal(value_0) + $bitstoreal(value_1) + $bitstoreal(value_2)) / 3.0;

            if (avg_value < 0.0)
                return range_negative;
            if (avg_value == 0.0)
                return range_zero;
            if (avg_value < low_t)
                return range_low;
            if (avg_value < medium_t)
                return range_medium;
            if (avg_value < high_t)
                return range_high;
            return range_extreme;
        endfunction : get_average_bucket

        function int get_ph_bucket(logic [63:0] value);
            real real_value;

            if (has_unknown(value))
                return ph_unknown;

            real_value = $bitstoreal(value);

            if (real_value < 6.0)
                return ph_acidic;
            if (real_value <= 7.5)
                return ph_neutral;
            return ph_alkaline;
        endfunction : get_ph_bucket

        function int get_flag_bucket(logic [63:0] value);
            real real_value;

            if (has_unknown(value))
                return flag_unknown;

            real_value = $bitstoreal(value);

            if (real_value == 0.0)
                return flag_zero;
            if (real_value == 1.0)
                return flag_one;
            return flag_other;
        endfunction : get_flag_bucket

        function int get_enum_bucket(logic [63:0] value, int low_t, int medium_t);
            real real_value;
            int int_value;

            if (has_unknown(value))
                return enum_unknown;

            real_value = $bitstoreal(value);

            if (real_value < 0.0)
                return enum_unknown;

            int_value = $rtoi(real_value);

            if (int_value == 0)
                return enum_zero;
            if (int_value == 1)
                return enum_one;
            if (int_value <= low_t)
                return enum_low;
            if (int_value <= medium_t)
                return enum_medium;
            return enum_high;
        endfunction : get_enum_bucket

    endclass : cyp_coverage

`endif // CYP_WRAPPER_COVERAGE_SVH
