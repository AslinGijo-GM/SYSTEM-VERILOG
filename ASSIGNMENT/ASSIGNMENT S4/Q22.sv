class memm;
  
  randc int arr1[10];
  randc int arr2[10];
  constraint c1{ foreach(arr1[i]) arr1[i] inside { [0:20] }; }
  constraint c2{ foreach(arr2[i]) arr2[i] inside { [0:20] }; }
  
    constraint unique_arr1 {
        foreach (arr1[i]) {
            foreach (arr1[j]) {
                if (i != j) arr1[i] != arr1[j]; 
            }
        }
    }
              
    constraint unique_arr2 {
        foreach (arr2[i]) {
            foreach (arr2[j]) {
                if (i != j) arr2[i] != arr2[j];
            }
        }
    }
  
  constraint cc{ foreach(arr1[i]) { 
    foreach(arr2[j])  { 
      arr1[i] != arr2[j] ;  
                     
         }
      } 
   } 
  
endclass


memm mem;

module con;
  
  initial begin
    
    mem = new();
    mem.randomize();
    $display("%p %p",mem.arr1,mem.arr2);
    
  end
  
endmodule
