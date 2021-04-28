/* ripple_carry_5bit.sv */

module ripple_carry_5bit(
							input logic [4:0] a,
							input logic [4:0] b,
							input logic cin,
							output logic [4:0] s,
							output logic cout
);

logic c0,c1,c2,c3,c4;
logic s0,s1,s2,s3,s4;

full_adder inst3(.a(a[0]), .b(b[0]), .cin(cin), .cout(c0), .s(s0));

full_adder inst4(.a(a[1]), .b(b[1]), .cin(c0), .cout(c1), .s(s1));

full_adder inst5(.a(a[2]), .b(b[2]), .cin(c1), .cout(c2), .s(s2));

full_adder inst6(.a(a[3]), .b(b[3]), .cin(c2), .cout(c3), .s(s3));

full_adder inst7(.a(a[4]), .b(b[4]), .cin(c3), .cout(c4), .s(s4));



assign s[0] = s0;
assign s[1] = s1;
assign s[2] = s2;
assign s[3] = s3;
assign s[4] = s4;
assign cout = c4;
endmodule




