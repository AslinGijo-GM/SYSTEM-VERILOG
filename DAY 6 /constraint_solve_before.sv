module constraint_solve;
  
  class con;
    
    rand int x;
    rand int y;
    constraint c1 { solve x before y ;}
    constraint c2 { x inside {[1:45]};
                   
                   	if (x inside {[23:33]})
                      y == 10;
                    else
                      y inside { [12:89]};
                  }   
    
  endclass
  
  con mem = new();
  
  initial begin
    
    repeat(10) begin
      
    mem.randomize();
      $display("x=%0d y=%0d",mem.x,mem.y );
      
    end
    
  end
  
endmodule
