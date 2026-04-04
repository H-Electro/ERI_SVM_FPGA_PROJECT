`ifndef APB_DEFINES_SVH
`define APB_DEFINES_SVH

// -------------------------------------------------
// APB4 bus parameters
// -------------------------------------------------
`define APB_ADDR_WIDTH 8
`define APB_DATA_WIDTH 32
`define APB_STRB_WIDTH 4
`define APB_PROT_WIDTH 3

// -------------------------------------------------
// Register map
// -------------------------------------------------
`define CTRL_ADDR                8'h00
`define STATUS_ADDR              8'h04
`define YIELD_L_ADDR             8'h08
`define YIELD_H_ADDR             8'h0C

`define N_L_ADDR                 8'h10
`define N_H_ADDR                 8'h14

`define P_L_ADDR                 8'h18
`define P_H_ADDR                 8'h1C

`define K_L_ADDR                 8'h20
`define K_H_ADDR                 8'h24

`define SOIL_PH_L_ADDR           8'h28
`define SOIL_PH_H_ADDR           8'h2C

`define SOIL_MOISTURE_L_ADDR     8'h30
`define SOIL_MOISTURE_H_ADDR     8'h34

`define ORGANIC_CARBON_L_ADDR    8'h38
`define ORGANIC_CARBON_H_ADDR    8'h3C

`define TEMPERATURE_L_ADDR       8'h40
`define TEMPERATURE_H_ADDR       8'h44

`define RAINFALL_L_ADDR          8'h48
`define RAINFALL_H_ADDR          8'h4C

`define SUNLIGHT_HOURS_L_ADDR    8'h50
`define SUNLIGHT_HOURS_H_ADDR    8'h54

`define WIND_SPEED_L_ADDR        8'h58
`define WIND_SPEED_H_ADDR        8'h5C

`define CROP_TYPE_L_ADDR         8'h60
`define CROP_TYPE_H_ADDR         8'h64

`define FERTILIZER_USED_L_ADDR   8'h68
`define FERTILIZER_USED_H_ADDR   8'h6C

`define ALTITUDE_L_ADDR          8'h70
`define ALTITUDE_H_ADDR          8'h74

`define REGION_L_ADDR            8'h78
`define REGION_H_ADDR            8'h7C

`define HUMIDITY_L_ADDR          8'h80
`define HUMIDITY_H_ADDR          8'h84

`define IRRIGATION_TYPE_L_ADDR   8'h88
`define IRRIGATION_TYPE_H_ADDR   8'h8C

`define SEASON_L_ADDR            8'h90
`define SEASON_H_ADDR            8'h94

`define PESTICIDE_USED_L_ADDR    8'h98
`define PESTICIDE_USED_H_ADDR    8'h9C

`define SOIL_TYPE_L_ADDR         8'hA0
`define SOIL_TYPE_H_ADDR         8'hA4

`endif