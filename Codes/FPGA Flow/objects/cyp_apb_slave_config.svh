`ifndef CYP_WRAPPER_APB_SLAVE_CONFIG_SVH
`define CYP_WRAPPER_APB_SLAVE_CONFIG_SVH

    class cyp_apb_slave_config extends uvm_object;

        `uvm_object_utils (cyp_apb_slave_config)
        virtual cyp_apb_slave_if cyp_if;
        uvm_active_passive_enum is_active;

        function new(string name = "cyp_apb_slave_config");
            super.new(name);
        endfunction : new

    endclass : cyp_apb_slave_config

`endif // CYP_WRAPPER_APB_SLAVE_CONFIG_SVH

