Program Zad1;
var
  x, y: real;
begin
  readln(x);
  if x > 3 then
    y := sqr(x + 1)
  else
    y:= 1 / x;
  writeln(y)
end.
  
