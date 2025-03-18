module constraint_imp;
  
  class con;
    
    rand int a;
    rand int b;
    
    constraint c1 { a inside { [2:6] }; b inside {[5:24]} ; }
    constraint c2 {  a == 5 -> b == 23 ;}
    
  endclass
  
  con mem = new();
  
  initial begin
    
    repeat(10) begin
      mem.randomize();
      $display(" %p ", mem );
      
    end
    
  end
  
endmodule
