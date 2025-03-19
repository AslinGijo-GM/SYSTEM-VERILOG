module constraint_foreach;
  
  class con;
    
    rand int x[15];
    
    constraint c{ foreach (x[i]) x[i] inside {[2:16]} ; }
    
  endclass
  
  con mem = new();
  
  initial begin
    
    mem.randomize();
    $display("%p",mem.x);
    
  end
  
endmodule
