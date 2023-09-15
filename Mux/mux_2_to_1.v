module mux_2_to_1
#(
	parameter   WIDTH = 32
)
(
  input   sel,
  input   [WIDTH-1:0] in0,
  input   [WIDTH-1:0] in1,
  output reg  [WIDTH-1:0] out
);

  always@* out = sel ? in1 : in0;
	
  
endmodule
