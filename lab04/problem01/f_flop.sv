/* f_flop.sv */

module f_flop(
				input logic clk,
				
				input logic  d,
				
				output logic q
				
				);
				
always_ff @(negedge clk)

	q <= d;
	
endmodule

