`ifndef APB_WRAPPER_V
`define APB_WRAPPER_V

module apb_wrapper (
    input pclk,
    input presetn,

    input swrite,
    input [`APB_ADDR_WIDTH-1:0] saddr,
    input [`APB_DATA_WIDTH-1:0] swdata,
    input [`APB_STRB_WIDTH-1:0] sstrb,
    input [`APB_PROT_WIDTH-1:0] sprot,
    input transfer,

    output [`APB_DATA_WIDTH-1:0] prdata,
    output pready,
    output pslverr
    );

    wire psel;
    wire penable;
    wire pwrite;

    wire [`APB_ADDR_WIDTH-1:0] paddr;
    wire [`APB_DATA_WIDTH-1:0] pwdata;
    wire [`APB_STRB_WIDTH-1:0] pstrb;
    wire [`APB_PROT_WIDTH-1:0] pprot;

    wire [63:0] n;
    wire [63:0] p;
    wire [63:0] k;
    wire [63:0] soil_ph;
    wire [63:0] soil_moisture;
    wire [63:0] organic_carbon;
    wire [63:0] temperature;
    wire [63:0] rainfall;
    wire [63:0] sunlight_hours;
    wire [63:0] wind_speed;
    wire [63:0] crop_type;
    wire [63:0] fertilizer_used;
    wire [63:0] altitude;
    wire [63:0] region;
    wire [63:0] humidity;
    wire [63:0] irrigation_type;
    wire [63:0] season;
    wire [63:0] pesticide_used;
    wire [63:0] soil_type;

    wire [63:0] yield_int;
    wire core_ready;
    wire core_rst_n;

    // Instantiating our master
    apb_master Master (
        .pclk(pclk),
        .presetn(presetn),
        .swrite(swrite),
        .saddr(saddr),
        .swdata(swdata),
        .sstrb(sstrb),
        .sprot(sprot),
        .transfer(transfer),
        .psel(psel),
        .penable(penable),
        .pwrite(pwrite),
        .paddr(paddr),
        .pwdata(pwdata),
        .pstrb(pstrb),
        .pprot(pprot),
        .pready(pready),
        .pslverr(pslverr)
    );

    // Instantiating our slave
    apb_slave Slave (
        .psel(psel),
        .penable(penable),
        .pwrite(pwrite),
        .paddr(paddr),
        .pwdata(pwdata),
        .pstrb(pstrb),
        .pprot(pprot),
        .pclk(pclk),
        .presetn(presetn),
        .prdata(prdata),
        .pready(pready),
        .pslverr(pslverr),

        .N(n),
        .P(p),
        .K(k),
        .soil_ph(soil_ph),
        .soil_moisture(soil_moisture),
        .organic_carbon(organic_carbon),
        .temperature(temperature),
        .rainfall(rainfall),
        .sunlight_hours(sunlight_hours),
        .wind_speed(wind_speed),
        .crop_type(crop_type),
        .fertilizer_used(fertilizer_used),
        .altitude(altitude),
        .region(region),
        .humidity(humidity),
        .irrigation_type(irrigation_type),
        .season(season),
        .pesticide_used(pesticide_used),
        .soil_type(soil_type),

        .yield_int(yield_int),
        .ready(core_ready),
        .core_rst_n(core_rst_n)
    );

    // Instantiating our core
    crop_yield Core (
        .clk(pclk),
        .rst_n(presetn & core_rst_n),

        .N(n),
        .P(p),
        .K(k),
        .soil_ph(soil_ph),
        .soil_moisture(soil_moisture),
        .organic_carbon(organic_carbon),
        .temperature(temperature),
        .rainfall(rainfall),
        .sunlight_hours(sunlight_hours),
        .wind_speed(wind_speed),
        .crop_type(crop_type),
        .fertilizer_used(fertilizer_used),
        .altitude(altitude),
        .region(region),
        .humidity(humidity),
        .irrigation_type(irrigation_type),
        .season(season),
        .pesticide_used(pesticide_used),
        .soil_type(soil_type),

        .yield_int(yield_int),
        .ready(core_ready)
    );

endmodule

`endif
