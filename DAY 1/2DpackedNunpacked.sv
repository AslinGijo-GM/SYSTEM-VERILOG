module pack2unpack;
  
  logic [4:0][3:0]box1[2:0][3:0];
  
  initial begin
  
    foreach( box1[i,j,k] ) begin
    
      box1[i][j][k]=$urandom_range(9,0);
      $display( "box1[%0d][%0d][%0d]=%d",i,j,k,box1[i][j][k]);
    
    end
    
    
    
  end
  
endmodule
