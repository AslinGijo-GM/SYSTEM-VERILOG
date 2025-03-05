module struct_ex;
  	
  struct packed{
    logic [4:0]a;
    bit   [2:0]b;
    logic [7:0]c;
    logic [7:0]d;
    logic [7:0]e;
  	
  } gijo ;
  
  initial begin
    	
    gijo.a = 5'b11011;
    gijo.b = 3'b101;
    //gijo = { 24'd12345678 };
    //gijo = {gijo.a,gijo.b,8'hff,8'hff,8'hff};
    gijo = {gijo.a,gijo.b,gijo.a,3'b110,8'hff,8'hff};
    
    $display("gijo.a = %b" , gijo.a);
    $display("gijo.b = %b" , gijo.b);
    $display("gijo.c = %b" , gijo.c); // 0 0010 1111
    $display("gijo.d = %b" , gijo.d); // 0 0011 0000
    $display("gijo.e = %b" , gijo.e); // 1 0010 1110
    	 
  end
  
  
  	
endmodule
