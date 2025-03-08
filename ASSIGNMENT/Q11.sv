module dimm;
  
  int dim[5][31];
  
  initial begin
    
    foreach( dim[i,j] ) begin
      
      dim[i][j] = $urandom;
      $display("dim[%0d][%0d] = %0d", i,j,dim[i][j]);
      
    end
    
  end
  
endmodule
