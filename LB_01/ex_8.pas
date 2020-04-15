program lb1_ex_8;
var
  x, y: real;
begin
  x := 2;
  y := x / (sin(x) + 1) / ((exp(sqr(x)) + ln(x)) / sqrt(sqr(x) + 3.7e-5 * x));
  writeln(y:8:6); 
end.