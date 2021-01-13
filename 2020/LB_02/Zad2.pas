Program Zad2;
var
  x, y: real;
begin
  readln(x);
  if x > 3 then
    y := sqr(x)
  else
    if x = 3 then 
      y:= x
    else
      y:= x - 2;
  writeln(y)
end.