package
  typedef struct{
    int a , b,c
  }sum;

  typedef enum {yes , no} status_t;

  function sum func_sum(sum x);
    func_sum.a = x.a;
    func_sum.b= x.b;
    func_sum.c = func_sum.a + func_sum.b;
  endfunction
endpackage : SumPakage 


module mode ;
import my_pkg ::*;

status_t s;
initial begin
    sum my_sum;
    my_sum.a = 5;
    my_sum.b = 10;
    my_sum = func_sum(my_sum);
        $display("a=%0d, b=%0d, c=%0d", my_sum.a, my_sum.b, my_sum.c);
    
end
    
endmodule