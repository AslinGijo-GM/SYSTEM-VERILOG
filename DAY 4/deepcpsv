module decpy;

    class mem;
    int a;    
        function mem copy();
            mem temp = new();
            temp.a = this.a;
            return temp;
        endfunction
    endclass
    
    mem mem1;
    mem mem2;
    
    initial begin
    
    mem1 = new();    
    mem1.a = 32'd67;
    $display("mem1 = %d", mem1.a);
   // $display("mem2 = %d", mem2.a);
    
    mem2 = mem1.copy();
    
    $display("mem1 = %d", mem1.a);
    $display("mem2 = %d", mem2.a);
    
    mem1.a = 32'd10;
    
    $display("mem1 = %d", mem1.a);
    $display("mem2 = %d", mem2.a);
    
    mem2.a = 32'd90;
    
    $display("mem1 = %d", mem1.a);
    $display("mem2 = %d", mem2.a);
    
    end
endmodule
