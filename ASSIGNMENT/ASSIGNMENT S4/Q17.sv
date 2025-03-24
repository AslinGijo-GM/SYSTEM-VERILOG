class mem;
  
  rand int a;
  constraint c1{ a inside {[0:40]}; }
  constraint c2 { a inside {10, 20, 30, 40} -> $fail ; }
  
endclass

mem box;

module memm;
  
  initial begin
    
    box = new();
    box.randomize();
    $display("%d",box.a);
    
  end
  
endmodule
