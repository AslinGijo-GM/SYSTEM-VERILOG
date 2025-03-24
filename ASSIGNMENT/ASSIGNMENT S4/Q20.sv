class mem;
  
  randc int a;
  constraint c1{ a inside {[1000:2000]}; }
endclass

mem box;

module memm;
  
  initial begin
    
    box = new();
    box.randomize();
    $display("a = %d",box.a);
    
  end
  
endmodule
