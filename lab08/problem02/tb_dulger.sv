/* tb_dulger.sv */
`timescale 1ns/1ps

module tb_dulger();

logic clk,reset;
logic [31:0] pc;
logic [31:0] komut;
logic [31:0] mem [0:63];
logic        hata;
assign komut = mem[pc >> 2];

dulger InstructionDecode(.clk(clk),.reset(reset),.komut(komut),.pc(pc),.hata(hata));

always
begin
clk = 0; #5; clk = 1; #5;
end

initial begin
$readmemb("fib20.mem",mem);
end

initial begin
reset = 0; #10; reset = 1;
end

initial begin
#1000;
$stop;
end

endmodule