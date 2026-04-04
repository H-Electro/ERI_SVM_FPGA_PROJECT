`ifndef CYP_WRAPPER_MONITOR_SVH
`define CYP_WRAPPER_MONITOR_SVH

    class cyp_monitor extends uvm_monitor;

        `uvm_component_utils (cyp_monitor)
        virtual cyp_core_if.monitor cyp_if;
        cyp_seq_item response_seq_item;
        uvm_analysis_port #(cyp_seq_item) monitor_ap;
        bit pending_sample;

        function new(string name = "cyp_monitor",uvm_component parent);
            super.new(name,parent);
        endfunction : new

        function void build_phase(uvm_phase phase);
            super.build_phase(phase);
            monitor_ap = new ("monitor_ap",this);
            pending_sample = 1'b0;
        endfunction : build_phase

        function void connect_phase(uvm_phase phase);
            super.connect_phase(phase);
        endfunction : connect_phase

        task run_phase(uvm_phase phase);
            super.run_phase(phase);

            fork
                forever begin
                    @(negedge cyp_if.rst_n);
                    pending_sample = 1'b1;
                end

                forever begin
                    @(posedge cyp_if.ready);

                    if (pending_sample) begin
                        response_seq_item = cyp_seq_item::type_id::create("response_seq_item");

                        response_seq_item.rst             = ~cyp_if.rst_n;
                        response_seq_item.N               = cyp_if.N;
                        response_seq_item.P               = cyp_if.P;
                        response_seq_item.K               = cyp_if.K;
                        response_seq_item.soil_ph         = cyp_if.soil_ph;
                        response_seq_item.soil_moisture   = cyp_if.soil_moisture;
                        response_seq_item.organic_carbon  = cyp_if.organic_carbon;
                        response_seq_item.temperature     = cyp_if.temperature;
                        response_seq_item.rainfall        = cyp_if.rainfall;
                        response_seq_item.sunlight_hours  = cyp_if.sunlight_hours;
                        response_seq_item.wind_speed      = cyp_if.wind_speed;
                        response_seq_item.crop_type       = cyp_if.crop_type;
                        response_seq_item.fertilizer_used = cyp_if.fertilizer_used;
                        response_seq_item.altitude        = cyp_if.altitude;
                        response_seq_item.region          = cyp_if.region;
                        response_seq_item.humidity        = cyp_if.humidity;
                        response_seq_item.irrigation_type = cyp_if.irrigation_type;
                        response_seq_item.season          = cyp_if.season;
                        response_seq_item.pesticide_used  = cyp_if.pesticide_used;
                        response_seq_item.soil_type       = cyp_if.soil_type;
                        response_seq_item.yield_int       = cyp_if.yield_int;
                        response_seq_item.ready           = cyp_if.ready;

                        monitor_ap.write(response_seq_item);
                        pending_sample = 1'b0;
                        `uvm_info("RUN_PHASE", response_seq_item.sprint(), UVM_HIGH)
                    end
                end
            join
        endtask : run_phase

    endclass : cyp_monitor

`endif // CYP_WRAPPER_MONITOR_SVH
