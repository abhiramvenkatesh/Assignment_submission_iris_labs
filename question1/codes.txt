module Rotate(
    input [3:0] q,
    input clk,
    output [3:0] out,
    input select,
    input reset
    );
    reg [3:0]out;
    reg [3:0]b;
    always@(posedge clk or reset)begin
        if(reset)begin
            out[3]=q[3];
            out[2]=q[2];
            out[1]=q[1];
            out[0]=q[0];
        end 
        else begin
            if(select==1'b1)begin
                b[3]=out[3];
                b[2]=out[2];
                b[1]=out[1];
                b[0]=out[0];
                out[0]=b[1];
                out[1]=b[2];
                out[2]=b[3];
                out[3]=b[0];
            end
        end
    end
endmodule
