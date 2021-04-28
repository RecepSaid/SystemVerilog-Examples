/* lab_07_p2.sv */

module lab_07_p2(
    input logic clk,reset,
//writing ports
    input logic we,
    input logic [4:0] waddr,
    input logic [31:0] wbdata,
//reading ports
    input  logic [4:0] rs1,
    input  logic [4:0] rs2,
    output logic [31:0] rs1_data,
    output logic [31:0] rs2_data
);

logic [31:0] mem[0:7];

initial begin
$readmemh("reg_image.mem",mem);
end 

always_ff @(posedge clk)

    if(we)
        mem[waddr] <= wbdata;
always_comb begin
    if(reset) begin
		rs1_data = 32'b0;
		rs2_data = 32'b0;
    end
    else begin
		rs1_data = mem[rs1];
		rs2_data = mem[rs2];
    end 
end
endmodule
