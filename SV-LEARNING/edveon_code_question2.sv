module edveon_code_question2;
  
  int arr[];
  int checkerr[] = '{"car"};
  int count = 0;

  initial begin
    
    arr = '{"The","car","is","in","the","car","race","the","car","wont","the","race","and","get","a","car","as","a","gift"};
    
    for(int i = 0 ; i < arr.size() ; i++) begin
      
      if(arr[i] == checkerr[0]) 
         count = count + 1;
      
    end
    
    $display("There are %0d cars in the sentence",count);
    
  end  
  
endmodule
