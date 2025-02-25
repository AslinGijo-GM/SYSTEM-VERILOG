module dynn;
  
  int dyn[][];
  
  initial begin 
    
    dyn=new[3];
    
    foreach (dyn[i]) begin
      
      dyn[i]=new[4];
      
    end
    
    foreach ( dyn[i,j] ) begin
      
      dyn[i][j] = $urandom_range(10,0);
      $display ("dyn[%0d][%0d] = %0d" ,i,j,dyn[i][j]);
    end
    
  end  
  
endmodule
