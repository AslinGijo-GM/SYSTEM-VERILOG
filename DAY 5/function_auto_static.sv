module mem;
  
   function static void addstatic();
    int i ;
    i = i + 1 ;
     $display("static = %0d",i);
    
  endfunction
  
   
  function automatic void addautomatic();
    int i ;
    i = i + 1 ;
    $display(" automatic = %0d",i);
    
  endfunction
  
  initial begin
  addstatic();
  addstatic();
  addstatic();
  addstatic();
  addstatic();
  addautomatic();
  addautomatic();
  addautomatic();
  addautomatic();
  addautomatic();
  end
endmodule
