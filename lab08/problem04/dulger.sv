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
logic           we,hataDecoder,hataExecute;
logic           pc_update;
logic [31:0]    rd_pcnew_kablo;


//execute connected
lab_07_p3 Decoder(.clk(clk),.reset(reset),.komut(komut),.hata(hataDecoder),.rs1_data(rs1_data),
.rs2_data(rs2_data),.imm(imm),.aluop(funct),.opcode(opcode),.rd_data(rd_pcnew_kablo),.we(we));

//fetch connected
lab_08_p3 Execute(.rs1_data(rs1_data),.rs2_data(rs2_data),.imm(imm),.funct(funct),.opcode(opcode),
.pc_update(pc_update),.sonuc(rd_pcnew_kablo),.we(we),.hata(hataExecute));

//decodere connected
lab_08_p1 Fetc(.clk(clk),.reset(reset),.pc(pc),.pc_update(pc_update),.pc_new(rd_pcnew_kablo));

assign hata = hataDecoder | hataExecute;

endmodule









