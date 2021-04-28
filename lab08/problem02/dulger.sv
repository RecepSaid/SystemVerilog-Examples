/* dulger.sv */

module dulger(
    input   logic            clk,reset,
    input   logic   [31:0]   komut, //connected decode=lab_07_p3
    output  logic   [31:0]   pc,    //connected fetch=lab_08_p1
    output  logic            hata   //connected fetch
);

logic [31:0]    rs1_data,rs2_data,imm;
logic [3:0]     funct;
logic [6:0]     opcode;
logic           we;
logic           pc_update;
logic [31:0]    rd_pcnew_kablo;
logic [31:0]    komutKablo;

assign komutKablo = komut;

lab_07_p3 InstructionDecode(.clk(clk),.reset(reset),.komut(komutKablo),.hata(hata),.rs1_data(rs1_data),
.rs2_data(rs2_data),.imm(imm),.aluop(funct),.opcode(opcode),.rd_data(rd_pcnew_kablo),.we(we));

lab_08_p1 InstructionFetch(.clk(clk),.reset(reset),.pc(pc),.pc_update(pc_update),.pc_new(rd_pcnew_kablo));

endmodule









