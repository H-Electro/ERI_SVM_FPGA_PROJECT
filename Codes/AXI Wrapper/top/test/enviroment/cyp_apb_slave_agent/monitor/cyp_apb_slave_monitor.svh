`ifndef CYP_APB_SLAVE_MONITOR_SVH
`define CYP_APB_SLAVE_MONITOR_SVH

    class cyp_apb_slave_monitor extends uvm_monitor;

        `uvm_component_utils (cyp_apb_slave_monitor)
        virtual cyp_apb_slave_if.monitor cyp_if;
        cyp_apb_seq_item response_seq_item;
        uvm_analysis_port #(cyp_apb_seq_item) monitor_ap;

        function new(string name = "cyp_apb_slave_monitor",uvm_component parent);
            super.new(name,parent);
        endfunction : new

        function void build_phase(uvm_phase phase);
            super.build_phase(phase);
            monitor_ap = new ("monitor_ap",this);
        endfunction : build_phase

        function void connect_phase(uvm_phase phase);
            super.connect_phase(phase);
        endfunction : connect_phase

        task run_phase(uvm_phase phase);
            super.run_phase(phase);

            forever begin
                @(posedge cyp_if.pclk);

                if (cyp_if.psel && cyp_if.penable && cyp_if.pready) begin
                    response_seq_item = cyp_apb_seq_item::type_id::create("response_seq_item");

                    response_seq_item.write  = cyp_if.pwrite;
                    response_seq_item.addr   = cyp_if.paddr;
                    response_seq_item.wdata  = cyp_if.pwdata;
                    response_seq_item.strb   = cyp_if.pstrb;
                    response_seq_item.prot   = cyp_if.pprot;
                    response_seq_item.rdata  = cyp_if.prdata;
                    response_seq_item.ready  = cyp_if.pready;
                    response_seq_item.slverr = cyp_if.pslverr;

                    monitor_ap.write(response_seq_item);
                    `uvm_info("RUN_PHASE", response_seq_item.sprint(), UVM_HIGH)
                end
            end
        endtask : run_phase

    endclass : cyp_apb_slave_monitor

`endif // CYP_APB_SLAVE_MONITOR_SVH
