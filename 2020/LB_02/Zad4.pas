Program Zad4;
const
  k = 9.86;
  y = 1.3;
  c = 28.96;
  a = 26;
var
  x: real;
function f1(x: real): real;
begin
  f1:= x + x / (x - y / (25 - k)) * tan(k) / sqr(k + x) + sqr(y) / sqrt(k)
end;

function f2 (x: real): real;
begin
  f2:= 1/x*ln(1 + 2 * y) + c / (4 - exp(ln(3 * y + 5 * x) / 6))
end;

function f3 (x: real): real;
begin
  f3:= sqr(x) * x / y + a * exp((2 - y * x) * ln(x)) - sqr(cos(x)) + exp(ln(x * y) / 3) / (34 - a)
end;

begin
  x:= -5;
  repeat
    write(x, '  ');
    if ((x >= -5) and (x < 0)) or ((x > 0) and (x <= 3)) then
      writeln(f1(x):8:4{, f2(x):8:4, f3(x):8:4})
    else
      if x = 0 then
        writeln(f3(x):8:4)
      else
        writeln(f2(x):8:4);
    x:= x + 1;
  until x > 5
end.