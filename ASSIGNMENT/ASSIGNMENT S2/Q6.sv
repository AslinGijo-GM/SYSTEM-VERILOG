class Vehicle; 
	string model_name; 
	function new(string model_name); 
		this.model_name = model_name; 
		$display("Vehicle model: %s", model_name); 

	endfunction 
endclass 



class Car extends Vehicle; 
	string color; 
		function new(string model_name, string color); 
			super.new(model_name); 
			this.color = color; 
			$display("Car color: %s", color); 
		endfunction 
endclass 

module test; 
	initial begin 
		Car c = new("Sedan", "Red"); 
	end 
endmodule 

/*
# KERNEL: Vehicle model: Sedan
# KERNEL: Car color: Red
*/
