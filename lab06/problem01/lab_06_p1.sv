/* lab_06_p1.s */

module lab_06_p1 (
    input logic clk,a,
    output logic y
);
logic x,z;

typedef enum logic [3:0] {s0,s1,s2,s3,s4,s5,s6,s7,s8} statetype;
statetype state,nextstate;

always_ff @(posedge clk)
state <= nextstate;

always_comb
    case(state)
        s0:
            begin
                if(a) nextstate = s1;
                else  nextstate = s5;
            end
        s1:
            begin
                if(a) nextstate = s2;
                else  nextstate = s5;
            end
        s2:
            begin
                if(a) nextstate = s3;
                else  nextstate = s5;
            end
        s3:
            begin
                if(a) nextstate = s4;
                else  nextstate = s5;
            end
        s4:
            begin
                if(a) nextstate = s4;
                else  nextstate = s5;
            end
        s5:
            begin
                if(a) nextstate = s1;
                else  nextstate = s6;
            end
        s6:
            begin
                if(a) nextstate = s1;
                else  nextstate = s7;
            end
        s7:
            begin
                if(a) nextstate = s1;
                else  nextstate = s8;
            end
        s8:
            begin
                if(a) nextstate = s1;
                else  nextstate = s8;
            end
        default: nextstate = s0;
    endcase
always_comb
    if (state == s4 | state == s8)
        y = 1;
    else 
        y = 0; 

endmodule

