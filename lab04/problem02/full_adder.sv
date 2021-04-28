/* full_adder */

module full_adder(
					input logic a,b,cin,
					output logic s, cout

);


logic n1,n2,n3,n4;

half_adder inst0(.a(a), .b(b), .s(n1), .c(n2));

half_adder inst1(.a(n1), .b(cin), .s(s), .c(n3));

assign s = s;
assign cout = n3|n2;

endmodule
