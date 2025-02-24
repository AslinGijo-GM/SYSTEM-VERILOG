module packNunpack;
  
  logic [3:0]box[2:0][1:0];
  
  initial begin
    
    foreach ( box[i,j] ) begin
      
      box[i][j] = $urandom_size(10,0);
      $display("box[%0d][%0d] = %0d",i,j,box[i][j] );
    end
      
  end
  

endmodule
