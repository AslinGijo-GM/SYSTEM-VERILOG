module mem;
  
  int a;
  int b;
  
  initial begin
    
    std::randomize(a,b) with {a inside {[1:12]}; b inside {[5:14]}; } ;
    $display("a=%0d , b = %0d",a,b);
    std::randomize(a,b) with {a inside {[13:16]}; b inside {[1:4]}; } ;
    $display("a=%0d , b = %0d",a,b);
  end
  
  
endmodule
