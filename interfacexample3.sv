interface example;
    logic a, b;
    logic [3:0] c,d;
endinterface

class  c_example;
  virtual example ex;//virtual mean class dont have a real copy on interface , have apointer or signal
  function new(virtual example ex)//constructor
  this.val = ex;
  endfunction
  

endclass
