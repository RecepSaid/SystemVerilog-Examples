/* tb_alu.sv */
`timescale 1ns / 1ps  

module tb_alu();
	logic [31:0] a, b;			
	logic [ 3:0] op;			
	logic [31:0] s;			
	logic n, z, v, c;			
	logic hata;
alu dut0(.a(a), .b(b), .op(op), .s(s), .n(n), .z(z), .v(v), .c(c));
 integer i; 
    initial begin    
      a = 8'h02;	  
      b = 8'h0A;	  
      op = 4'h0;     
      for (i=0;i<=15;i=i+1)
      begin
       op = op + 8'h01;
       #10;
      end;      
      a = 8'hF6;
      b = 8'h0A;     
    end
endmodule
