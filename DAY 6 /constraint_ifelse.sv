module constraint_if_else;
  
  class con;
    
    rand int a;
    rand int b;
    
    constraint c1 { a inside { [2:6] }; b inside {[5:24]} ; }
    constraint c2 {  if (a == 5) b == 17;else b ==13; }
    
  endclass
  
  con mem = new();
  
  initial begin
    
    repeat(10) begin
      mem.randomize();
      $display(" %p ", mem );
      
    end
    
  end
  
endmodule
