module pack2d;
  
  logic [3:0][3:0]box1;
  logic box2[3:0][3:0];
  
  initial begin
  
    foreach( box1[i] ) begin
    
      box1[i]=$urandom_range(9,0);
      $display( "box1[%0d]=%d",i,box1[i]);
    
    end
    
    foreach( box2[i,j] ) begin
    
      box2[i][j]=$urandom_range(9,0);
      $display( "box2[%0d][%0d]=%d",i,j,box2[i][j]);
    
    end
    
  end
  
endmodule
