module q3;
  
  int a[];
  
  initial begin
    
    a = new[6];
    
    foreach(a[i]) begin
      a[i] = $urandom_range(99,9);
      $display( "a[%0d] = %d", i , a[i] );
    end
    
  end  
  
endmodule

/*
# KERNEL: a[0] =          48
# KERNEL: a[1] =          92
# KERNEL: a[2] =          72
# KERNEL: a[3] =          22
# KERNEL: a[4] =          65
# KERNEL: a[5] =          44
*/
