package my_pkg;
parameter WIDTH = 8;

typedef struct  {
    logic [WIDTH - 1:0]data;
    logic valid;
} my_struct_t;

int shared_counter = 0;

task increment_counter();

shared_counter++;
endtask;

endpackage


//how to use package

module my_mod
import my_pkg::*;

my_struct_t s;
initial begin
    increment_counter();
     $display("Counter = %0d", shared_counter);
end

endmodule
