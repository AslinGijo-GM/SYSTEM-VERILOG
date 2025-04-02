module mem;
  
  event test_ev;
  
  task display1();
    $display("FUNCTION 1");
    @test_ev;
    $display("FUNCTION 2");
    
  endtask
  
  task display2();
    
    $display("TASK 1");
    ->test_ev;
    $display("TASK 2");
    
  endtask
  
  initial begin
    fork
    display1();
    display2();
    join
  end 
  
endmodule
