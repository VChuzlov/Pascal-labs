function EquivalentFunc(x: real):real;
begin
  result := exp(x) + x - 2
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
  Iterations(EquivalentFunc,0,1e-3).Print
end.