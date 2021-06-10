begin
var a:= Arr(2.1, 3.2, 4.8, 5.7);
var c:= Arr(2, 4, 6, 8);
var b:= 18;
var i : integer;
var S : real := 1;
for i := 0 to c.High do
begin
S *= Sin(c[i]);
end;
for i := 0 to a.High do
begin
S += a.Sum+sqrt(b);
end;
S.Println;
a.Println;
c.Println;
end.
 
