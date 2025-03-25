class memm;
  
  rand int arr[10];
  constraint c{ foreach(arr[i]) arr[i] inside { 2 ,3, 5,7 }; }
  
endclass


memm mem;

module con;
  
  initial begin
    
    mem = new();
    mem.randomize();
    $display("%p",mem.arr);
    
  end
  
endmodule
