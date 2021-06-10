function f(x: real): real;
begin
  if x < -2 then 
    result := 1
  else
  if x >= 2 then
    result := x.Sqr + 4 * x + 5
  else
     result := x.Sqr
end;

begin
  var (x, h, xk) := (-3, 1, 3);
  for var i := 1 to Trunc((xk - x) / h + 1) do
  begin
    Println(x, f(x));
    x += h
  end;
end.