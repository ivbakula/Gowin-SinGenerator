module Top
(
    input CLK,
    output PCLK,
    output [11:0] sin_data
);

wire pll_clkout;
assign PCLK = pll_clkout;

localparam FBDIV = 6'b111100; // FBDIV = 4
localparam IDIV = 6'b100100;  // IDIV = 27
localparam ODIV = 6'b000000;  // ODIV = 1

Gowin_rPLL pll
(
    .clkout(pll_clkout), 
    .clkin(CLK), 
    .fbdsel(FBDIV), 
    .idsel(IDIV), 
    .odsel(FBDIV)
);

SIN_Lut sin
(
    .clkin(pll_clkout),
    .sin_x(sin_data)
);

endmodule