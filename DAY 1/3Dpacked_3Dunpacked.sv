module packNunpack;
  
  logic [3][2][3]box1;
  byte box2[1][2][3];
  
  initial begin
    
    foreach(box1[i,j]) begin
      
      box1[i][j] = $urandom_range(15,0);
      $display("box1[%0d][%0d] = %d",i,j,box1[i][j]);
      
    end
    
    foreach(box2[i,j,k]) begin
      
      box2[i][j][k] = $urandom_range(15,0);
      $display("box2[%0d][%0d][%0d] = %d",i,j,k,box2[i][j][k]);
      
    end
    
  end
  
endmodule
