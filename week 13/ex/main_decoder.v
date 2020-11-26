module main_decoder(
    input [5:0] opcode,
    output MemToReg, MemWrite, Branch, ALUSrc, RegDst, RegWrite, 
    output [1:0] ALUOp
);

reg MemToReg_1;
reg MemWrite_1; 
reg Branch_1;
reg ALUSrc_1;
reg RegDst_1; 
reg RegWrite_1;
reg [1:0] ALUOp_1;

assign ALUOp = ALUOp_1;
assign MemToReg = MemToReg_1;
assign MemWrite = MemWrite_1;
assign Branch = Branch_1;
assign ALUSrc = ALUSrc_1;
assign RegDst = RegDst_1;
assign RegWrite = RegWrite_1;

always @*
begin
    case (opcode)
        6'h04:
        begin
            RegWrite_1 = 1'b0;
            ALUSrc_1 = 1'b0;
            Branch_1 = 1'b1;
            MemWrite_1 = 1'b0;
            ALUOp_1 = 2'b01;
        end
		  6'h2B:
        begin
            RegWrite_1 = 1'b0;
            ALUSrc_1 = 1'b1;
            Branch_1 = 1'b0;
            MemWrite_1 = 1'b1;
            ALUOp_1 = 2'b00;
        end
        6'h23:   
        begin
            RegWrite_1 = 1'b1;
            RegDst_1 = 1'b0;
            ALUSrc_1 = 1'b1;
            Branch_1 = 1'b0;
            MemWrite_1 = 1'b0;
            MemToReg_1 = 1'b1;
            ALUOp_1 = 2'b00;
        end
        6'h00:  
        begin   
            RegWrite_1 = 1'b1;
            RegDst_1 = 1'b1;
            ALUSrc_1 = 1'b0;
            Branch_1 = 1'b0;
            MemWrite_1 = 1'b0;
            MemToReg_1 = 1'b0;
            ALUOp_1 = 2'b10;
        end
        
    endcase
end

endmodule