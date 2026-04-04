`ifndef CYP_APB_MASTER_DRIVER_SVH
`define CYP_APB_MASTER_DRIVER_SVH

    class cyp_apb_master_driver extends uvm_driver #(cyp_seq_item);

         `uvm_component_utils(cyp_apb_master_driver)
        virtual cyp_apb_master_if.driver cyp_if;
        cyp_seq_item stimulus_seq_item;
        logic [`APB_DATA_WIDTH-1:0] status_reg;
        logic [63:0] yield_reg;
        uvm_analysis_port #(cyp_seq_item) result_ap;

        function new(string name = "cyp_apb_master_driver", uvm_component parent);
            super.new(name,parent);
        endfunction : new

        function void build_phase(uvm_phase phase);
            super.build_phase(phase);
            result_ap = new("result_ap", this);
        endfunction : build_phase

        function void connect_phase(uvm_phase phase);
            super.connect_phase(phase);
        endfunction : connect_phase

        task run_phase(uvm_phase phase);
            super.run_phase(phase);
            drive_idle();

            forever begin
                stimulus_seq_item = cyp_seq_item::type_id::create("stimulus_seq_item");
                seq_item_port.get_next_item(stimulus_seq_item);

                if (stimulus_seq_item.rst) begin
                    drive_reset();
                end
                else begin
                    drive_sample(stimulus_seq_item);
                    stimulus_seq_item.ready = status_reg[0];
                    stimulus_seq_item.yield_int = yield_reg;
                    result_ap.write(stimulus_seq_item);
                end

                seq_item_port.item_done();
                `uvm_info("RUN_PHASE", stimulus_seq_item.sprint(), UVM_HIGH)
            end
        endtask : run_phase

        task drive_idle();
            cyp_if.presetn  = 1'b1;
            cyp_if.swrite   = 1'b0;
            cyp_if.saddr    = {`APB_ADDR_WIDTH{1'b0}};
            cyp_if.swdata   = {`APB_DATA_WIDTH{1'b0}};
            cyp_if.sstrb    = {`APB_STRB_WIDTH{1'b0}};
            cyp_if.sprot    = {`APB_PROT_WIDTH{1'b0}};
            cyp_if.transfer = 1'b0;
        endtask : drive_idle

        task drive_reset();
            drive_idle();
            cyp_if.presetn = 1'b0;
            repeat(2) @(negedge cyp_if.pclk);
            cyp_if.presetn = 1'b1;
            @(negedge cyp_if.pclk);
        endtask : drive_reset

        task drive_write(logic [`APB_ADDR_WIDTH-1:0] addr, logic [`APB_DATA_WIDTH-1:0] data);
            @(negedge cyp_if.pclk);
            cyp_if.swrite   = 1'b1;
            cyp_if.saddr    = addr;
            cyp_if.swdata   = data;
            cyp_if.sstrb    = 4'b1111;
            cyp_if.sprot    = {`APB_PROT_WIDTH{1'b0}};
            cyp_if.transfer = 1'b1;

            do begin
                @(negedge cyp_if.pclk);
            end while (!cyp_if.pready);

            @(negedge cyp_if.pclk);

            cyp_if.transfer = 1'b0;
            cyp_if.swrite   = 1'b0;
            cyp_if.saddr    = {`APB_ADDR_WIDTH{1'b0}};
            cyp_if.swdata   = {`APB_DATA_WIDTH{1'b0}};
            cyp_if.sstrb    = {`APB_STRB_WIDTH{1'b0}};
            cyp_if.sprot    = {`APB_PROT_WIDTH{1'b0}};
        endtask : drive_write

        task drive_read(logic [`APB_ADDR_WIDTH-1:0] addr, output logic [`APB_DATA_WIDTH-1:0] data);
            @(negedge cyp_if.pclk);
            cyp_if.swrite   = 1'b0;
            cyp_if.saddr    = addr;
            cyp_if.swdata   = {`APB_DATA_WIDTH{1'b0}};
            cyp_if.sstrb    = 4'b0000;
            cyp_if.sprot    = {`APB_PROT_WIDTH{1'b0}};
            cyp_if.transfer = 1'b1;

            do begin
                @(negedge cyp_if.pclk);
            end while (!cyp_if.pready);

            @(negedge cyp_if.pclk);
            data = cyp_if.prdata;

            cyp_if.transfer = 1'b0;
            cyp_if.saddr    = {`APB_ADDR_WIDTH{1'b0}};
            cyp_if.swdata   = {`APB_DATA_WIDTH{1'b0}};
            cyp_if.sstrb    = {`APB_STRB_WIDTH{1'b0}};
            cyp_if.sprot    = {`APB_PROT_WIDTH{1'b0}};
        endtask : drive_read

        task drive_write_64(logic [`APB_ADDR_WIDTH-1:0] addr_l,
                            logic [`APB_ADDR_WIDTH-1:0] addr_h,
                            logic [63:0] data);
            drive_write(addr_l, data[31:0]);
            drive_write(addr_h, data[63:32]);
        endtask : drive_write_64

        task drive_read_64(logic [`APB_ADDR_WIDTH-1:0] addr_l,
                           logic [`APB_ADDR_WIDTH-1:0] addr_h,
                           output logic [63:0] data);
            logic [`APB_DATA_WIDTH-1:0] data_l;
            logic [`APB_DATA_WIDTH-1:0] data_h;

            drive_read(addr_l, data_l);
            drive_read(addr_h, data_h);
            data = {data_h, data_l};
        endtask : drive_read_64

        task drive_sample(cyp_seq_item seq_item);
            int wait_cycles;

            drive_write_64(`N_L_ADDR,               `N_H_ADDR,               seq_item.N);
            drive_write_64(`P_L_ADDR,               `P_H_ADDR,               seq_item.P);
            drive_write_64(`K_L_ADDR,               `K_H_ADDR,               seq_item.K);
            drive_write_64(`SOIL_PH_L_ADDR,         `SOIL_PH_H_ADDR,         seq_item.soil_ph);
            drive_write_64(`SOIL_MOISTURE_L_ADDR,   `SOIL_MOISTURE_H_ADDR,   seq_item.soil_moisture);
            drive_write_64(`ORGANIC_CARBON_L_ADDR,  `ORGANIC_CARBON_H_ADDR,  seq_item.organic_carbon);
            drive_write_64(`TEMPERATURE_L_ADDR,     `TEMPERATURE_H_ADDR,     seq_item.temperature);
            drive_write_64(`RAINFALL_L_ADDR,        `RAINFALL_H_ADDR,        seq_item.rainfall);
            drive_write_64(`SUNLIGHT_HOURS_L_ADDR,  `SUNLIGHT_HOURS_H_ADDR,  seq_item.sunlight_hours);
            drive_write_64(`WIND_SPEED_L_ADDR,      `WIND_SPEED_H_ADDR,      seq_item.wind_speed);
            drive_write_64(`CROP_TYPE_L_ADDR,       `CROP_TYPE_H_ADDR,       seq_item.crop_type);
            drive_write_64(`FERTILIZER_USED_L_ADDR, `FERTILIZER_USED_H_ADDR, seq_item.fertilizer_used);
            drive_write_64(`ALTITUDE_L_ADDR,        `ALTITUDE_H_ADDR,        seq_item.altitude);
            drive_write_64(`REGION_L_ADDR,          `REGION_H_ADDR,          seq_item.region);
            drive_write_64(`HUMIDITY_L_ADDR,        `HUMIDITY_H_ADDR,        seq_item.humidity);
            drive_write_64(`IRRIGATION_TYPE_L_ADDR, `IRRIGATION_TYPE_H_ADDR, seq_item.irrigation_type);
            drive_write_64(`SEASON_L_ADDR,          `SEASON_H_ADDR,          seq_item.season);
            drive_write_64(`PESTICIDE_USED_L_ADDR,  `PESTICIDE_USED_H_ADDR,  seq_item.pesticide_used);
            drive_write_64(`SOIL_TYPE_L_ADDR,       `SOIL_TYPE_H_ADDR,       seq_item.soil_type);

            drive_write(`CTRL_ADDR, 32'h0000_0001);
            status_reg = '0;
            for (wait_cycles = 0; wait_cycles < 20; wait_cycles++) begin
                drive_read(`STATUS_ADDR, status_reg);
                if (status_reg[0])
                    break;
            end

            drive_read_64(`YIELD_L_ADDR, `YIELD_H_ADDR, yield_reg);
        endtask : drive_sample

    endclass : cyp_apb_master_driver

`endif // CYP_APB_MASTER_DRIVER_SVH
