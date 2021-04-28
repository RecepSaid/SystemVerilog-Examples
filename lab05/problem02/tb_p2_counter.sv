/* tb_p1_counter.sv */
`timescale 1ns/1ps

module tb_p2_counter();

logic clk,reset,en,done;
logic [5:0] psc;
logic [15:0] reload,cnt;

p2_counter dut1(.clk(clk), .reset(reset), .en(en), .psc(psc), .done(done), .reload(reload), .cnt(cnt));

always
    begin
        clk = 0; #5; clk = 1; #5;
    end
    
    initial begin
        reload = 16'h0008; #100; reload = 16'h00ff; #100;
    
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

