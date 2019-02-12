//Two input MUX

module mux2to1 (
	input wire sel,
	input wire [7:0] din_a, din_b,
	output wire [7:0] muxOut
	);

assign muxOut = (sel) ? din_b:din_a;


endmodule