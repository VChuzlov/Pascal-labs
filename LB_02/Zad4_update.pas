program lb2;
const
  a = 26;
  c = 28.96;
  y = 1.3;
  k = 9.86;
var
  x, f: real;
begin
  writeln('Введите x: ');
  readln(x);
  if x > 5 then
    f := 0
  else
    if (x <= 5) and (x > 3) then
      f := 1 / x * ln(1 + 2 * y) + c / (4 - exp(ln(3 * y + 5 * x) / 6))
    else
      if x = 0 then
        f := sqr(x) * x / y + a * exp(ln(x) * (2 - y * x)) - sqr(cos(x)) 
          + exp(ln(x * y) / 3) / (34 - a)
      else
        f := x + x / (x - y / (25 - k)) * tan(k) / sqr(k + x) + sqr(y) / sqrt(k);
  writeln('f = ', f);
end.