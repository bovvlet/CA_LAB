module full_adder 
  (
   a,
   b,
   carry_in,
   sum,
	carry_out
   );
 
  input  a;
  input  b;
  input  carry_in;
  output sum;
  output carry_out;
 
  wire   W_1;
  wire   W_2;
  wire   W_3;
       
  assign W_1 = a ^ b;
  assign W_2 = W_1 & carry_in;
  assign W_3 = a & b;
 
  assign sum   = W_1 ^ carry_in;
  assign carry_out = W_2 | W_3;
 
 
endmodule 