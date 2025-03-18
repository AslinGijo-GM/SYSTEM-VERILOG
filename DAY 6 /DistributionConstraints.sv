module constraint_dist;
  
  class con;
    
    rand int x;
    
    constraint c{ x dist { 2:=50 , 4:=25 , 5:=25 }; }
    
  endclass
  
  con mem;
  
  initial begin
    
    mem = new();
    
    repeat(10) begin
      
      mem.randomize();
      $display(" %d ", mem.x);
      
    end
    
  end
  
endmodule
