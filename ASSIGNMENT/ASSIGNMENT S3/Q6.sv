module q6;

  int b[string];
  
  initial begin
    
    
    b["r15"]  = 25;
    b["mt15"] = 12;
    b["dudu"]  = 45;
      
      $display(" b = %p",b);
    
  end  
  
endmodule
