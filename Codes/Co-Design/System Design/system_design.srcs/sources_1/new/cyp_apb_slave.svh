`ifndef APB_SLAVE_V
`define APB_SLAVE_V

module apb_slave (
        input psel, penable, pwrite,
        input [`APB_ADDR_WIDTH-1:0] paddr,
        input [`APB_DATA_WIDTH-1:0] pwdata,
        input [`APB_STRB_WIDTH-1:0] pstrb,
        input [`APB_PROT_WIDTH-1:0] pprot,
        input pclk, presetn,

        output reg [`APB_DATA_WIDTH-1:0] prdata,
        output pready,
        output reg pslverr,

        //core side signals
        output reg [63:0] N,
        output reg [63:0] P,
        output reg [63:0] K,
        output reg [63:0] soil_ph,
        output reg [63:0] soil_moisture,
        output reg [63:0] organic_carbon,
        output reg [63:0] temperature,
        output reg [63:0] rainfall,
        output reg [63:0] sunlight_hours,
        output reg [63:0] wind_speed,
        output reg [63:0] crop_type,
        output reg [63:0] fertilizer_used,
        output reg [63:0] altitude,
        output reg [63:0] region,
        output reg [63:0] humidity,
        output reg [63:0] irrigation_type,
        output reg [63:0] season,
        output reg [63:0] pesticide_used,
        output reg [63:0] soil_type,

        input [63:0] yield_int,
        input        ready,

        output reg core_rst_n
    );

    reg [31:0] ctrl;
    reg [31:0] status;

    wire apb_write;
    wire apb_read;

    assign apb_write = psel && penable && pwrite;
    assign apb_read  = psel && penable && !pwrite;

    assign pready = (psel && penable) ? 1'b1 : 1'b0;

    // -------------------------------------------------
    // Write stage
    // -------------------------------------------------
    always @(posedge pclk or negedge presetn) begin
        if(~presetn) begin
            ctrl            <= 32'd0;
            status          <= 32'd0;
            prdata          <= 32'd0;
            pslverr         <= 1'b0;
            core_rst_n      <= 1'b0;

            N               <= 64'd0;
            P               <= 64'd0;
            K               <= 64'd0;
            soil_ph         <= 64'd0;
            soil_moisture   <= 64'd0;
            organic_carbon  <= 64'd0;
            temperature     <= 64'd0;
            rainfall        <= 64'd0;
            sunlight_hours  <= 64'd0;
            wind_speed      <= 64'd0;
            crop_type       <= 64'd0;
            fertilizer_used <= 64'd0;
            altitude        <= 64'd0;
            region          <= 64'd0;
            humidity        <= 64'd0;
            irrigation_type <= 64'd0;
            season          <= 64'd0;
            pesticide_used  <= 64'd0;
            soil_type       <= 64'd0;
        end
        else begin
            status[0] <= ready;
            status[31:1] <= 31'd0;

            core_rst_n <= 1'b1;
            pslverr    <= 1'b0;

            if(apb_write) begin
                if(pstrb == 4'b1111) begin
                    case(paddr)

                        `CTRL_ADDR : begin
                            ctrl <= pwdata;
                            if(pwdata[0])
                                core_rst_n <= 1'b0;
                        end

                        `N_L_ADDR : N[31:0] <= pwdata;
                        `N_H_ADDR : N[63:32] <= pwdata;

                        `P_L_ADDR : P[31:0] <= pwdata;
                        `P_H_ADDR : P[63:32] <= pwdata;

                        `K_L_ADDR : K[31:0] <= pwdata;
                        `K_H_ADDR : K[63:32] <= pwdata;

                        `SOIL_PH_L_ADDR : soil_ph[31:0] <= pwdata;
                        `SOIL_PH_H_ADDR : soil_ph[63:32] <= pwdata;

                        `SOIL_MOISTURE_L_ADDR : soil_moisture[31:0] <= pwdata;
                        `SOIL_MOISTURE_H_ADDR : soil_moisture[63:32] <= pwdata;

                        `ORGANIC_CARBON_L_ADDR : organic_carbon[31:0] <= pwdata;
                        `ORGANIC_CARBON_H_ADDR : organic_carbon[63:32] <= pwdata;

                        `TEMPERATURE_L_ADDR : temperature[31:0] <= pwdata;
                        `TEMPERATURE_H_ADDR : temperature[63:32] <= pwdata;

                        `RAINFALL_L_ADDR : rainfall[31:0] <= pwdata;
                        `RAINFALL_H_ADDR : rainfall[63:32] <= pwdata;

                        `SUNLIGHT_HOURS_L_ADDR : sunlight_hours[31:0] <= pwdata;
                        `SUNLIGHT_HOURS_H_ADDR : sunlight_hours[63:32] <= pwdata;

                        `WIND_SPEED_L_ADDR : wind_speed[31:0] <= pwdata;
                        `WIND_SPEED_H_ADDR : wind_speed[63:32] <= pwdata;

                        `CROP_TYPE_L_ADDR : crop_type[31:0] <= pwdata;
                        `CROP_TYPE_H_ADDR : crop_type[63:32] <= pwdata;

                        `FERTILIZER_USED_L_ADDR : fertilizer_used[31:0] <= pwdata;
                        `FERTILIZER_USED_H_ADDR : fertilizer_used[63:32] <= pwdata;

                        `ALTITUDE_L_ADDR : altitude[31:0] <= pwdata;
                        `ALTITUDE_H_ADDR : altitude[63:32] <= pwdata;

                        `REGION_L_ADDR : region[31:0] <= pwdata;
                        `REGION_H_ADDR : region[63:32] <= pwdata;

                        `HUMIDITY_L_ADDR : humidity[31:0] <= pwdata;
                        `HUMIDITY_H_ADDR : humidity[63:32] <= pwdata;

                        `IRRIGATION_TYPE_L_ADDR : irrigation_type[31:0] <= pwdata;
                        `IRRIGATION_TYPE_H_ADDR : irrigation_type[63:32] <= pwdata;

                        `SEASON_L_ADDR : season[31:0] <= pwdata;
                        `SEASON_H_ADDR : season[63:32] <= pwdata;

                        `PESTICIDE_USED_L_ADDR : pesticide_used[31:0] <= pwdata;
                        `PESTICIDE_USED_H_ADDR : pesticide_used[63:32] <= pwdata;

                        `SOIL_TYPE_L_ADDR : soil_type[31:0] <= pwdata;
                        `SOIL_TYPE_H_ADDR : soil_type[63:32] <= pwdata;

                        `STATUS_ADDR,
                        `YIELD_L_ADDR,
                        `YIELD_H_ADDR : begin
                            pslverr <= 1'b1;
                        end

                        default : begin
                            pslverr <= 1'b1;
                        end
                    endcase
                end
                else begin
                    pslverr <= 1'b1;
                end
            end

            if(apb_read) begin
                if(pstrb != 4'b0000) begin
                    pslverr <= 1'b1;
                    prdata  <= 32'd0;
                end
                else begin
                    case(paddr)
                        `CTRL_ADDR : prdata <= ctrl;
                        `STATUS_ADDR : prdata <= status;
                        `YIELD_L_ADDR : prdata <= yield_int[31:0];
                        `YIELD_H_ADDR : prdata <= yield_int[63:32];

                        `N_L_ADDR : prdata <= N[31:0];
                        `N_H_ADDR : prdata <= N[63:32];

                        `P_L_ADDR : prdata <= P[31:0];
                        `P_H_ADDR : prdata <= P[63:32];

                        `K_L_ADDR : prdata <= K[31:0];
                        `K_H_ADDR : prdata <= K[63:32];

                        `SOIL_PH_L_ADDR : prdata <= soil_ph[31:0];
                        `SOIL_PH_H_ADDR : prdata <= soil_ph[63:32];

                        `SOIL_MOISTURE_L_ADDR : prdata <= soil_moisture[31:0];
                        `SOIL_MOISTURE_H_ADDR : prdata <= soil_moisture[63:32];

                        `ORGANIC_CARBON_L_ADDR : prdata <= organic_carbon[31:0];
                        `ORGANIC_CARBON_H_ADDR : prdata <= organic_carbon[63:32];

                        `TEMPERATURE_L_ADDR : prdata <= temperature[31:0];
                        `TEMPERATURE_H_ADDR : prdata <= temperature[63:32];

                        `RAINFALL_L_ADDR : prdata <= rainfall[31:0];
                        `RAINFALL_H_ADDR : prdata <= rainfall[63:32];

                        `SUNLIGHT_HOURS_L_ADDR : prdata <= sunlight_hours[31:0];
                        `SUNLIGHT_HOURS_H_ADDR : prdata <= sunlight_hours[63:32];

                        `WIND_SPEED_L_ADDR : prdata <= wind_speed[31:0];
                        `WIND_SPEED_H_ADDR : prdata <= wind_speed[63:32];

                        `CROP_TYPE_L_ADDR : prdata <= crop_type[31:0];
                        `CROP_TYPE_H_ADDR : prdata <= crop_type[63:32];

                        `FERTILIZER_USED_L_ADDR : prdata <= fertilizer_used[31:0];
                        `FERTILIZER_USED_H_ADDR : prdata <= fertilizer_used[63:32];

                        `ALTITUDE_L_ADDR : prdata <= altitude[31:0];
                        `ALTITUDE_H_ADDR : prdata <= altitude[63:32];

                        `REGION_L_ADDR : prdata <= region[31:0];
                        `REGION_H_ADDR : prdata <= region[63:32];

                        `HUMIDITY_L_ADDR : prdata <= humidity[31:0];
                        `HUMIDITY_H_ADDR : prdata <= humidity[63:32];

                        `IRRIGATION_TYPE_L_ADDR : prdata <= irrigation_type[31:0];
                        `IRRIGATION_TYPE_H_ADDR : prdata <= irrigation_type[63:32];

                        `SEASON_L_ADDR : prdata <= season[31:0];
                        `SEASON_H_ADDR : prdata <= season[63:32];

                        `PESTICIDE_USED_L_ADDR : prdata <= pesticide_used[31:0];
                        `PESTICIDE_USED_H_ADDR : prdata <= pesticide_used[63:32];

                        `SOIL_TYPE_L_ADDR : prdata <= soil_type[31:0];
                        `SOIL_TYPE_H_ADDR : prdata <= soil_type[63:32];

                        default : begin
                            prdata  <= 32'd0;
                            pslverr <= 1'b1;
                        end
                    endcase
                end
            end
        end
    end

endmodule

`endif
