function f(x, y: real): real;
begin
result := -1*(2 * y + 1) * (cos(x) / sin(x))
end;

function RK(f: function(x, y: real): real;
x0, xf, y0, h: real): array of real;
begin
var count := Trunc((xf - x0) / h)+1;
var (k1, k2, k3, k4) := (0.0, 0.0, 0.0, 0.0);
result := ArrFill(count, 0.0);
result[0] := y0;
var x := x0;
for var i := 1 to count-1 do
begin
k1 := f(x, result[i-1]);
k2 := f(x + h / 2, result[i-1] + h / 2 * k1);
k3 := f(x + h / 2, result[i-1] + h / 2 * k2);
k4 := f(x + h, result[i-1] + h * k3);
result[i] := result[i-1] + h / 6 * (k1 + 2 * k2 + 2 * k3 + k4);
x += h
end;
end;

function analiz(x: real): real;
begin
result := 5 / (2 * (sin(x)) ** 2) - 1 / 2
end;

begin
var y := RK(f, 1, 2, 3.0307, 0.1);
y.PrintLines;
Println;
var x := 1.0;
for var i := 0 to y.High do
begin
  Println(abs(y[i] - analiz(x)) / analiz(x) * 100);
  x += 0.1
  end;
end.
