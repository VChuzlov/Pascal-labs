var a : array of real := (2.1, 3.2, 4.8, 5.7);
var c : array of real := (2, 4, 6, 8);
var part1 : real := 0;
var part2 : real := 1;
const b = 18;
const bFin = b**(1/2);
begin
for var i := 0 to a.High do
begin
  part1 += (a[i] + bFin);
  part2 *= Sin(c[i]);
end;
var y := part1 + part2;
y.Print();
end.