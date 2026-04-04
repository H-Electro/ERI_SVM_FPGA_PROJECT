`ifndef CYP_APB_SEQ_ITEM_SVH
`define CYP_APB_SEQ_ITEM_SVH

    class cyp_apb_seq_item extends uvm_sequence_item;

        logic write;
        logic [`APB_ADDR_WIDTH-1:0] addr;
        logic [`APB_DATA_WIDTH-1:0] wdata;
        logic [`APB_STRB_WIDTH-1:0] strb;
        logic [`APB_PROT_WIDTH-1:0] prot;
        logic [`APB_DATA_WIDTH-1:0] rdata;
        logic ready;
        logic slverr;

        function new(string name = "cyp_apb_seq_item");
            super.new(name);
        endfunction : new

        `uvm_object_utils_begin(cyp_apb_seq_item)
        `uvm_object_utils_end

    endclass : cyp_apb_seq_item

`endif // CYP_APB_SEQ_ITEM_SVH
