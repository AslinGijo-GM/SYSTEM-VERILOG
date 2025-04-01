module edveon_code_question1;
  
  longint n = 64'd7550037717 ;
  int arr[10];
  longint temp = n;
  int i;
  int temp4change;
  
  initial begin
    
    for(i=0; i < 10 ; i++ ) begin
      
      arr[i] =  temp % 10;
      temp = temp / 10 ;
  
    end
    
    $display("NUMBERS IN ARRAY = %p",arr);
    
    
    foreach(arr[i]) begin
      
      foreach(arr[j]) begin
        
        if( (i !=j) & (arr[i] == arr[j]) ) 
        	
          arr[i] = 0;
        
      end      
      
    end
    
    $display(" REMOVED DULPICATE NUMBERS = %p " , arr);
    
  	
    foreach(arr[i])begin
      
      foreach(arr[j])begin
        
        if(arr[i] > arr[j]) begin
          
          temp4change = arr[i];
          arr[i] = arr[j];
          arr[j] = temp4change;
          
        end
        
      end
      
    end
     
    $display("NUMBERS IN ASC ORDER = %p",arr);
    
    $display("GREATEST NUMBER = %0d",arr[0]);
    $display("SECOND GREATEST NUMBER = %0d",arr[1]);
    $display("THIRD GREATEST NUMBER = %0d",arr[2]);
    $display("FOURTH GREATEST NUMBER = %0d",arr[3]);
    
    
    
  end  
  
endmodule
