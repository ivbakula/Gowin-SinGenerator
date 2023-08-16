module Top
(
    input clk,
    output pclk,
    output [11:0] data
);

Gowin_rPLL pll(pclk, clk);
SIN_Lut sin(pclk, data);

endmodule