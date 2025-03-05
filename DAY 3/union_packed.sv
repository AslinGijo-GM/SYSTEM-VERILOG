module union_struct;
  
  union packed {
  	
    bit [27:0]in;
    
    struct packed {
    	
      bit [7:0]a;
      bit [7:0]b;
      bit [7:0]c;
      bit [3:0]d   ; 
    } box;
  
  } mem;
  	
  initial begin
    	
    mem.box.a = 8'hff;
    mem.box.b = 8'hee;
    mem.box.c = 8'haa;   
    mem.box.d = 4'b0000;
    
    $display( " mem     = %h " , mem.in     );
    $display( " mem.box = %h " , mem.box );
    
     $display("mem.in   = %b", mem.in);
    $display("mem.box.a = %h", mem.box.a);
    $display("mem.box.b = %h", mem.box.b);
    $display("mem.box.c = %h", mem.box.c);
    $display("mem.box.d = %b", mem.box.d);
  end
  
  endmodule
