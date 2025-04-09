class randclass;
  
  randc bit  [3:0]arr[10];
  
endclass

module memmm;
  
  randclass mem;
  
  initial begin
    
    mem = new();
    mem.randomize();
    
    $display("%p",mem.arr);
    
  end
  
endmodule
