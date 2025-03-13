module vir;
  
  class fruit;
    
    virtual function void taste();
      	
      $display(" sweet and sour ");
    endfunction
    
  endclass
  
  class strawberry extends fruit;
    
    function void taste();
      $display(" sweet ");
      
    endfunction
    
  endclass
  
  class lemon extends fruit;
    
    function void taste();
      $display(" sour ");
      
    endfunction
    
  endclass
  
  
   fruit box;
  
  
    initial begin
      
      lemon lime = new();
      
      strawberry straw = new();
      box = straw;      
      box.taste(); 
      box = lime ; 
      box.taste();      
      
    end              
               
               
endmodule
