begin
 var x, a, b, z: real;
 a := 2.1;
 x:=10.2;
 while x <= 12.6 do
 begin
  b := x+cos(x);
  z := sin(x/a)+abs(a-b)/(b*b);
  println(z);
  x:=x+0.4;
 end
end. 