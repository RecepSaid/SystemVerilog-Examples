/* tb_lab4_rsd_p1 */
`timescale 1ns/1ps

module tb_lab4_rsd_p1 ();
logic d, clk;

logic q1, q2, q3;


d_latch uut0(.clk(clk), .d(d), .q(q3));
f_flop uut1(.clk(clk), .d(d), .q(q2));
r_flop uut2(.clk(clk), .d(d), .q(q1));
always

begin

clk = 0; #10; clk = 1; #10;

end

initial begin

d = 0; #7; d = 1; #5; d = 0; #2;
d = 1; #4; d = 0; #3; d = 1; #3;
d = 0; #2; d = 1; #2; d = 0; #4;
d = 1; #2; d = 0; #2; d = 1; #6;
d = 0; #10;

$stop; // stop the simulation

end

endmodule
