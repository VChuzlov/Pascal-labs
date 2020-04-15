program lab_09_example;
const
  eps = 1e-4;

function f(x: real): real;
begin
  result := exp(x) - 6 * x - 3
end;

function dihotomy(a, b: real; eps: real): real;
var
  x: real;
begin
  repeat
    x := (a + b) / 2;
    if f(a) * f(x) > 0 then
      a := x
    else
      b := x
  until (abs(a - b) <= eps) or (f(x) = 0);
  result := x
end;

begin
  writeln(dihotomy(-3, 1, eps))
end.