/* p2_counter.sv */

module p2_counter (
        input logic clk, reset, en,
        
        input logic [ 4:0] psc,
        
        input logic [15:0] reload,
        
        output logic [15:0] cnt,
        
        output logic done
);

logic tick1;
p1_counter #(5) inst0(.clk(clk), .reset(reset), .en(en), .psc(psc), .tick(tick1));

always_ff @(posedge clk, negedge reset)
    if (!reset)
    cnt <= 0;
    else if (en) if(tick1)
    cnt <= reload - 1;

assign done = &(~cnt);

endmodule


