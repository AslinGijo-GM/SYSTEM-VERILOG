class mem;
  
  rand int a;
  
  constraint c { soft a inside {[1:10]}; }
  
endclass

module box;
  
  mem me;
  
  initial begin
    
    me = new();
    me.randomize()  with { a inside {[12:16]}; } ;
    $display("%d",me.a);
    
  end
  
endmodule
