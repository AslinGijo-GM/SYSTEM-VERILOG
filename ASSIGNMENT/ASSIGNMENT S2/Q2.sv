module gijo;
  
  class Car;
    
    string color;
    
    function start();
      $display(" color =%s ",color );
    endfunction   
    
  endclass
  
  initial begin
    
  	Car myCar = new();
  
  	myCar.color = "red";
  	myCar.start();
  
  end
endmodule
