module q5;
  
  int a[];
  int b[string];
  
  initial begin
    
    a = new[5];
    a = { 1 , 2 , 3 , 4 , 5 };
    
    b["r15"]  = 25;
    b["mt15"] = 12;
    b["dudu"]  = 45;
      
      $display("a = %p , b = %p",a,b);
    
  end  
  
endmodule
