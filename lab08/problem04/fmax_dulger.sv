/* fmax_dulger.sv */
//For timing analysis
module fmax_dulger(
    input   logic            clk,reset,
    input   logic   [31:0]   komut, //connected decode=lab_07_p3
    output  logic   [31:0]   pc,    //connected fetch=lab_08_p1
    output  logic            hata   //connected fetch
);

logic            hata_reg;
logic   [31:0]   komut_reg;
logic   [31:0]   pc_reg;   

dulger dulgerfmax(.clk(clk),.reset(reset),.komut(komut_reg),.pc(pc_reg),.hata(hata_reg));

always_ff @(posedge clk) 
begin
komut_reg <= komut;
pc   <= pc_reg;
hata <= hata_reg;
end
endmodule
