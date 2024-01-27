`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.01.2024 01:38:56
// Design Name: 
// Module Name: mealy
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module mealy(
    input q,
    input clk,
    input reset,
    output out
    );
    reg out;
    parameter a=1,b=2,c=3,d=4,e=5,f=6,g=7;
    integer ps,ns;
    reg vs;
    always@(reset or q or ps)begin
        if(reset)begin
            ps=a;
            out=1'b0;
        end
        else begin
            case(ps) 
                a:  if(q)begin
                        ns=e;
                        vs=1'b0;
                        end
                    else begin
                        ns=b;
                        vs=1'b0;
                        end
                b:  if(q)begin 
                        ns=c;
                        vs=1'b0;
                        end
                    else begin 
                        ns=b;
                        vs=1'b0;
                        end
                c:  if(q)begin 
                        ns=e;
                        vs=1'b0;
                        end
                    else begin
                        ns=d;
                        vs=1'b0;
                        end
                d:  if(q) begin
                        ns=c;
                        vs=1'b0;
                        end 
                    else begin
                        ns=g;
                        vs=1'b1;
                        end  
                e:  if(q) begin
                        ns=e;
                        vs=1'b0;
                        end 
                    else begin
                        ns=f;
                        vs=1'b0;
                        end
                f:  if(q) begin
                        ns=b;
                        vs=1'b0;
                        end  
                    else begin
                        ns=g;
                        vs=1'b0;
                        end
                g:  if(d) begin
                        ns=c;
                        vs=1'b1;
                        end 
                    else begin
                        ns=b;
                        vs=1'b0;
                        end       
             endcase
        end
    end
    always@(posedge clk)begin
        ps<=ns;
        out<=vs;
    end
endmodule

module test1;
    reg q,reset,clk;
    wire out;
    initial begin
        clk=1'b0;
        forever #1 clk=~clk;
        end
        initial #100 $finish;
    mealy t2(q,clk,reset,out);
    initial begin
        reset=1'b1;
        #2 reset=1'b0;
        #2 q=1'b0;
        #2 q=1'b1;
        #2 q=1'b0;
        #2 q=1'b0;
        #2 q=1'b1;
        #2 q=1'b0;
        #2 q=1'b0;
        #2 q=1'b1;
        #2 q=1'b0;
        #2 q=1'b0;
        #2 q=1'b1;
        #2 q=1'b0;
        #2 q=1'b1;
        #2 q=1'b0;
        #2 q=1'b1;
        #2 q=1'b0;
        #2 $finish;
    end
endmodule