
class world_cup19; 
	bit[15:0]premium_ticket; 
	function league_match(); 
		$display("premium ticket rate is %0d",premium_ticket); 
	
	endfunction 
 
endclass 

class world_cup23 extends world_cup19; 
  bit[15:0]golden_ticket; 
	function semifinal(); 
		$display("golden ticket rate is %0d",golden_ticket); 
	endfunction 
endclass 
      
module tb; 
	initial begin 
		world_cup23 wc=new(); 
		wc.premium_ticket=10000; 
		wc.golden_ticket=5000; 
		wc.league_match(); 
		wc.semifinal(); 
	end 
endmodule 

/*
 KERNEL: premium ticket rate is 10000
 KERNEL: golden ticket rate is 5000 
*/
