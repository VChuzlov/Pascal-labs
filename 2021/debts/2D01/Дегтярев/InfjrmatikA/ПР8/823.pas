function EquivalentFunc(x: real): real;
begin
  result := exp(-x)
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
  Iterations(EquivalentFunc, 1.5, 2e-5).Print
end.