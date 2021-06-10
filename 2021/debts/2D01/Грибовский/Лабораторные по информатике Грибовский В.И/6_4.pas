function f(i: real): real;
begin
  result := i.sqr + cos(i * (-1) + (2 * i + 3) ** (1 / 3));
end;

function f1(a: real): real;
begin
  if a < 5 then
    result := 1 / a
  else
  if a > 35 then
    result := 25 ** (1 / a.sqrt)
  else
    result := 1 + 2 * a ** (-3)
end;

function f2(f1: real; a: real): real;
begin
  result := sqr(f1) / sin(a) + 1 / a;
end;

begin
  var (i, h, ik) := (1, 1, 10);
  var a := f(i);
  var Z := f2(a, f(a));
  for var r := 1 to Trunc((ik - i) / h + 1) do
  begin
    a := f(i);
    Z := f2(a, f(a));
    Writeln(i, '  ', f(i):0:2, '  ', f1(a):0:2, '  ', f2(f1(a), a):0:2);
    i += h
  end;
end.
