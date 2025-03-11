module q10;
  
  string a = "racecar";
  string rev ;
  
  initial begin
    
    foreach(a[i])
      rev = { a[i],rev };
    
    if(a == rev)
      $display("PALINDROME");
    else
      $display("NOT_PALINDROME");
  end  
  
endmodule
