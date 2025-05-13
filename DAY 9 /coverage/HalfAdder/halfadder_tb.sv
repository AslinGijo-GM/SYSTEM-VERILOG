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
  
  covergroup cg_halfadder  @(posedge clk);
    coverpoint { a,b } {
      bins all_comb[] = {[0:3]};
    }
  endgroup
  
  cg_halfadder cg = new();
  
  
  
  
  initial begin
    
    
     $display("Starting half adder test...");
    
    
    repeat ( 10 ) begin
      
      { a , b } = $urandom_range(0,3);
      @(posedge clk);
      cg.sample();
      $display( " a = %b , b = %b , c = %b ",a,b,c );
      $display("Functional Coverage: %0.2f%%", cg.get_coverage());
    end    
    
    #10;
    


    $display("Test completed.");
    $finish;
    
    
  end
  
  
endmodule
