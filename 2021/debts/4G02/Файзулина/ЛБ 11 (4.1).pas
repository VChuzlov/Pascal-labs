﻿function f(x, y: real): real;
begin
 result := (y - 3) / (3 * sqr(x) + x)
end;
function Eiler(f: function(x, y: real): real;x0, xf, y0, h: real): array of real;
begin
 var count := Trunc((xf - x0) / h)+1;
 result := ArrFill(count, 0.0);
 result[0] := y0;
 var x := x0;
 for var i := 1 to count-1 do
 begin
  result[i] := result[i-1] + h * f(x, result[i-1]);
  x += h
 end;
end;
begin
 var y := Eiler(f, 2, 3, 4, 0.2);
 y.PrintLines
end.
