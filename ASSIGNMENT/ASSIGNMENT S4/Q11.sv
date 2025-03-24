class memm;
  
  rand int unsigned a;
  rand int unsigned b;
    
endclass

memm mem;

module box;
  
  initial begin
    
    mem = new();
    
    mem.randomize() with {  a < 100 ; b < 200; a > b ; };    
    $display(" a=%0d , b=%0d " ,mem.a,mem.b);
  end
  
endmodule
