module constraint_disable;
  
  class con;
    
    rand int x;
    rand int y;
    
    constraint c{ 	x inside {[5:20]};
                    y inside {[24:40]} ;
                }
    
  endclass
  
  con mem = new();
  
  initial begin
    
    mem.x.rand_mode(0);
    mem.x = 10;
    mem.randomize();
    
    $display( " x = %d , y = %d ", mem.x, mem.y );
    mem.x.rand_mode(1);
    
    mem.constraint_mode(0);
    mem.randomize();
    $display( " x = %d , y = %d ", mem.x, mem.y );
    
  end
  
endmodule
