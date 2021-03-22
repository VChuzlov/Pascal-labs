function z(x:real):real;
begin
result:= 2*x**(3/2) + 1 / tan(x+2)
end;
function a(x:real): real;
begin
result:= 3*x**(7/9) + 1 /tan(x+3)
end;

function y(x:real):real;
begin
//Result:= ((1/tan(z(x)))/(1/tan(a(x))+1/tan(x))) - 1/tan(z(x))
  result := (1 / tan(x) - 1 / tan(z(x))) / (1 / tan(a(x)) + 1 / tan(x)) - 1 / tan(z(x))
end;

begin
var x:= 2;
y(x).Print
end.