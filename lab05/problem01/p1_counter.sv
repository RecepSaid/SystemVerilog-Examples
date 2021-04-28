/* p1_counter.sv */

module p1_counter #(parameter N = 5)(
    input logic clk,reset,en,
    input logic [N-1:0] psc,
    output logic tick
);

logic [N-1:0] count;

always_ff @(posedge clk, negedge reset) 
    
    if(!reset) 
        {count} <= {N{1'b0}};
    
	 else if(en) 
        {count} <= count + 1'b1;      

assign tick = (count == psc) ? 1'b1 : 1'b0;

endmodule 
