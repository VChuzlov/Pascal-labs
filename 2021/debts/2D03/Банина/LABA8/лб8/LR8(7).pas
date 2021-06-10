function EquivalentFunc(x: real):real;
begin
  result := ln(x) + x
end;

function Iterations(f:function(x: real): real; a, eps: real): real;
begin
  var x: real;
  result := f(a);
  
  repeat
    x := f(result);
    result := f(x);
  until abs(result - x) < eps
end;

begin
  Iterations(EquivalentFunc,0.5, 0.2*1e-4).Print
end.