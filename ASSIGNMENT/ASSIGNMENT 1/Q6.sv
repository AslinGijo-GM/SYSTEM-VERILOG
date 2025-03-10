module dyn;
  
  int d[];
  int d1[];
  
  initial begin
   
    
    d = '{ 9,1,8,3,4,4 };
    
    d1 = new[6];
    
    foreach(d1[i]) begin
      d1[i] = i ;
    end
    
    $display( "d1 = %p , size = %0d",d1,d1.size() );
    
    d1.delete();
    
    d.reverse();
    $display( "d = %p",d );
    
    d.sort();
    $display( "d = %p",d );
    
    d.rsort();
    $display( "d = %p",d );
    
    d.shuffle();
    $display( "d = %p",d );
    
  end
  
endmodule
