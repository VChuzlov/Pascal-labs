begin
var B: Array of Integer := ArrRandom(7, -3, 10);
var a:= 7.7;
var x: Array of Real := (0,0,0,0,0,0,0);
var c:= 9.5;
B.Println;
if B.Max()>c then
begin
for var i:=0 to B.High do
X[i]:=B[i]/a;
end
else
begin
var S:=0;
for var i := 0 to B.High do
X[i] := B[i];
for var i:= 0 to B.High do 
if B[i]>=0 then
S+=B[i];
for var i:= 0 to B.High do
X[i]*=S;
end;
X.Print;
end.