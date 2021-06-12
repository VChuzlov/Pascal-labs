begin
var a:= matrrandom (4, 4, 1, 100);
var b: array [0..3] of integer;
var min, j, i: integer;
for i := 0 to 3 do
begin
b[i]:=a[i, 0];
for j :=0 to 3 do
begin
if a[i, j]>b[i]
then
b[i]:=a[i, j]
end;
end;
min:=b[0];
for i:=0 to 3 do
if b[i]<min
then
min:=b[i];
a.Println;
b.println;
min.println;
end.
