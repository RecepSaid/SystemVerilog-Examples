/*fmax_lab_07_p1*/

module fmax_lab_07_p1 (

input logic clk,
input logic [31:0] komut,
output logic [6:0] opcode,
output logic [3:0] aluop,
output logic [4:0] rs1,
output logic [4:0] rs2,
output logic [31:0] rs1_data,
output logic [31:0] rs2_data,
output logic [4:0] rd,
output logic [31:0] imm,
output logic hata

);

logic [31:0] komut_reg;
logic [6:0] opcode_reg;
logic [3:0] aluop_reg;
logic [4:0] rs1_reg;
logic [4:0] rs2_reg;
logic [31:0] rs1_data_reg;
logic [31:0] rs2_data_reg;
logic [4:0] rd_reg;
logic [31:0] imm_reg;
logic hata_reg;

lab_07_p1 uut0(.komut(komut_reg),.opcode(opcode_reg),.aluop(aluop_reg),
.rs1(rs1_reg),.rs2(rs2_reg),.rs1_data(rs1_data_reg),
.rs2_data(rs2_data_reg),.rd(rd_reg),
.imm(imm_reg),.hata(hata_reg));

always_ff @(posedge clk)
        begin
        komut_reg <= komut;
        opcode <= opcode_reg;
        aluop <= aluop_reg;
        rs1 <= rs1_reg;
        rs2 <= rs2_reg;
        rs1_data <= rs1_data_reg;
        rs2_data <= rs2_data_reg;
        rd <= rd_reg;
        imm <= imm_reg;
        hata <= hata_reg;
         end
endmodule
