/* tb_lab_07_p1.sv */
`timescale 1ns/1ps

module tb_lab_07_p3();

logic            clk,reset;
logic   [31:0]   komut;
    
logic    [6:0]   opcode;
logic    [3:0]   aluop;
logic   [31:0]   rs1_data, rs2_data, imm;
logic            hata;

logic we;
logic [31:0] rd_data;

lab_07_p3 dut0(.clk(clk), .reset(reset), .komut(komut), .opcode(opcode),
.aluop(aluop), .rs1_data(rs1_data),
.rs2_data(rs2_data), .imm(imm), .hata(hata),. we(we), .rd_data(rd_data));

always begin
clk = 1; #5; clk = 0; #5;
end 

initial begin
reset = 1; #10; reset = 0;
end

initial begin
we = 0; reset = 0; rd_data = 32'b0;
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
