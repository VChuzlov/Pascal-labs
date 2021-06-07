function y(x: real): real;
begin
  result := (x ** 6 * (x - 5) ** 3) / (2 * x + 1) ** 5;
end;

begin
  var x: real;
  x := 10;
  println(y(x));
end.
