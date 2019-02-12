//Parameters defining optcodes

`define 	OP_ADD 	4'b00_01
`define 	OP_SUB 	4'b00_10
`define 	OP_NOR 	4'b00_11
`define 	OP_MOVR 4'b01_00
`define		OP_MOVA 4'b01_01
`define		OP_JZR	4'b01_10
`define		OP_JZI	4'b01_11
`define		OP_JCR	4'b10_00
`define		OP_JCI	4'b10_10
`define		OP_SHL	4'b10_11
`define		OP_SHR	4'b11_00
`define		OP_LD	4'b11_01
`define		OP_NOP	4'b00_00
`define		OP_HALT	4'b11_11


//State Encoding

`define 	S_RESET 	5'd0
`define 	S_OP_ADD	5'd1
`define 	S_OP_SUB 	5'd2
`define 	S_OP_NOR 	5'd3
`define 	S_OP_MOVR	5'd4
`define		S_OP_MOVA	5'd5
`define		S_OP_JZR	5'd6
`define		S_OP_JZI	5'd7
`define		S_OP_JCR	5'd8
`define		S_OP_JCI	5'd9
`define		S_OP_SHL	5'd10
`define		S_OP_SHR	5'd11
`define		S_OP_LD		5'd12
`define		S_OP_NOP	5'd13
`define		S_OP_HALT	5'd14
`define 	S_IDLE		5'd15