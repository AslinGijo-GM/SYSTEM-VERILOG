class randclass;
  
  rand bit [7:0]var1;
  
  constraint distt{ var1 dist { [0:100] := 80 , [101:255] := 20  } ; }
  
  
endclass

module emme;
  
  randclass mem;
  
  initial begin
    
    mem = new();
    repeat(10) begin
    	mem.randomize();
    	$display("var1 = %d", mem.var1);
    end
  end 
  
endmodule
