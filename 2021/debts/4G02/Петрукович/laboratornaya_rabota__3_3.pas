begin
var e, k, t, r: real;
k := 100;
r := 8.314;
t := 700;
while t <= 750 do
begin
if t <= 720
then e := 60
else
if (t > 720) and (t <= 730)
then e := 59
else
e := 57;
k := k + exp(-e / (r * t));
println(k);
t := t + 5;
end
end.