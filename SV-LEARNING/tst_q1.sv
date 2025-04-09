class randclass;
  
  randc int que1[$];
  randc int que2[$];
  constraint queue_size1 { 
    	que1.size() inside { [1:10] };
  }  
  
  constraint value1 {   
   foreach(que1[i])
      que1[i] inside { [50:200] }; }
  
  constraint queue_size2 { 
    	que2.size() inside { [1:10] }; 		
  } 
  
  constraint value {   
    foreach(que2[i])
      que2[i] inside { [50:200] }; }
  
endclass

module memmm;
  
  randclass mem;
  
  initial begin
    
    mem = new();
    mem.randomize();
    $display("que1 = %p",mem.que1);
    $display("que2 = %p",mem.que2);
    
  end  
  
endmodulew
