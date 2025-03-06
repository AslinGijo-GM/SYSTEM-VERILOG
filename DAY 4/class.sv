module classs;
  
  
  typedef struct {
      int a;
    }box;
  
    class mem ;
  	int a;
    int b;
    
    box meme;
    box mmee;
    
    function void display();
      $display ( "mema = %0b",a );
      	
    endfunction
    
    
  
  endclass
  	
  
    
    initial begin
      
      mem m1;
      mem m2;
      
      m1 = new();
      m2 = new();
      
      m1.a = 32'b111111111;
      m1.display();
      
      m2.a = 32'b110001111;
      m2.display();
      
      m1.mmee.a = 32'b10000011111;
      $display(" m1.mmee.a =%0b",m1.mmee.a);
      
      m1.meme.a = 32'b1111110000;
      $display(" m1.meme.a =%0b",m1.meme.a);
      
    end
  
  	
endmodule
