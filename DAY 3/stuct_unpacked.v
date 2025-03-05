module stuct_un;
  	
  struct {
  	int a;
    byte b;
    string name;
    
  } box ;
  
  initial begin
    	
   // box.a = 12'hfff;
   // box.b = 8'b1001_0001;
   // box.name = "unpacked";
    
    box = {32'hfff,8'b1001_0001,"unpacked"};
    
    $display(" a = %h " ,box.a);
    $display(" b = %h " ,box.b);
    $display(" name = %s " ,box.name);
    $display(" a = %p " ,box);
    	
  end  
  
endmodule
