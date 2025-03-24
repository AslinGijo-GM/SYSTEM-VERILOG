class mem;
  
  rand int arr[10];
  
  constraint c1{ foreach(arr[i]) arr[i] inside { [0:10] } ;}
  constraint c2{ unique { arr };}
  
  
endclass

module memm;
  
  mem box;
  
  initial begin
    
    box = new();
    box.randomize();
    $display("%p",box);
    
    
  end 
  
endmodule
