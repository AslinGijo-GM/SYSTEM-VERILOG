module dyn;
  
  int box1[];
  int box2[];
  
  initial begin
    
    box1=new[4];
    box2=new[4];
    
    box1[0] = 12;
    box1[1] = 56;
    box1[2] = 25;
    box1[3] = 08;
    
    $display( "box1 - %0p",box1 );
    
    box2=box1;
    
    $display( "box2 - %0d",box2[2] );
    
    box2= ' { 32,41 };
    
    $display( "box2 [2] %0d  | [0] %0d",box2[2],box2[0] );
    
    
  end
  
endmodule
