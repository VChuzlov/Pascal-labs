function f(x, y: real): real;
begin
result := -(2 * y + 1) * cos(x) / sin(x)
end;

function eiler(f: function(x, y: real): real; x0, xf, y0, h: real): array of real;
begin
var count := trunc((xf - x0) / h) + 1;
result := arrfill(count, 0.0);
result[0] := y0;
var x := x0;
for var i := 1 to count - 1 do
begin
result[i] := result[i - 1] + h * f(x, result[i - 1]);
x += h
end;
end;

begin
var y := eiler(f, 1, 2, 3.0307, 0.1);
y.PrintLines
end.
