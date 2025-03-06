`timescale 1ns / 1ps

module sv;

    union {
        int a;
        byte b;
    }mem1,mem2;
   
   typedef union{
        int a;
        byte b;
   }box; 
   
   box box1;
   box box2;
   initial begin
        mem1.a =32'b10001;
        $display(" mem = %0d",mem1.a);
        
        box1.a = 32'hfff;
        box2.a = 32'haed;
        $display(" box = %0h",box1.a);
        $display(" box = %0h",box2.a);
   end
    
endmodule
