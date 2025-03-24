class Packet;
rand bit[31:0] addr;
  constraint c_addr { addr inside {[0:100]};}
endclass

module mem;
Packet p = new();
  
  initial begin
  	p.c_addr.constraint_mode(0);
    p.randomize() with { addr > 200 ;};
    $display("%d",p.addr);
  end
endmodule
