//Declare 2 array (or queue) elements each of size 10, randomize in such a way that 2nd array values are 1st array value added with 5 for each element.

class randclass;
  
  rand int dyn1[10];
  rand int dyn2[10];
  
  constraint dyn1n2_con{ 
    foreach(dyn1[i])
      dyn1[i] inside {[1:100]} ;
    foreach(dyn2[i])
      dyn2[i] inside {dyn1[i]+5};

  }
  
  
endclass

module memm;
  
  randclass con;
  
  initial begin
    
    con = new();
    con.randomize();
    $display("dyn1 = %p",con.dyn1);
    $display("dyn2 = %p",con.dyn2);
    
  end
  
endmodule
