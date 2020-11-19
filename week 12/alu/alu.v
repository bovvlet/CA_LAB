module alu
(
   input      [4:0] rs, rt, 
   input      [4:0] rd,
	input	    [4:0] shamt, 
	input	    [5:0] funct
);
wire [31:0]add_v;
wire [31:0]sub_v;
wire [31:0]srl_v;
add add(rs, rt, add_v);
sub sub(rs, rt, sub_v);
srl srl(rt, shamt, srl_v);
mux mux(add_v, sub_v, srl_v, funct, rd);
endmodule