module swallow;
  
  class mem;
    int a;
    
    function new();
      	a = 32'hdead;
    endfunction
    
  endclass
  mem mem1;
  mem mem2;
  
  initial begin
    	
    mem1 = new();
    
    mem2= new mem1;
    
    $display("mem1 = %0h", mem1.a);
    $display("mem2 = %0h", mem2.a);
    
    mem1.a = 32'hbeef;
    
    $display("mem1 = %0h", mem1.a);
    $display("mem2 = %0h", mem2.a);
    
    mem2.a = 32'hbeef;
    mem1 = new();
    
    $display("mem1 = %0h", mem1.a);
    $display("mem2 = %0h", mem2.a);
    
    
    
  end
  
endmodule
