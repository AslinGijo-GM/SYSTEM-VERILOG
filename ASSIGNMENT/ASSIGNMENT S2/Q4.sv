module gijo;
  
class BaseDriver;
  virtual function void drive(input bit [7:0] data);
    $display("Driving data: %h", data);
  endfunction
endclass

class CustomDriver extends BaseDriver;
  function void drive(input bit [7:0] data);
    $display("Custom Driving data: %h", data);
    super.drive(data); // Call base class method
  endfunction
endclass

initial begin
  CustomDriver drv = new();
  drv.drive(8'hA5);
end

endmodule
/*
# KERNEL: Custom Driving data: a5
# KERNEL: Driving data: a5
*/
