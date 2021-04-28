/* alu.sv */
module alu (
			input logic [31:0] a, b,
			input logic [ 3:0] op,			
			output logic [31:0] s,			
			output logic n, z, v, c,			
			output logic hata );						

always_comb begin
		case (op)			
			4'b0000: begin
			s = a + b;
			hata = 0;
			end
			4'b1000: begin
			s = a - b;
			hata = 0;
			end
			4'b0001: begin
			s = a >> b[4:0];
			hata = 0;
			end
			4'b0010: begin
			s = (a>b)? 32'd1:32'd0;
			hata = 0;
			end
			4'b0011: begin
			s = ($signed(a) < $signed(b))?32'd1:32'd0;
			hata = 0;
			end
			4'b0100: begin
			s = a ^ b;
			hata = 0;
			end
			4'b0101: begin
			s = a >> b[4:0];
			hata = 0;
			end
			4'b1101: begin
			s = a >>> b[4:0];
			hata = 0;
			end
			4'b1101: begin
			s = a | b;
			hata = 0;
			end
			4'b0111: begin
			s = a & b;
			hata = 0;
			end				
			default: begin
			s = 32'bx; 
			hata = 1; 
			end
		endcase
		if(s == 0) z = 1;
		else z = 0;
		
end

logic [32:0] tmp;

assign tmp = {1'b0,a} + {1'b0,b};

assign c = tmp[32];

assign n = (a<b)? 1'b1:1'b0;

assign v = ((a[31] == b[31]) != s[31] )? 1'b1:1'b0 ;


endmodule
