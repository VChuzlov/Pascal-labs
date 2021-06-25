const 
 b=18;
begin 
  var a := Arr(2.1,3.2,4.8,5.7); 
  var c := Arr(2,4,6,8);
  var sum,pr,y :real;
  sum := 0;
  pr := 1;
  a.println;
  c.println;
  
  for var i := 0 to a.High do
    begin
    
      sum += a[i] + sqrt(b);
    
      pr *= sin(c[i]);
     
    end;
    
  y := sum + pr;
  writeln(y);
end.