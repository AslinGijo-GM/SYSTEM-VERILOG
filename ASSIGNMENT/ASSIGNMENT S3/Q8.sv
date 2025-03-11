module q8;
  
  string a;
  
  int num_a;
  
  initial begin
    a = "12345";
    $display("a = %s",a);
    
    $sscanf(a , "%d" , num_a);
    $display("num_a = %0d",num_a);
    
    num_a += 100;
    $display("num_a = %0d",num_a);
    
  end
  
endmodule
