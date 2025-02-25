module unboundedQ;
  
  int box[$];
  
  initial begin
  
    box.push_back(20);
    box.push_front(10);
    box.push_back(30);
    box.push_back(40);
    box.push_back(31);
    box.push_back(15);
    box.push_back(23);
    box.push_back(12);
  
    $display ( " box = %p " , box );
    
    box.pop_back();
    box.pop_front();
    
    
    $display ( " box = %p " , box );
    
  end
  
endmodule
