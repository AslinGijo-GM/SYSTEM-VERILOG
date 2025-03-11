module s2;
  
  typedef struct{
  	int a;
    int b;  
  }mem;
  
  mem box[6];
  
  initial begin
    box[0] = '{ 2, 4};
    box[1] = '{ 4, 4};
    box[2] = '{ 7, 9};
    box[3] = '{ 5, 4};
    box[4] = '{ 4, 4};
    box[5] = '{ 2, 2};
    
    foreach(box[i]) 
      $display("box[i] : a = %0d , b = %0d",box[i].a,box[i].b);
    
  end
  
endmodule
