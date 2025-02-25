module assoNdyn;
  
  int box[string];
  string key;
  
  initial begin
    
    box["r6"]    = 90;
    box["gt100"] = 12;
    box["yam"]   = 32;
    box["r15"]   = 24;
    box["mt15"]  = 20;
    box["r3"]    = 60;
      
    $display("BOX = %p", box);
    
    $display("SIZE-value: = %0d", box.size());
    
    if (box.first(key))
      $display("First key-value: %s = %0d", key, box[key]);
     
    if (box.last(key))
      $display("Last last-value: %s = %0d", key, box[key]);
    
    key="r15";
    if(box.next(key))
       $display("NEXT-value: %s = %0d", key, box[key]);
    
    key="r15";
    if(box.prev(key))
       $display("NEXT-value: %s = %0d", key, box[key]);
    
    if(box.exists("r3"))
      $display("THERE IS R3");
    else
      $display("NO r3");
    
    box.delete();
    $display("BOX = %p", box);
      
    
  end
  
  
endmodule 
