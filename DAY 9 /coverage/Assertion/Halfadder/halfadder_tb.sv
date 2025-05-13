module halfadder_tb;
  
  logic a;
  logic b;
  logic c;
  
  halfadder dut (
    .a(a),
    .b(b),
    .c(c)
  );
  
  logic clk;
  initial clk = 0;
  always #5 clk = ~clk;
  

  property sumx;
    
   // @(posedge clk ) c == a | b ; // correct
    @(posedge clk ) c == a & b ; // incorrect
    
  endproperty
  
  assert property (sumx) else $fatal( " incorrect  " );
  
  
  initial begin
    
    
     $display("Starting half adder test...");
    
    
    repeat ( 10 ) begin
      
      { a , b } = $urandom_range(0,3);
      @(posedge clk);
      $display( " a = %b , b = %b , c = %b ",a,b,c );
    end    
    
    #10;
    


    $display("Test completed.");
    $finish;
    
    
  end
  
  
endmodule
