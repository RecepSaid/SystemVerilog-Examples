/* tb_p1_counter.sv */
`timescale 1ns/1ps

module tb_p1_counter();

localparam N = 5;

logic clk,reset,en;
logic [N-1:0] psc;
logic tick;

p1_counter #(N) dut0(.clk(clk), .reset(reset), .en(en), .psc(psc), .tick(tick));

always
    begin
        clk = 0; #5; clk = 1; #5;
    end
    
    initial begin
    psc = 5'hf; #300; psc = 5'h9; #300; psc = 5'hb; #300;
    end
    
    initial
    begin
        reset = 0; #20; reset =1;
    end
    
    initial
    begin
    en = 0; # 100; en = 1;
    end
    
    initial
    begin
        #10000;
        $stop;
    end

endmodule

