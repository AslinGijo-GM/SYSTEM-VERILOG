module q7;
  
  typedef enum{ ADD = 2, SUB, JE = 10, JNE, LD, ST }mem;
  
  mem mem_t;
  
  initial begin
    
     mem_t = JNE;
    $display(" mem = %d" , mem_t);
    
  end 
  
endmodule
