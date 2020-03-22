Program lb07;
var
  x, y: real;

procedure p(x:real; var y: real);
begin
  if x <= 3 then 
    y:= sqr(x) + 1
  else
    y:= sqr(x) + ln(x)
end;

begin
  x:= 1.5;
  repeat
    p(x, y);
    writeln(x:4:1, y:8:2);
    x:= x + 0.5
  until x > 3.5
end.