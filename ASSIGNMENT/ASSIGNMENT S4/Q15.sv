class mem;
  
  rand int a;
  constraint soft_con {soft a inside {[1:10]} ;  }
  constraint hard_con { a inside {[50 :1000]}; }
  
endclass

mem box;

module memm;
  
  initial begin
    box = new();
    box.randomize();
    $display("%d",box.a);
    
    
  end
  
endmodule
