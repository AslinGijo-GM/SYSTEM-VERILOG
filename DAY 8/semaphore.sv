module semaphore_test;
  
  semaphore sem;
  
  task automatic process(string name , time delay);
    
    sem.get(1);
    $display( " [%0t] PROCESS %s IS STARTED " ,$time , name );
    #delay;
    $display( " [%0t] PROCESS %s FINISHED " ,$time , name );
    sem.put(1);
    
  endtask
  
  initial begin
    
    sem = new(2);
    
    fork
      
      process("A",15);
      process("B", 5);
      process("C",10);
      
    join  
    
  end 
  
  
  
  
  
  
endmodule
