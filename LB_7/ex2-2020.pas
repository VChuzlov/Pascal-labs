program lb_7_ex_2;
var
  x, y: real;

function f(x: real): real;
begin
  if x < -2 then
    result := 1
  else
    if x >= 2 then
      result := sqr(x) + 4 * x + 5
    else
      result := sqr(x)
end;

begin
  x := -3;
  repeat
    writeln(x:4, f(x):4);
    x += 1
  until x > 3  
end.