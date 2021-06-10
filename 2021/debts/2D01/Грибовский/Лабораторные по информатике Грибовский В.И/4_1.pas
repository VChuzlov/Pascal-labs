begin
var a: array of integer := ArrRandom(10, 0, 10);
var min := a[0];
var max := a[0];
var i : integer;
var k:= 1;
for i := 0 to a.High do
begin
if a[min] > a[i] then min := i;
if a[max] < a[i] then max := i;
if a[i]>1 then k*=a[i];
end;
min.Println;
max.Println;
a.Sum.Println;
k.Println;
a.Print;
end.