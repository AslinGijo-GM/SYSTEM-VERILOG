module enumm;
  
  typedef enum { pen,pencil,key=4,keychain,lock,locker }box;
  
  box bigbox;
  
  int assignvalue[box];
  
  initial begin
    
    
    bigbox = keychain;
    
    $display( "box = %s  keychain = %d",bigbox.name(),bigbox );
    
  end
  
endmodule
