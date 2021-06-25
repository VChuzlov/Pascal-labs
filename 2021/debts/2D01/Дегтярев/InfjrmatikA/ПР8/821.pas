function EquivalentFunc(x: real): real;
begin
  result := (20 - 3 * x) ** (1/4)
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
  Iterations(EquivalentFunc, 1, 1e-2).Print
end.