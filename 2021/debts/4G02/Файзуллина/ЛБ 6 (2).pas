function get_y(x: real): real;
begin
 if x < -2 then
  Result := 1
 else if x >= 2 then
  Result := sqr(x) + 4 * x + 5
 else
  Result := sqr(x)
end;
begin
 var (x, h, xk) := (-3, 1, 3);
 var y: real;
 for var i := 1 to Trunc((xk- x) / h)+1 do
 begin
  y := get_y(x);
  Writeln(x:3, y:5);
  x += h
 end;
end.
