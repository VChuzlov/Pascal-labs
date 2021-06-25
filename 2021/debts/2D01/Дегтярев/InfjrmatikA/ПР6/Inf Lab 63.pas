function fz(x:real):real;
begin
 result := 2 * x ** (1.5) + 1/tan(x + 2)
end;

function fa(x:real):real;
begin
 result := 3 * x ** (7/9) + 1/tan(x + 3) 
end;

function fy(x,a,z:real):real;
begin
 result := (1/tan(x) - 1/tan(z)) / (1/tan(a) + 1/tan(x)) - 1/tan(z)
end;


begin 
  var x := 2.0;
  var a,z :real;
  
  z := fz(x);
  a := fa(x);
  fy(x,a,z).Print;
end.