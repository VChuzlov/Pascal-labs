program lb_7_ex_2;
var
  x, y, a, z: real;
  i: integer;

function pow(x: real; n: real): real;
begin
  result := exp(ln(x) * n)
end;

function f(a: real): real;
begin
  if a < 5 then
    result := 1 / a
  else
    if a > 35 then
      result := pow(25, 1 / sqrt(a))
    else
      result := 1 + 2 * pow(a, -3)
end;

procedure get_z(a: real; var z: real);
begin
  z := sqr(f(a)) / sin(a) + 1 / a
end;

begin
  for i := 1 to 10 do
    begin
      a := sqr(i) + cos(-i + pow(2 * i + 3, 1 / 3));
      get_z(a, z);
      writeln(i:4, a:10:4, z:10:4)
    end;
end.