Program zad5;
var
  P, f1, f2, t: real;
begin
  t:= 5;
  repeat
    f2:= 1250 / (sqrt(sqr(t + 273) + 1.08e3) - 307.6) - 1;
    if t <= 11.4 then
      f1:= sqrt(sqr(68.74 + 273) + 1.08e3) - 307.6 - 1
    else
      if (t > 11.4) and (t <= 37.8) then
        f1:= sqrt(sqr(124.7 + 273) + 1.08e3) - 307.6 - 1
      else
        f1:= sqrt(sqr(134.7 + 273) + 1.08e3) - 307.6 - 1;
    P:= exp(2.3 * (2.68 * (1 - f2 / f1) - 1));
    writeln(t:3, f2:12:4, f1:12:4, '    ',P);
    t:= t + 5
  until t > 50
end.