/* tb_ripple_carry_5bit.sv */
`timescale 1ns/1ps

module tb_ripple_carry_5bit();

logic [4:0] a,b;
logic cin;
logic [4:0] s;

ripple_carry_5bit dut0(.a(a), .b(b), .cin(cin), .s(s), .cout(cout));

initial begin
a = 5'b0; b = 5'b0; cin = 1'b0; #10;
a = 5'b1; 						#10;
a = 5'b10; 						#10;
a = 5'b11; 						#10;
a = 5'b100; 					#10;
a = 5'b101; 					#10;
a = 5'b101; 					#10;
a = 5'b0; b = 5'b1;				#10;
b = 5'b10;				 		#10;
b = 5'b10;						#10;
b = 5'b11;						#10;
b = 5'b100;						#10;
b = 5'b101;						#10;
a = 5'b10; b = 5'b0; 			#10;
b = 5'b10;				 		#10;
b = 5'b10;						#10;
b = 5'b11;						#10;
b = 5'b100;						#10;
b = 5'b101;						#10;

$stop;

end

endmodule
