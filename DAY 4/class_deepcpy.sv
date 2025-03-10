module class_staic;
  
  class mem;
    	
    static int a;
    
    function void display();
      $display("mem a = %0b",a); 
    endfunction
     
    function growmore();
        
      	a= a+1;
    endfunction
    
  endclass
  
  
  mem grow;
  mem grow1;
  mem grow2;
  	
  initial begin
    
    grow = new();
    grow1= new();
    
    grow1.a=1;
    grow1.display();
    
    grow2 = new grow1;
    grow2.display();
    
    grow2.a=2;
    
   
    grow2.display();
    
    
   end
  
endmodule
