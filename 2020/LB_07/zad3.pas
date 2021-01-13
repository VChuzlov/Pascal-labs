program lab07_zad3;
var
  x, y: real;

function p(x, n:real): real;
begin
  p:= exp(n * ln(x))
end;

function ctg(x: real): real;
begin
  ctg:= cos(x) / sin(x)
end;

procedure pro (x: real; var y: real);
var
  z, a: real;
begin
  z:= 2 * p(x, 3 / 2) + ctg(x + 2);
  a:= 3 * p(x, 7 / 9) + ctg(x + 3);
  y:= (ctg(x) - ctg(z)) / (ctg(a) + ctg(x)) - ctg(z)
end;

begin
  pro (2, y);
  writeln(y)
end.