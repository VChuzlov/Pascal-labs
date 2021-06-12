function eqF(x: real): real;
begin
  result := exp(-0.1 * x) / 2
end;

function iterations(f: function(x: real): real; a, eps: real): real;
begin
  var x: real;
  result := f(a);
  repeat
    x := f(result);
    result := f(x)
  until abs(result - x) < eps
end;


begin
  iterations(eqF, 0.2, 0.5e-4).Print
end.