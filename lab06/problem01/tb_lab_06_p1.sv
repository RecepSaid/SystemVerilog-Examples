/* tb_lab_06_p1.sv */

`timescale 1ns/1ps

module tb_lab_06_p1 ();

logic a,clk,y,b;

lab_06_p1 dut0(.a(a), .clk(clk), .y(y));


always begin
clk = 1; #5; clk = 0; #5;
end

initial begin
b   = 1; #15;
b   = 1; #15;
b   = 1; #15;
b   = 1; #15;
b   = 1; #15;
b   = 0; #15;
b   = 1; #15;
b   = 0; #15;
b   = 0; #15;
b   = 0; #15;
b   = 1; #15;
b   = 0; #15;
b   = 1; #15;
b   = 0; #15;
b   = 0; #15;
b   = 1; #15;

end
initial begin
a   = 0; #15;
a   = 0; #15;
a   = 1; #15;
a   = 1; #15;
a   = 1; #15;
a   = 1; #15;
a   = 0; #15;
a   = 0; #15;
a   = 0; #15;
a   = 0; #15;
a   = 0; #15;
a   = 1; #15;
a   = 1; #15;
a   = 1; #15;
a   = 1; #15;
a   = 1; #15;
end
initial begin
#1000; $stop;
end

endmodule
