module q9;
  
  string a = "SystemVerilog";
  string rev;
  int b;
  initial begin
    
    $display("a = %s",a);
    
    foreach(a[i]) begin
      
      rev = {a[i],rev};
      
    end    
    
    
    $display("reversed = %s",rev);
    
  end
  
endmodule
