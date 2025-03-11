module q1;
  
  int mem[$];
  
  initial begin
    mem = { 2 , 4 , 6 , 8 , 10 };
    
    mem.insert(mem.size()/2 , 5);
    $display("mem mem.size()/2 = %p ",mem);
    
    mem.insert(mem.size() , 14);
    $display("mem mem.size() = %p ",mem);
    
    mem.insert(mem.size() - 1 , 12 );
    $display("mem mem.size() - 1 = %p ",mem);
    
    mem.pop_front();
    $display("mem pop_front = %p ",mem);
    
    mem.pop_back();
    $display("mem pop_back =  %p ",mem);
    
    mem.push_front(7);
    $display("mem push_front = %p ",mem);
    
    mem.push_back(7);
    $display("mem push_front = %p ",mem);
    
  end
  
endmodule


/*
# KERNEL: mem mem.size()/2 = '{2, 4, 5, 6, 8, 10} 
# KERNEL: mem mem.size() = '{2, 4, 5, 6, 8, 10, 14} 
# KERNEL: mem mem.size() - 1 = '{2, 4, 5, 6, 8, 10, 12, 14} 
# KERNEL: mem pop_front = '{4, 5, 6, 8, 10, 12, 14} 
# KERNEL: mem pop_back =  '{4, 5, 6, 8, 10, 12} 
# KERNEL: mem push_front = '{7, 4, 5, 6, 8, 10, 12} 
# KERNEL: mem push_front = '{7, 4, 5, 6, 8, 10, 12, 7} 

*/
