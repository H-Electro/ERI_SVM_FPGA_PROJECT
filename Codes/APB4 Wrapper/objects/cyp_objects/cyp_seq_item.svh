`ifndef CYP_WRAPPER_SEQ_ITEM_SVH
`define CYP_WRAPPER_SEQ_ITEM_SVH

    class cyp_seq_item extends uvm_sequence_item;

        logic        rst;

        logic [63:0] N;
        logic [63:0] P;
        logic [63:0] K;
        logic [63:0] soil_ph;
        logic [63:0] soil_moisture;
        logic [63:0] organic_carbon;
        logic [63:0] temperature;
        logic [63:0] rainfall;
        logic [63:0] sunlight_hours;
        logic [63:0] wind_speed;
        logic [63:0] crop_type;
        logic [63:0] fertilizer_used;
        logic [63:0] altitude;
        logic [63:0] region;
        logic [63:0] humidity;
        logic [63:0] irrigation_type;
        logic [63:0] season;
        logic [63:0] pesticide_used;
        logic [63:0] soil_type;

        logic [63:0] yield_int;
        logic        ready;

        logic [63:0] actual_yield;
        logic [63:0] predicted_yield;

        function new(string name = "cyp_seq_item");
            super.new(name);
        endfunction : new

        `uvm_object_utils_begin(cyp_seq_item)
        `uvm_object_utils_end

        constraint c_preset_distribution {
            rst dist { `LOW := 97, `HIGH := 3 };
        }

    endclass : cyp_seq_item

`endif // CYP_WRAPPER_SEQ_ITEM_SVH

