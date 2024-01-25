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
