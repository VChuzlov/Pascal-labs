function EquivalentFunc(x: real): real;
begin
 result := exp(- 0.1 * x)/2
end;
function Iterations(f: function(x: real): real; a, eps: real): real;
begin
 var x: real;
 result := f(a);
 repeat
  x := f(result);
  result := f(x);
 until abs(result - x) < eps
end;
begin
Iterations(EquivalentFunc, 0.2, 0.5 * 1e-4).Print
end.