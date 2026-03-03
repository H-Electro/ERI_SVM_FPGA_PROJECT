import uvm_pkg::*;
import shared_pkg::*;
`timescale 1ns/1ns

module tb_top;

    // Clock / Reset
    logic clk;
    logic rst;

    // DUT float inputs (32-bit single precision)
    logic [31:0] soil_moisture_f, soil_ph_f, temperature_f;
    logic [31:0] rainfall_f, humidity_f, sunlight_hours_f;
    logic [31:0] NDVI_index_f, growing_days_f;
    crop_type_e crop_type;

    // DUT output
    logic [31:0] yield_int;

    // Golden model variables (real)
    real soil_moisture, soil_ph, temperature;
    real rainfall, humidity, sunlight_hours, NDVI_index, growing_days;

    logic [31:0] golden_yield_int_v1;
    logic [31:0] golden_yield_int_v2;

    // Clock generation
    initial clk = 0;
    always #5 clk = ~clk;

    // DUT
    SIS dut (
        .clk(clk),
        .rst(rst),
        .soil_moisture_f(soil_moisture_f),
        .soil_ph_f(soil_ph_f),
        .temperature_f(temperature_f),
        .rainfall_f(rainfall_f),
        .humidity_f(humidity_f),
        .sunlight_hours_f(sunlight_hours_f),
        .NDVI_index_f(NDVI_index_f),
        .growing_days_f(growing_days_f),
        .crop_type(crop_type),
        .yield_int(yield_int)
    );

    // Golden model (v1)
    golden_model_v1 golden_model_v1_inst (
        .clk(clk),
        .rst(rst),
        .soil_moisture(soil_moisture),
        .soil_ph(soil_ph),
        .temperature(temperature),
        .rainfall(rainfall),
        .humidity(humidity),
        .sunlight_hours(sunlight_hours),
        .NDVI_index(NDVI_index),
        .growing_days(growing_days),
        .crop_type(crop_type),
        .yield(golden_yield_int_v1)
    );

    // Golden model (v2)
    golden_model_v2 golden_model_v2_inst (
        .clk(clk),
        .rst(rst),
        .soil_moisture(soil_moisture),
        .soil_ph(soil_ph),
        .temperature(temperature),
        .rainfall(rainfall),
        .humidity(humidity),
        .sunlight_hours(sunlight_hours),
        .NDVI_index(NDVI_index),
        .growing_days(growing_days),
        .crop_type(crop_type),
        .yield_int(golden_yield_int_v2)
    );

    initial begin
        $display("-------------------------------------------------------------------------------------------------------------------------------------------------");
        $display("| Row | Actual Yield (kaggle dataset) | Python Golden Model  | Golden Model V1 - Without FSM | Golden Model V2 - With FSM | RTL Design With FSM |");
        $display("-------------------------------------------------------------------------------------------------------------------------------------------------");

        run_row(1, 35.95, 32'h420FCCCD, 5.99, 32'h40BFAE14, 17.79, 32'h418E51EC, 75.62, 32'h42973D71, 77.03, 32'h429A0F5C, 7.27, 32'h40E8A3D7, 0.63, 32'h3F2147AE, 122, 32'h42F40000, WHEAT, 4408, 4162);
        run_row(2, 19.74, 32'h419DEB85, 7.24, 32'h40E7AE14, 30.18, 32'h41F170A4, 89.91, 32'h42B3D1EC, 61.13, 32'h4274851F, 5.67, 32'h40B570A4, 0.58, 32'h3F147AE1, 112, 32'h42E00000, SOYBEAN, 5390, 4142);
        run_row(3, 29.32, 32'h41EA8F5C, 7.16, 32'h40E51EB8, 27.37, 32'h41DAF5C3, 265.43, 32'h4384B70A, 68.87, 32'h4289BD71, 8.23, 32'h4103AE14, 0.80, 32'h3F4CCCCD, 144, 32'h43100000, WHEAT, 2931, 4010);
        run_row(4, 17.33, 32'h418AA3D7, 6.03, 32'h40C0F5C3, 33.73, 32'h4206EB85, 212.01, 32'h4354028F, 70.46, 32'h428CEB85, 5.03, 32'h40A0F5C3, 0.44, 32'h3EE147AE, 134, 32'h43060000, MAIZE, 4228, 4162);
        run_row(5, 19.37, 32'h419AF5C3, 5.92, 32'h40BD70A4, 33.86, 32'h420770A4, 269.09, 32'h43868B85, 55.73, 32'h425EEB85, 7.93, 32'h40FDC28F, 0.84, 32'h3F570A3D, 105, 32'h42D20000, COTTON, 4980, 4203);
        run_row(6, 44.91, 32'h4233A3D7, 5.78, 32'h40B8F5C3, 24.87, 32'h41C6F5C3, 238.95, 32'h436EF333, 83.06, 32'h42A61EB8, 4.92, 32'h409D70A4, 0.82, 32'h3F51EB85, 114, 32'h42E40000, RICE, 4384, 4001);
        run_row(7, 36.28, 32'h42111EB8, 7.04, 32'h40E147AE, 21.80, 32'h41AE6666, 123.38, 32'h42F6C28F, 47.91, 32'h423FA3D7, 4.02, 32'h4080A3D7, 0.76, 32'h3F428F5C, 145, 32'h43110000, SOYBEAN, 4501, 4010);
        $display("-------------------------------------------------------------------------------------------------------------------------------------------------");

        $stop;
    end

    task automatic run_row(
        input int row,
        input real sm_real, input [31:0] sm_ieee,
        input real ph_real, input [31:0] ph_ieee,
        input real tmp_real, input [31:0] tmp_ieee,
        input real rf_real, input [31:0] rf_ieee,
        input real hum_real, input [31:0] hum_ieee,
        input real sun_real, input [31:0] sun_ieee,
        input real ndvi_real, input [31:0] ndvi_ieee,
        input real gd_real, input [31:0] gd_ieee,
        input crop_type_e ct,
        input real actual_yield,
        input real golden_model_yield
    );
        begin
            rst = 1; #10;
            rst = 0; #10;

            // DUT gets IEEE-754 32-bit
            soil_moisture_f  = sm_ieee;
            soil_ph_f        = ph_ieee;
            temperature_f    = tmp_ieee;
            rainfall_f       = rf_ieee;
            humidity_f       = hum_ieee;
            sunlight_hours_f = sun_ieee;
            NDVI_index_f     = ndvi_ieee;
            growing_days_f   = gd_ieee;
            crop_type        = ct;

            // Golden models get real numbers
            soil_moisture  = sm_real;
            soil_ph        = ph_real;
            temperature    = tmp_real;
            rainfall       = rf_real;
            humidity       = hum_real;
            sunlight_hours = sun_real;
            NDVI_index     = ndvi_real;
            growing_days   = gd_real;

            // Wait until DUT yield_int is valid
            wait(yield_int != 0);
            #10;

            $display("| %3d | %28.2f | %20.2f | %30.2f | %25d | %20d |",
         row, actual_yield, golden_model_yield, golden_yield_int_v1, golden_yield_int_v2, yield_int);
        end
    endtask

endmodule