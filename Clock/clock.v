module clock
#(
	parameter count_max	= 6'd59,
 	parameter TRUE 		= 1'b1
)
(
input               clk,
input               reset,
output reg  [5:0]   count_sec,
output reg  [5:0]   count_min,
output reg  [5:0]   count_hrs

);
wire  	   	 clr_hrs;
wire  	   	 clr_min;
wire  	   	 clr_sec;


up_counter SEC
(
.clk                (clk		),
.reset              (reset		),
.en                 (TRUE		),
.count_max          (count_max	),
.clr                (clr_sec	),
.count              (count_sec	)
);



up_counter MIN
(
.clk                (clk		),
.reset              (reset		),
.en                 (clr_sec	),
.count_max          (count_max	),
.clr                (clr_min	),
.count              (count_min	)
);



up_counter HRS
(
.clk                (clk		),
.reset              (reset		),
.en                 (clr_min	),
.count_max          (count_max	),
.clr                (clr_hrs	),
.count              (count_hrs	)
);

endmodule