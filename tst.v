//Assertion module

module mone_prop(input a,b,clk);
property p1;
    @(posedge clk) $rose (a) !=> b;
endproperty
A1 : assert property(p1);
endmodule 

// Design module
module mone_prop (input logic  clk, req,output logic ack,...);

    
endmodule


// Testbench

module top;
...
mone m1 (clk , req1 , ack1 ...);
mone m2 (clk , req2 , ack2 ...);
bind mone mone_prop mp1 (req,ack,clk);