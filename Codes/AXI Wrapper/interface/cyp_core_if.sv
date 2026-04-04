`include "cyp_defines.svh"
`timescale `TIME_UNIT / `TIME_PRECISION

interface cyp_core_if (input bit clk);

    logic rst_n;
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

    modport monitor (
        input clk,
        input rst_n,
        input N,
        input P,
        input K,
        input soil_ph,
        input soil_moisture,
        input organic_carbon,
        input temperature,
        input rainfall,
        input sunlight_hours,
        input wind_speed,
        input crop_type,
        input fertilizer_used,
        input altitude,
        input region,
        input humidity,
        input irrigation_type,
        input season,
        input pesticide_used,
        input soil_type,
        input yield_int,
        input ready
    );

endinterface : cyp_core_if
