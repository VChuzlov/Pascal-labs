function ip(x, y: array of real; x_: real): real;
begin
var prod := 1.0;
result := 0.0;

for var i := 0 to x.High do
begin
for var k := 0 to x.High do
if k <> i then
prod *= (x_ - x[k]) / (x[i] - x[k]);
result += y[i] * prod;
prod := 1.0
end;
end;

begin
var x: array of real = (100, 200, 300, 400, 500, 600);
var y: array of real = (6.95, 7.05, 7.17, 7.25, 7.46, 7.69);
var h := 50;
var x_ := x[0];

for var i := 0 to Trunc((x[^1] - x[0]) / h) do
begin
var y_ := ip(x, y, x_);
writeln(y_:2:2);
x_ += h
end;
end.
