module moore(
    input q,
    input clk,
    input reset,
    output out
    );
    reg out;
    parameter a=1,b=2,c=3,d=4,e=5,f=6,g=7,h=8,i=9;
    integer ps,ns;
    reg vs;
    always@(reset or q or ps)begin
        if(reset)begin
            ps=a;
            out=1'b0;
        end
        else begin
            if(ps==e || ps==i) vs=1'b1;
            else vs=1'b0;
            case(ps) 
                a:  if(q) ns=f;
                    else ns=b;
                b:  if(q) ns=c;
                    else ns=b;
                c:  if(q) ns=f;
                    else ns=d;
                d:  if(q) ns=c; 
                    else ns=e;  
                e:  if(q) ns=i; 
                    else ns=b;
                f:  if(q) ns=f;  
                    else ns=g;
                g:  if(d) ns=c; 
                    else ns=h;
                h:  if(q) ns=i; 
                    else ns=b;
                i:  if(q) ns=f;
                    else ns=d;        
             endcase
        end
    end
    always@(posedge clk)begin
        ps<=ns;
        out<=vs;
    end
endmodule
