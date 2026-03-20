`ifndef CYP_WRAPPER_ENV_SVH
`define CYP_WRAPPER_ENV_SVH

    class cyp_env extends uvm_env;

        `uvm_component_utils(cyp_env)

        cyp_apb_master_agent master_agent;
        cyp_apb_slave_agent slave_agent;
        cyp_agent cyp_agent_h;

        cyp_scoreboard cyp_sb;
        cyp_coverage cyp_cov;

        function new (string name = "cyp_env", uvm_component parent);
            super.new(name,parent);
        endfunction : new

        function void build_phase(uvm_phase phase );
        super.build_phase (phase);
            master_agent = cyp_apb_master_agent::type_id::create("master_agent",this);
            slave_agent  = cyp_apb_slave_agent::type_id::create("slave_agent",this);
            cyp_agent_h  = cyp_agent::type_id::create("cyp_agent_h",this);
            cyp_sb       = cyp_scoreboard::type_id::create("cyp_sb",this);
            cyp_cov      = cyp_coverage::type_id::create("cyp_cov",this);
        endfunction : build_phase

        function void connect_phase (uvm_phase phase );
            master_agent.agent_ap.connect(cyp_sb.master_export);
            master_agent.result_ap.connect(cyp_sb.sb_export);
            slave_agent.agent_ap.connect(cyp_sb.slave_export);
            cyp_agent_h.agent_ap.connect(cyp_cov.cov_export);
        endfunction : connect_phase

        task run_phase (uvm_phase phase);
            super.run_phase(phase);
        endtask : run_phase

    endclass : cyp_env

`endif // CYP_WRAPPER_ENV_SVH
