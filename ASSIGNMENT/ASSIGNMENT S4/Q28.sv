class dyn;
  
  rand int arr1[];
  rand int arr2[];  
  
  constraint a1 { arr1.size inside { [5:10] }; }
  constraint a2 { arr2.size == 5 ; }
                                      
endclass

dyn mem;

module con;
  
  initial begin
    
    mem = new();
    mem.randomize();
    $display("%p %p",mem.arr1,mem.arr2);
    
  end 
  
endmodule
