module data_type;
  bit a;
  logic [4]b;
  int c;
  real d;
  byte e;
  shortint f;
  longint g;
  
  initial begin
    $display("bit      %b",a);
    $display("logic    %b",b);
    $display("int      %d",c);
    $display("real     %f",d);
    $display("byte     %d",e);
    $display("shortint %d",f);
    $display("longint  %d",g);
    
    a =  1                  ;
    b =  4'b11              ;
    c = -123                ;
    d = 3.14                ;
    e = 8'b10001            ;
    f = -3222               ;
    g = 64'hFFFFFFFFFFFFFFFF;
    
    $display("bit      %b",a);
    $display("logic    %b",b);
    $display("int      %d",c);
    $display("real     %f",d);
    $display("byte     %d",e);
    $display("shortint %d",f);
    $display("longint  %h",g);
  end
  
endmodule 
