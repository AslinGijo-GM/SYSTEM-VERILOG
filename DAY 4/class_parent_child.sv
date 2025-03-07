module par;
  
  class parent;
    
    function display();
    	$display(" PARENT ");
    endfunction
    
  endclass
  
  class child extends parent;
    
   
    
    function display();
        super.display();
    	$display(" CHILD " ) ;
    endfunction
    
  endclass
  
  class childa extends child;
    
    function display();
      
      super.display();
      $display( " CHILDA " );
      
    endfunction
    
  endclass
  
  childa child1;
  
  
  initial begin
    
    
    child1.display();;
    
  end
  
endmodule
