// Create a class "RandClass". Declare two-variable var1 and var2 of 8 bits and Write a constraint to generate a random value for a var1 within 50 and var2 [7:0] with the non repeated value in every randomization? Also, write an inline constraint for the variable var1 to generate the value 40.  



class RandClass;
  
  rand bit [7:0]var1;
  randc bit [7:0]var2;
  
  constraint var1_con { soft var1 inside { [0:50] }; }
  
endclass

module test;
  
  RandClass mem;
  
  initial begin
  	
    mem = new();
    mem.randomize();
    $display(" RANDCLASS : var1 = %d , var2 = %d ",mem.var1,mem.var2);
    mem.randomize() with { var1 == 40 ; };
    $display(" RANDCLASS : var1 = %d , var2 = %d ",mem.var1,mem.var2);
    
  end
  
endmodule
