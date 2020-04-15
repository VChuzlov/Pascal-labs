Program lb07;
var
  k: real;

function lg(x: real): real;
begin
  lg:= ln(x) / ln(10)
end;

function f(x, n: real): real;
begin
  f:= exp(n * ln(x))
end;

begin
  readln(x);
  readln(a);
  k:= lg(a * f(x, 2.5) / (3 + x)) + 2e3 * f(1 + 2 * x, 1 - sqrt(a));
  writeln(k:8:4)
end.