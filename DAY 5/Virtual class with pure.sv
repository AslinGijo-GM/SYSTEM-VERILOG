module purevir;
  
  virtual class parent;
    
    pure virtual function void display();
    
  endclass
      
   class child extends parent;
       
     function void display();
       
       $display(" CHILD ");
       
     endfunction
        
   endclass
    
      parent p;
      child c;
      
      initial begin
        
        c = new();
        
        p = c;
        p.display();
        
      end
      
  
endmodule
      
