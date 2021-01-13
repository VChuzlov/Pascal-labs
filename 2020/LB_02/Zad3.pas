Program Zad3;
const
  a = 2;
var
  x, y: real;
begin
  readln(x);
  if x < 0 then
    y := sqr(x) - a
  else
    if x >= a then 
      y:= ln(abs(x / a))
    else
      y:= 4 * x + sqrt(x);
  writeln(y)
end.