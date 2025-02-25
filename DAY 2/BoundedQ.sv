module boundedQ;
  
  int box[$:3];
  
  initial begin
  
    box.push_back(20);
    box.push_front(10);
    box.push_back(30);
    box.push_back(40);
  
    $display ( " box = %p " , box );
    
    box.pop_back();
    box.pop_front();
    
    $display ( " box = %p " , box );
    
  end
  
endmodule
