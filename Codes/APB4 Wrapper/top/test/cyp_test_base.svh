`ifndef CYP_WRAPPER_TEST_BASE_SVH
`define CYP_WRAPPER_TEST_BASE_SVH

class cyp_wrapper_test_base extends uvm_test;
         `uvm_component_utils(cyp_wrapper_test_base)
        cyp_env env;
        cyp_apb_master_config master_cnfg;
        cyp_apb_slave_config slave_cnfg;
        cyp_config cyp_cnfg;
        cyp_main_sequence cyp_main_seq;
        cyp_reset_sequence cyp_reset_seq;

        function new(string name = "cyp_wrapper_test_base", uvm_component parent);
            super.new(name,parent);
        endfunction : new

        function void build_phase(uvm_phase phase);
            super.build_phase(phase);

            env = cyp_env::type_id::create("env",this);
            master_cnfg = cyp_apb_master_config::type_id::create("master_cnfg",this);
            slave_cnfg  = cyp_apb_slave_config::type_id::create("slave_cnfg",this);
            cyp_cnfg    = cyp_config::type_id::create("cyp_cnfg",this);

            master_cnfg.is_active = UVM_ACTIVE;
            slave_cnfg.is_active  = UVM_PASSIVE;
            cyp_cnfg.is_active    = UVM_PASSIVE;

            cyp_main_seq = cyp_main_sequence::type_id::create("main_seq", this);
            cyp_main_seq.PERCENTAGE = 100;
            cyp_reset_seq = cyp_reset_sequence::type_id::create("reset_seq",this);

            if(!uvm_config_db #(virtual cyp_apb_master_if)::get(this,"","master_if",master_cnfg.cyp_if))
                `uvm_fatal("build_phase" , " test - Unable to get the master virtual interface form the configuration database");

            if(!uvm_config_db #(virtual cyp_apb_slave_if)::get(this,"","slave_if",slave_cnfg.cyp_if))
                `uvm_fatal("build_phase" , " test - Unable to get the slave virtual interface form the configuration database");

            if(!uvm_config_db #(virtual cyp_core_if)::get(this,"","cyp_if",cyp_cnfg.cyp_if))
                `uvm_fatal("build_phase" , " test - Unable to get the core virtual interface form the configuration database");

            uvm_config_db # (cyp_apb_master_config)::set(this , "env.master_agent*" , "CFG",master_cnfg);
            uvm_config_db # (cyp_apb_slave_config)::set(this , "env.slave_agent*"  , "CFG",slave_cnfg);
            uvm_config_db # (cyp_config)::set(this , "env.cyp_agent_h*" , "CFG",cyp_cnfg);
        endfunction : build_phase

        task run_phase(uvm_phase phase);
            super.run_phase(phase);
            phase.raise_objection(this);

            `uvm_info("run_phase","stimulus Generation started",UVM_LOW)
            cyp_reset_seq.start(env.master_agent.cyp_seqr);
            `uvm_info("run_phase","Reset Deasserted",UVM_LOW)
            `uvm_info("run_phase", "Stimulus Generation Started",UVM_LOW)
            cyp_main_seq.start(env.master_agent.cyp_seqr);
            `uvm_info("run_phase", "Stimulus Generation Ended",UVM_LOW)

            phase.drop_objection(this);
        endtask : run_phase

endclass : cyp_wrapper_test_base

`endif // CYP_WRAPPER_TEST_BASE_SVH
