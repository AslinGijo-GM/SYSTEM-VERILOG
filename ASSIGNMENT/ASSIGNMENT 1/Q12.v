module arrr;
  
  bit [11:0]arr[3:0];
 	int i;
  initial begin
    
    arr[0]=12'h012;
    arr[1]=12'h345;
    arr[2]=12'h678;
    arr[3]=12'h9ab;
    
    foreach( arr[i] ) begin
      
      $display( " arr[%0d][5:4] = %0h",i,arr[i][5:4] );
    end
    
    for(i=0;i<4;i++) begin
      $display( " arr[%0d][5:4] = %0h",i,arr[i][5:4] );
    end
    
    
  end 
  
endmodule
