begin 
  var p := MatrRandom(3,3,1,10);
  var sum1 := 0;
  var sum3 := 0;
  var sum := 0;
  p.println;
  
    for var j := 0 to 2 do
    sum1 += p[0,j];

    for var j := 0 to 2 do
    sum3 += p[2,j];
   
  sum1.println;
  sum3.println;
  sum := sum1 + sum3;
  sum.println;
end.