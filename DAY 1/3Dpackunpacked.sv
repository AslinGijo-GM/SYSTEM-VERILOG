module packNunpack;
  
  logic [3:0][2:0][3:0]box[1:0][2:0][3:0];
  
  initial begin
    
    foreach(box[i,j,k,l,m]) begin
      
      box[i][j][k][l][m] = $urandom_range(15,0);
      $display("box[%0d][%0d][%0d][%0d][%0d] = %d",i,j,k,l,m,box[i][j][k][l][m]);
      
    end
    
    
  end
  
endmodule
