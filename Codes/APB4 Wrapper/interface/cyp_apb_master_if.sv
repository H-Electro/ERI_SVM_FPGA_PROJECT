`include "cyp_defines.svh"
`include "apb_defines.svh"
`timescale `TIME_UNIT / `TIME_PRECISION

interface cyp_apb_master_if (input bit pclk);

    logic presetn;
    logic swrite;
    logic [`APB_ADDR_WIDTH-1:0] saddr;
    logic [`APB_DATA_WIDTH-1:0] swdata;
    logic [`APB_STRB_WIDTH-1:0] sstrb;
    logic [`APB_PROT_WIDTH-1:0] sprot;
    logic transfer;
    logic [`APB_DATA_WIDTH-1:0] prdata;
    logic pready;
    logic pslverr;

    modport driver (
        input  pclk,
        input  prdata,
        input  pready,
        input  pslverr,
        output presetn,
        output swrite,
        output saddr,
        output swdata,
        output sstrb,
        output sprot,
        output transfer
    );

    modport monitor (
        input pclk,
        input presetn,
        input swrite,
        input saddr,
        input swdata,
        input sstrb,
        input sprot,
        input transfer,
        input prdata,
        input pready,
        input pslverr
    );

endinterface : cyp_apb_master_if
