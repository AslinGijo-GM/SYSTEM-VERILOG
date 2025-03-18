module dyncase;
  
  class parent;
    
    function void display();
      $display(" I am parent ");
    endfunction
    
  endclass
  
  class child extends parent;
    
    function void display();
      $display(" I am child ");
    endfunction
    
    function void childfun();
      $display(" I am childfun ");
    endfunction
    
  endclass
  
  parent p;
  child c;
  parent p1;
  
  initial begin
    
    p = new();
    p1 = new();
    p1 = c;
    
    $display(" $CAST - %d",$cast(c,p1));
    if($cast(c,p1))
      c.childfun();
    else
      $display("IDK");
    
  end
  
endmodule
