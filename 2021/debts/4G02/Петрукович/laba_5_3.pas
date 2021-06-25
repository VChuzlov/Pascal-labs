begin
var a := matrrandom(4, 4, -3, 6);
var sum, arsum: real;
var j, i, k: integer;
k := 0;
sum := 0;
a.Println;
for j := 0 to 3 do
begin
k:= 0;
sum := 0;
for i := 0 to 3 do
begin
if a[i, j] >= 0
then
begin
k := k + 1;
sum := sum + a[i, j];
end;
end;
arsum:=sum/k;
println(arsum);
end;

end.
