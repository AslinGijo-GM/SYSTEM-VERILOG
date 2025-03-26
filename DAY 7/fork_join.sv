module fork_join;
  
 initial begin
  
  fork
    
    begin
    
      $display("A STARTED = %0t",$time);
      #5; $display("A END = %0t",$time);
      
    end
    
     begin
    
       $display("B STARTED = %0t",$time);
       #10; $display("B END = %0t",$time);
      
    end
    
     begin
    
       $display("C STARTED = %0t",$time);
       #5; $display("C END = %0t",$time);
      
    end
    
  join
  
  $display( " OUT SIDE = %0t ",$time );
  
 end
  
endmodule
