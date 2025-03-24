class mem;
  
  rand bit [31:0]addr;
  constraint c{ addr inside { [0:20],[4020:4075] }; }
  
endclass

mem mem1;

module question1;
 initial 
  repeat(15) begin
  	mem1 = new();
  	mem1.randomize();
  	$display("%d",mem1.addr);
  end
    
endmodule
