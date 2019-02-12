//Accumulator Block

module Accumulator(
	input wire [3:0] A_Imm,
	input wire [7:0] B_RegOut,
	input wire [7:0] B_AULOut,
	input LoadAcc, SelAcc1, SelAcc0,
	input CLK, CLB, 
	output [7:0] AccOut
	);
	
	reg [7:0] accumulator_reg;

    
	assign AccOut = accumulator_reg;
	wire [7:0] mux0_out;
	wire [7:0] mux1_out;
	mux2to1 inst_mux2to1_0 (.sel(SelAcc0), .din_a(A_Imm), .din_b(B_RegOut), .muxOut(mux0_out));
	mux2to1 inst_mux2to1_1 (.sel(SelAcc1), .din_a(mux0_out), .din_b(B_AULOut), .muxOut(mux1_out));

    always @*
        if (CLB) begin
        	accumulator_reg <= 8'b00000000;
	   end
       else if(LoadAcc) begin
            accumulator_reg <= accumulator_reg + mux1_out;
       end
	
endmodule