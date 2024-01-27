`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.01.2024 00:42:14
// Design Name: 
// Module Name: Final
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


module Final(
    input clk,
    output out
    );
    wire b,c,d;
    tff first(clk,b);
    tff second(b,out);
    //dff third(c,clk,out);
endmodule

module tff(input clk,output out);
    reg out=1'b0;
    always@(negedge clk)begin
        out=~out;
    end
endmodule

module dff(input d,input clk,output out);
    reg out;
    always@(clk)begin
        if(d) out=d;
        else out=d;
    end
endmodule

module testing;
    reg clk;
    wire out;
    initial begin
        clk=1'b0;
        forever #1 clk=~clk;
        end
        initial #25 $finish;
    Final g(clk,out);
endmodule