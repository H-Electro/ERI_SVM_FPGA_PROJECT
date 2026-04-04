`ifndef CYP_WRAPPER_RESET_SEQUENCE_SVH
`define CYP_WRAPPER_RESET_SEQUENCE_SVH

    class cyp_reset_sequence extends cyp_main_sequence;

        `uvm_object_utils (cyp_reset_sequence)
        cyp_seq_item seq_item;

        function new (string name = "cyp_reset_sequence");
            super.new(name);
        endfunction : new

       task body;
            seq_item = cyp_seq_item::type_id::create("seq_item");

            start_item(seq_item);

                seq_item.rst             = 1'b1;
                seq_item.N               = 64'd0;
                seq_item.P               = 64'd0;
                seq_item.K               = 64'd0;
                seq_item.soil_ph         = 64'd0;
                seq_item.soil_moisture   = 64'd0;
                seq_item.organic_carbon  = 64'd0;
                seq_item.temperature     = 64'd0;
                seq_item.rainfall        = 64'd0;
                seq_item.sunlight_hours  = 64'd0;
                seq_item.wind_speed      = 64'd0;
                seq_item.crop_type       = 64'd0;
                seq_item.fertilizer_used = 64'd0;
                seq_item.altitude        = 64'd0;
                seq_item.region          = 64'd0;
                seq_item.humidity        = 64'd0;
                seq_item.irrigation_type = 64'd0;
                seq_item.season          = 64'd0;
                seq_item.pesticide_used  = 64'd0;
                seq_item.soil_type       = 64'd0;

            finish_item(seq_item);
        endtask : body

    endclass : cyp_reset_sequence

`endif // CYP_WRAPPER_RESET_SEQUENCE_SVH


