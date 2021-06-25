function EquivalentFunc(x: real): real;
begin
  result := ln(2 - x)
end;

function Iterations(f: function(x:real): real; a, eps: real): real;
begin
  var x:real;
  result := f(a);
  
  repeat
    x := f(result);
    result := f(x);
  until abs(result - x) < eps
end;

Begin
  Iterations(EquivalentFunc, 0, 1e-3).Print
end.