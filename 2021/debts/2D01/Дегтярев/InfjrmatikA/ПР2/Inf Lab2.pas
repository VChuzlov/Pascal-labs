const 
 a=26; 
 c=28.96;
 y=1.3;
 k=9.86;
begin
  var x,f:real;
  write('x='); readln(x);
   If x = 0 then f := x ** 3 /y + a * (x ** (2 - y * x)) - cos(x) ** 2 + (x *y) ** (1/3) / (34-a)
   else
    if (x > 5) then f := 0
    else 
      if (x > 3) and (x <= 5) then f := 1 / x * log(1 + 2 *y) + c / (4 - (3 *y + 5 *x) ** (1/6))
      else f := x + x / (x - y / (25 - k)) * tan(k) / (k + x) ** 2 + y ** 2 / sqrt(k);
  write('f=',f);
end.