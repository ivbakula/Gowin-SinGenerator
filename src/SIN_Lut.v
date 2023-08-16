module SIN_Lut
(
    input clkin,
    output [11:0] sin_x
);


reg [3:0] counter;
reg [11:0] buffer;

assign sin_x = buffer;

always @ (negedge clkin) begin
    case (counter)
      0: buffer <= 12'hffff;
      1: buffer <= 12'hfcbe;
      2: buffer <= 12'hfa0d;
      3: buffer <= 12'hf864;
      
      4: buffer <= 12'hf80b;
      5: buffer <= 12'hf912;
      6: buffer <= 12'hfb4b;
      7: buffer <= 12'hfe55;
      
      8: buffer <= 12'h01a8;
      9: buffer <= 12'h04b2;
      10: buffer <= 12'h06eb;
      11: buffer <= 12'h07f2;

      12: buffer <= 12'h0799;
      13: buffer <= 12'h05f0;
      14: buffer <= 12'h033f;
      15: buffer <= 12'hffff;
    endcase      

    counter <= counter + 1;
end
endmodule