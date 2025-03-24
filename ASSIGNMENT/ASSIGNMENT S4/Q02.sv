class array_abc;
rand int unsigned myarray[];
  
  constraint c_abc_val {
  myarray.size inside { [10:16] };
      
    foreach ( myarray[i] )
  if (i>0) myarray[i] < myarray[i-1];
  }   
    
endclass



module mem;
  array_abc myarry;

  initial begin
    
    myarry = new();
    
    myarry.randomize();
     $display("Randomized array: %p", myarry.myarray);

    
  end
  
endmodule
