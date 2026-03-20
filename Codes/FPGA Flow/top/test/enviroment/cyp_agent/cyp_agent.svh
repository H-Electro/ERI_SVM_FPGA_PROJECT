`ifndef CYP_WRAPPER_AGENT_SVH
`define CYP_WRAPPER_AGENT_SVH

    class cyp_agent extends uvm_agent;

      `uvm_component_utils(cyp_agent)
        cyp_monitor cyp_mon;
        cyp_config cyp_cnfg;
        uvm_analysis_port #(cyp_seq_item) agent_ap;

        function new(string name = "cyp_agent", uvm_component parent);
            super.new(name,parent);
        endfunction : new

        function void build_phase(uvm_phase phase);
            super.build_phase(phase);

            if(!uvm_config_db #(cyp_config)::get(this,"","CFG",cyp_cnfg))
                `uvm_fatal ("build_phase","Unable to get the configuration object from the database")

            cyp_mon = cyp_monitor::type_id::create("cyp_mon",this);
            agent_ap = new("agent_ap",this);
        endfunction : build_phase

        function void connect_phase(uvm_phase phase);
            cyp_mon.cyp_if = cyp_cnfg.cyp_if;
            cyp_mon.monitor_ap.connect(agent_ap);
        endfunction : connect_phase

        task run_phase (uvm_phase phase);
            super.run_phase(phase);
        endtask : run_phase

    endclass : cyp_agent

`endif // CYP_WRAPPER_AGENT_SVH

