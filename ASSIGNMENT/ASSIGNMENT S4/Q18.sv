class mem;
  
  rand int s,r,t;
  constraint c1{r<t;s==r;t>30;s>25; }
endclass

mem box;

module memm;
  
  initial begin
    
    box = new();
    box.randomize();
    $display("r = %d,s = %d , t = %d",box.r , box.s,box.t);
    
  end
  
endmodule
