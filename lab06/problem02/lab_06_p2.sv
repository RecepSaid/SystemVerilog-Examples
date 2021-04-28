/* lab_06_p2.sv */

module lab_06_p2 (
    input logic clk, reset, en,
    input logic [4:0] D,
    input logic baslat,
    output logic y,
    output logic mesgul
);

typedef enum{s0,s1,s2,s3,s4,s5,s6,s7} statetype;
statetype state,nextstate;

always_ff @(posedge clk)
state <= nextstate;

always_comb 
    case (state)
        s0:
            begin
                if (reset)           nextstate = s0;
                else if(baslat & en) nextstate = s1;
                else                 nextstate = s0;
            end
        s1:
            begin
                if (reset)            nextstate = s0;
                else if(~baslat & en) nextstate = s2;
                else                  nextstate = s0;
            end
        s2:
            begin
                if (reset)            nextstate = s0;
                else if(~baslat & en) nextstate = s3;
                else                  nextstate = s0;
            end
        s3:
            begin
                if (reset)            nextstate = s0;
                else if(~baslat & en) nextstate = s4;
                else                  nextstate = s0;
            end
        s4:
            begin
                if (reset)            nextstate = s0;
                else if(~baslat & en) nextstate = s5;
                else                  nextstate = s0;
            end
        s5:
            begin
                if (reset)            nextstate = s0;
                else if(~baslat & en) nextstate = s6;
                else                  nextstate = s0;
            end
        s6:
            begin
                if (reset)            nextstate = s0;
                else if(~baslat&| en) nextstate = s7;
                else                  nextstate = s0;
            end
        s7:                 nextstate = s0;
        default:            nextstate = s0;
    endcase
    
always_comb
    case (nextstate)
            s0: 
                begin
                    y      = 1;
                    mesgul = 0;
                end
            s1: 
                begin
                    y      = 0;
                    mesgul = 1;
                end
            s2: 
                begin
                    y      = D[0];
                    mesgul = 1;
                end
            s3: 
                begin
                    y      = D[1];
                    mesgul = 1;
                end
            s4: 
                begin
                    y      = D[2];
                    mesgul = 1;
                end
            s5: 
                begin
                    y      = D[3];
                    mesgul = 1;
                end
            s6: 
                begin
                    y      = D[4];
                    mesgul = 1;
                end
            s7: 
                begin
                    y      = 1;
                    mesgul = 1;
                end

            default: 
                begin 
                    y      = 1;
                    mesgul = 0;
                end
    endcase

endmodule
