module packNunpacked;
  
  logic [7:0] a;
  logic b [7:0] ;
  
  initial begin
    
    a = 8'b10100101;
    b[0] = 1'b1;
    b[1] = 1'b1;
    b[2] = 1'b1;
    b[3] = 1'b1;
    b[4] = 1'b0;
    b[5] = 1'b1;
    b[6] = 1'b0;
    b[7] = 1'b1;
    
    $write ( "a=%b",a );
    
    foreach(b[i])
      $display ("b[%0d]=%b",i,b[i]);
  end
  
  
endmodule
