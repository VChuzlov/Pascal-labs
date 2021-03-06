﻿function f(x: real): real;
begin
  result := exp(1 / x) / x ** 2
end;

function Simpson(f: function(x: real): real; x: array of real; n: integer): real;
begin
  var h := (x[1] - x[0]) / n;
  var (s1, s2) := (0.0, 0.0);
  
  for var i := 1 to n-1 do
    if i mod 2 = 0 then
      s1 += f(x[0] + i * h)
    else
      s2 += f(x[0] + i * h);

result := h / 3 * (f(x[0]) + 2 * s1 + 4 * s2 + f(x[1]))
end;

begin
  var x := Arr(1.0, 2.0);
  var int := Simpson(f, x, 10);
  int.Println
end.