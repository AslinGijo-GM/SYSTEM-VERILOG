class constt;
rand bit [7:0] low, mid, high;
  constraint Const_1 { low < mid ; mid  < high ;}
endclass
  
  constt box;
  
  module mem;
    
    initial begin
      
      box = new();
      box.randomize();
      $display("low = %d , mid = %d , high = %d" , box.low , box.mid , box.high);
            
    end    
    
  endmodule
