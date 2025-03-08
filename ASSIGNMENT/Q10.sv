module sv10;
  string sv;
  int x;
  string xx;
  int size;
  
  initial begin
    
    sv = "System Verilog" ;
    $display("%s",sv);
    
    x=sv.getc(0);
    $display("%s",x);
    
    xx=sv.toupper();
    $display("%s",xx);
    
    sv = { "System Verilog" , " 3.1a " };
    $display("%s",sv);
    
    size = sv.len();
    $display("%d",size);    
    
    sv.putc(size - 1 ,"b");
    $display("%s",sv);
    
    xx = sv.substr(2,5);
    $display("%s",xx);    
    
  end  
  
endmodule
