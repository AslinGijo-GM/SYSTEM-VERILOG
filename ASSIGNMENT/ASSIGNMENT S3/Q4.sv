module q4;
  
  int mem[$];
  
  initial begin
    
    mem = { 2 , 4 , 6 ,8 };
    $display(" mem = %p " , mem);
    
    mem.insert(0,1);
    $display(" mem.insert = %p " , mem);
    
    mem.delete(3);
    $display(" mem.delete = %p " , mem);
    
    mem.push_back(9);
    $display(" mem.insert = %p " , mem);
    
    mem.shuffle;
    $display(" mem.shuffle = %p " , mem);
    
    mem.reverse;
    $display(" mem.reverse = %p " , mem);
    
  end  
  
endmodule
