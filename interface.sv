interface bus_if(input logic clk);
 logic [7:0] data;
 logic valid;
 logic ready;


 modport master (
 input ready ,
 output valid , data
 );

 modport  slave (
 input data , valid
 output ready
 );
    
endinterface




// how to use in module

module master_device (bus_if.master m_if);
    always @(posedge m_if.clk) begin
        if(m_if.ready)begin
           m_if.data <= 8'hAA;
           m_if.valid <=1;
        end
    end
endmodule


//how to use in testbench

module tb ;
logic clk;
bus_if my_bus(clk);

master_device u_master(my_bus);

initial begin 
    clk = 0;
    forever #5 clk = ~clk;
end
endmodule