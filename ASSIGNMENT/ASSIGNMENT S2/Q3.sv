class BaseClass; 
  bit [7:0] id; 
  function void display(); 
    $display("Base Class ID: %0d", id); 
  endfunction 
endclass 

class DerivedClass extends BaseClass; 
  function void display(); 
    super.display(); 
      $display("Derived Class"); 
  endfunction 
endclass

module gijo;
  initial begin 
    DerivedClass obj = new; 
    obj.id = 42; 
    obj.display(); 
  end 
endmodule 


//  OUTPUT
// # KERNEL: Base Class ID: 42
// # KERNEL: Derived Class
