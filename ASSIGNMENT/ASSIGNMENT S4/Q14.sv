
class dynamic_array;
	rand int unsigned  abc[];
  constraint c{ abc.size < 10 ; foreach(abc[i]) abc[i] < 10 ;  }	
  
endclass


module memm;
  
  dynamic_array mem;
  
  initial begin
    
    mem = new();
    mem.randomize();
    $display("%p",mem.abc);
    
  end
  
endmodule
