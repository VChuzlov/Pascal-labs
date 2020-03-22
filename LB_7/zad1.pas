program lb07_zad1;
var
  x, y: real;

function p(x, n:real): real;
begin
  p:= exp(n * ln(x))
end;

procedure pr(x:real; var y: real);
begin
  y:= p(x, 6) * p(x - 5, 3) / p(2 * x + 1, 5)
end;

begin
  pr(10, y);
  writeln('y = ', y:8:4)
end.