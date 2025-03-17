module virpure;
  
  virtual class parent;
    
    pure virtual function void display();
      
      virtual function void display1();
        
        $display(" display1 parent ");
        
      endfunction
      
      function void display2();
        
        $display( " display2 parent ");
        
      endfunction
    
  endclass
      
      virtual class child extends parent;
        
        virtual function void display();
          
          $display( " display child " );
          
        endfunction
          
          virtual function void display1();
            
            $display(" display child ");
            
          endfunction
          
          function void display2();
            
            $display(" display child1 ");
            
          endfunction
     
      endclass
      
      class child1 extends child;
         
        function void display();
          
          $display( " display child1 " );
          
        endfunction
        
      //  function void display1();
            
      //    $display(" display child1 ");
            
      //   endfunction
            
      endclass  
          
     parent p;
          
  	initial begin
    
      child1 c1 = new();
      p = c1;
      //c1 = c;
      
      
      p.display();
      p.display1();
      p.display2();
      
               
    end    
  
endmodule
