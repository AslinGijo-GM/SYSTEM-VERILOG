module dimm;
  
  int dim[5][31];
  
  initial begin
    
    foreach( dim[i,j] ) begin
      
      my_array1[4][30] = 1'b1;    //not out bound
      my_array1[29][4] = 1'b1;    // out bound
      my_array1[4] = 31'b1;       //not valid
      
    end
    
  end
  
endmodule
