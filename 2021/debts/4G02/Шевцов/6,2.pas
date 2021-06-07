function f(x: real): real;
begin
  if x >= 2
    then result := x * x + 4 * x + 5
  else
  if x < -2
    then result := 1
  else
    result := x * x;
end;

begin
  var x: real;
  var i: integer;
  x := -3;
  for i := -3 to 3 do
  begin
    println(f(x));
    x := x + 1;
  end;
end.