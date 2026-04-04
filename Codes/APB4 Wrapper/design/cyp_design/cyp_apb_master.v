`ifndef APB_MASTER_SV
`define APB_MASTER_SV

module apb_master (
        //the followin signals are from the External System 
        //the system signals names will begin with letter S
        //note : we will act as the external system in the testbench
        input swrite,
        input [`APB_ADDR_WIDTH-1:0] saddr, 
        input [`APB_DATA_WIDTH-1:0] swdata, 
        input [`APB_STRB_WIDTH-1:0] sstrb,
        input [`APB_PROT_WIDTH-1:0] sprot,
        input transfer,

        //the followin signals are Master signals
        output reg psel, penable, pwrite,
        output reg [`APB_ADDR_WIDTH-1:0] paddr,
        output reg [`APB_DATA_WIDTH-1:0] pwdata,
        output reg [`APB_STRB_WIDTH-1:0] pstrb,
        output reg [`APB_PROT_WIDTH-1:0] pprot,
        input pclk, presetn,
        input  pready,
        input pslverr
    );

    //defining our states
    localparam  idle   = 2'b00,
                setup  = 2'b01,
                access = 2'b10;

    reg [1:0] ns, cs;

    //state memory 
    always @(posedge pclk or negedge presetn)
    begin
        if(~presetn) 
            cs <= idle;
        else 
            cs <= ns;
    end

    //next state logic
    always @(*) begin
        case(cs)
            idle : begin
                if(transfer)
                    ns = setup;
                else
                    ns = idle;
            end

            setup : begin
                ns = access;
            end

            access : begin
                if(pready && !transfer)
                    ns = idle;
                else if(pready && transfer)
                    ns = setup;
                else
                    ns = access;
            end

            default : ns = idle;
        endcase
    end

    //output logic
    always @(*) begin
        psel    = 1'b0;
        penable = 1'b0;
        pwrite  = swrite;
        paddr   = saddr;
        pwdata  = swdata;
        pstrb   = sstrb;
        pprot   = sprot;

        if(~presetn) begin
            psel    = 1'b0;
            penable = 1'b0;
            pwrite  = 1'b0;
            paddr   = {`APB_ADDR_WIDTH{1'b0}};
            pwdata  = {`APB_DATA_WIDTH{1'b0}};
            pstrb   = {`APB_STRB_WIDTH{1'b0}};
            pprot   = {`APB_PROT_WIDTH{1'b0}};
        end
        else begin
            case(cs)
                idle : begin
                    psel    = 1'b0;
                    penable = 1'b0;
                end

                setup : begin
                    psel    = 1'b1;
                    penable = 1'b0;
                end

                access : begin
                    psel    = 1'b1;
                    penable = 1'b1;
                end

                default : begin
                    psel    = 1'b0;
                    penable = 1'b0;
                end
            endcase
        end
    end

endmodule

`endif