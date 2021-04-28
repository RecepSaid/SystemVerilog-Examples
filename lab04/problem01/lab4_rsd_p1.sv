/* lab4_rsd_p1 */

module lab4_rsd_p1(
						
						input logic clk, d,
						
						output logic q1,q2,q3

);


r_flop inst0(.clk(clk), .d(d), .q(q1));

f_flop inst1(.clk(clk), .d(d), .q(q2));

d_latch inst2(.clk(clk), .d(d), .q(q3));


endmodule

