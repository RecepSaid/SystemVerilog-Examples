/* tb_lab_06_p2.sv */

`timescale 1ns/1ps

module tb_lab_06_p2 ();

logic clk, reset, en;
logic [4:0] D;
logic baslat;
logic y;
logic mesgul;

lab_06_p2 dut0(.clk(clk), .reset(reset), .en(en), .D(D), .baslat(baslat), .y(y), .mesgul(mesgul));

always begin
clk = 1; #5; clk = 0; #5;
end

initial begin
reset = 1; #10; reset = 0;
end

initial begin 
en = 0; #20; en = 1;
end

initial begin 
baslat = 0; #30; baslat = 1; #10;
baslat = 0; #90; baslat = 1; #10;
baslat = 0; #90; baslat = 1; #10;
baslat = 0;

end

initial begin 
D = 4'b10110; #100; D = 4'b00110; #100; D = 4'b11110; #100; 
end

initial begin
#1000; $stop;
end

endmodule


