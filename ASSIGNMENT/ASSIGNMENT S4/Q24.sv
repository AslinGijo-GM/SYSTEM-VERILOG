class memm;
  
  rand bit [31:0]x;
  constraint countbits0{ $countbits(x , 0) == 18; }
  constraint countbits1{ $countbits(x , 1) == 14; }
  constraint non11{ 
    
    foreach(x[i]) {
      if (i > 0) { x[i] + x[i-1] != 2  
       } ;
    } 
  }
  

  
endclass

memm mem;

module con;
  
  initial begin
    
    mem = new();
    mem.randomize();
    $display("%b",mem.x);
    
  end
  
endmodule
