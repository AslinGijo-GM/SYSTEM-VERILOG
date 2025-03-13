module dimm;
  
  int dim[5][31];
  
  initial begin
    
      dim[4][30] = 1'b1;    //not out bound
      dim[29][4] = 1'b1;    // out bound
      dim[4] = 31'b1;       //not valid
    
  end
  
endmodule
