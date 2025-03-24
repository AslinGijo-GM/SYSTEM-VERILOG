class mem;

	 rand logic unsigned [15:0] a, b, c;
     constraint c_abc {
     a < c;
     b == a;
     c < 30;
     b > 25;
      }
  
endclass

mem box;

module test;
  
  initial begin
    
    box = new();
    box.randomize();
    
    $display(" a=%0d , b=%0d , c=%0d " , box.a,box.b,box.c);
    
  end 
  
endmodule

