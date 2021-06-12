function f(x: real): real;
begin
  result := (x ** 6 * (x - 5) ** 3) / (2 * x + 1) ** 5
end;

begin
  var x := readInteger;
  f(x).println;
end.