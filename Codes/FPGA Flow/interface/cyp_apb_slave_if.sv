`include "cyp_defines.svh"
`include "apb_defines.svh"
`timescale `TIME_UNIT / `TIME_PRECISION

interface cyp_apb_slave_if (input bit pclk);

    logic psel;
    logic penable;
    logic pwrite;
    logic [`APB_ADDR_WIDTH-1:0] paddr;
    logic [`APB_DATA_WIDTH-1:0] pwdata;
    logic [`APB_STRB_WIDTH-1:0] pstrb;
    logic [`APB_PROT_WIDTH-1:0] pprot;
    logic [`APB_DATA_WIDTH-1:0] prdata;
    logic pready;
    logic pslverr;
    logic core_rst_n;

    modport monitor (
        input pclk,
        input psel,
        input penable,
        input pwrite,
        input paddr,
        input pwdata,
        input pstrb,
        input pprot,
        input prdata,
        input pready,
        input pslverr,
        input core_rst_n
    );

endinterface : cyp_apb_slave_if
