module mux
(
    input [31:0] add_v,sub_v,srl_v,
    input [5:0] funct,
    input [4:0] rd
);

always @*
begin
    case (funct)
        6'b100000:  
        begin
            glob.r[rd] <= add_v;
        end
        6'b100010:
        begin
            glob.r[rd] <= sub_v;    
        end
        6'b000010:
        begin
            glob.r[rd] <= srl_v;
        end
    endcase
end

endmodule