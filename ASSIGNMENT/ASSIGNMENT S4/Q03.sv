class ABC;
  
	rand int length;
	rand byte SA;
  constraint c_length { length inside {[1:64]};}
  constraint c_sa {SA inside {[1:16]};}
  
endclass


module mem;
	
  ABC abc = new();
  
  initial begin
	
    abc.c_length.constraint_mode(0);
  	abc.randomize();
    $display(" length = %d , SA = %d ",abc.length,abc.SA);
  end
    
endmodule
