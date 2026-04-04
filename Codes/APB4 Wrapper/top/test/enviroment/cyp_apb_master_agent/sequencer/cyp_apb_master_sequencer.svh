`ifndef CYP_APB_MASTER_SEQUENCER_SVH
`define CYP_APB_MASTER_SEQUENCER_SVH

    class cyp_apb_master_sequencer extends uvm_sequencer#(cyp_seq_item);

        `uvm_component_utils(cyp_apb_master_sequencer);

        function new(string name = "cyp_apb_master_sequencer", uvm_component parent);
            super.new(name,parent);
        endfunction : new

        function void build_phase(uvm_phase phase);
            super.build_phase(phase);
        endfunction : build_phase

        function void connect_phase(uvm_phase phase);
            super.connect_phase(phase);
        endfunction : connect_phase

        task run_phase (uvm_phase phase);
            super.run_phase(phase);
        endtask : run_phase

    endclass : cyp_apb_master_sequencer

`endif // CYP_APB_MASTER_SEQUENCER_SVH
