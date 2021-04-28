/* tb_lab_07_p1.sv */
`timescale 1ns/1ps

module tb_lab_07_p1();

logic            clk,reset;
logic   [31:0]   komut;
    
logic    [6:0]   opcode;
logic    [3:0]   aluop;
logic    [4:0]   rs1, rs2, rd;
logic   [31:0]   rs1_data, rs2_data, imm;
logic            hata;

lab_07_p1 dut0(.clk(clk), .reset(reset), .komut(komut), .opcode(opcode),
.aluop(aluop), .rs1(rs1), .rs2(rs2), .rd(rd), .rs1_data(rs1_data),
.rs2_data(rs2_data), .imm(imm), .hata(hata));

always begin
clk = 1; #5; clk = 0; #5;
end 
initial begin
reset = 1; #10; reset = 0;
end
initial begin
komut = 32'h55F0AA81; #50;
komut = 32'h55F0AA83; #50;
komut = 32'h55F0AA87; #50;
komut = 32'h55F0AA8F; #50;
komut = 32'h55F0AAFF; #50;
end

initial begin
#1000; $stop;
end

endmodule
