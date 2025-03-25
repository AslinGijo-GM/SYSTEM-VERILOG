class memm;
  
  rand bit [0:7]x;
  constraint c{ x inside { [1:34], 127, [129:156], [192:202],[257:260] } ; }
  
endclass

memm mem;

module con;
  
  initial begin
    
    mem = new();
    mem.randomize();
    $display("%d",mem.x);
    
  end
  
endmodule
