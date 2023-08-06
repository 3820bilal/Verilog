module fifo
(
  input clk,
  input reset,
  input pop,
  input push,
  input [31:0] data_in,
  output reg [31:0] data_out,
  output fifo_full,
  output fifo_empty
);

wire [1:0] count;

counter counter_inst(
  .clk        (clk),
  .reset      (reset),
  .increment  (push),
  .decrement  (pop),
  .count      (count)
);

//FiFo using Registers

reg [31:0] register1;
reg [31:0] register2;
reg [31:0] register3;
reg [31:0] register4;

always @(posedge clk)
begin
  if (reset)
    register1 <= 0;
  else if (push)   
    register1 <= data_in;
end

always @(posedge clk)
begin
  if (reset)
    register2 <= 0;
  else if (push)
    register2 <= register1;
end

always @(posedge clk)
begin
  if (reset)
    register3 <= 0;
  else if (push)
    register3 <= register2;
end  

always @(posedge clk)
begin
  if (reset)
    register4 <= 0;
  else if (push)
    register4 <= register3;
end

always @(*)
begin
  case(count)
    2'd0 : data_out = register1;
    2'd1 : data_out = register2;
    2'd2 : data_out = register3;
    2'd3 : data_out = register4;
  endcase
end

assign fifo_empty = (count == 0);
assign fifo_full  = (count == 3);

endmodule
