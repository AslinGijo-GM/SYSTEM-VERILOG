module gijo;

class HelloWorld; 
  function void print(); 
    $display("Hello, World!"); 
  endfunction 
endclass 
  
  HelloWorld h1;
  initial begin
    h1.print();
    
  end  
endmodule

// OUTPUT
// KERNEL: Hello, World!
