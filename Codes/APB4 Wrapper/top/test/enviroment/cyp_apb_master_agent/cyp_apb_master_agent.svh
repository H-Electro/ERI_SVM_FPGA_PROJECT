`ifndef CYP_APB_MASTER_AGENT_SVH
`define CYP_APB_MASTER_AGENT_SVH

    class cyp_apb_master_agent extends uvm_agent;

      `uvm_component_utils(cyp_apb_master_agent)
        cyp_apb_master_sequencer cyp_seqr;
        cyp_apb_master_driver cyp_drv;
        cyp_apb_master_monitor cyp_mon;
        cyp_apb_master_config cyp_cnfg;
        uvm_analysis_port #(cyp_apb_seq_item) agent_ap;
        uvm_analysis_port #(cyp_seq_item) result_ap;

        function new(string name = "cyp_apb_master_agent", uvm_component parent);
            super.new(name,parent);
        endfunction : new

        function void build_phase(uvm_phase phase);
            super.build_phase(phase);

            if(!uvm_config_db #(cyp_apb_master_config)::get(this,"","CFG",cyp_cnfg))
                `uvm_fatal ("build_phase","Unable to get the configuration object from the database")

            if (cyp_cnfg.is_active == UVM_ACTIVE) begin
                cyp_drv = cyp_apb_master_driver::type_id::create("cyp_drv",this);
                cyp_seqr = cyp_apb_master_sequencer::type_id::create("cyp_seqr",this);
            end
            cyp_mon = cyp_apb_master_monitor::type_id::create("cyp_mon",this);
            agent_ap = new("agent_ap",this);
            result_ap = new("result_ap",this);
        endfunction : build_phase

        function void connect_phase(uvm_phase phase);
            if (cyp_cnfg.is_active == UVM_ACTIVE) begin
                cyp_drv.cyp_if = cyp_cnfg.cyp_if;
                cyp_drv.seq_item_port.connect(cyp_seqr.seq_item_export);
                cyp_drv.result_ap.connect(result_ap);
            end
            cyp_mon.cyp_if = cyp_cnfg.cyp_if;
            cyp_mon.monitor_ap.connect(agent_ap);
        endfunction : connect_phase

        task run_phase (uvm_phase phase);
            super.run_phase(phase);
        endtask : run_phase

    endclass : cyp_apb_master_agent

`endif // CYP_APB_MASTER_AGENT_SVH
