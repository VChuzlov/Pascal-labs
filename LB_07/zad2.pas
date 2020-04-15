program lab07_zad2;
var
  y, x: real;
function f(x: real): real;
begin
  if (x >= -2) and (x < 2) then
    f:= sqr(x)
  else
    if x >= 2 then
      f:= sqr(x) + 4 * x + 5
    else
      f:= 1;
end;

procedure p(x: real; var y: real);
begin
  if (x >= -2) and (x < 2) then
    y:= sqr(x)
  else
    if x >= 2 then
      y:= sqr(x) + 4 * x + 5
    else
      y:= 1;  
end;

begin
  x:= -3;
  repeat
    //writeln('x= ', x:3, '  ', 'y = ',f(x):2);
    p(x, y);
    writeln('x= ', x:3, '  ', 'y = ', y:2);
    x:= x + 1;
  until x > 3
end.