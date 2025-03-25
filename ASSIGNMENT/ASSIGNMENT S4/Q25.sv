class memm;
  
  rand bit [61:0]x;
  
  constraint bits0{ x[31:0]  == '1; }
  constraint bits1{ x[61:32] == '0; }
    
  

  
endclass

memm mem;

module con;
  
  initial begin
    
    mem = new();
    mem.randomize();
    $display("%b",mem.x);
    
  end
  
endmodule
