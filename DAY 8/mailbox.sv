module mem;
  
  mailbox boxy;
  int temp1,temp2;
  string temp3;
  
  initial begin
    
    boxy = new();
    
    
    boxy.put(10);
    boxy.put(20);
    boxy.put("gijo");
    
    boxy.get(temp1);
    boxy.get(temp2);
    boxy.get(temp3);
    
    $display("%d",temp1);
    $display("%d",temp2);
    $display("%s",temp3);
    
  end
  
endmodule
