program lab07_zad4;
var
  i: integer;
  a, z: real;
function p(x, n: real): real;
begin
  p:= exp(n * ln(x))
end;
function f(a: real): real;
begin
  if a < 5 then
    f:= 1 / a
  else
    if (a > 5) and (a < 35) then
      f:= 1 + 2 * p(a, -3)
    else
      f:= p(25, 1 / sqrt(a))
end;
procedure pro (a, f:real; var z:real);
begin
  z:= sqr(f) / sin(a) + 1 / a
end;

begin
  for i:= 1 to 10 do
    begin
      a:= sqr(i) + cos(-i + p(2 * i + 3, 1 / 3));
      pro(a, f(a), z);
      writeln(a:8:4, f(a):8:4, z:8:4);
    end;
end. 