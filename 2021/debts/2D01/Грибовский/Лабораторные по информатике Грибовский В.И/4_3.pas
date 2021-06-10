begin
var B:= Arr(2, 5, -6, 8, -3, 7, 12 , -45, 106, 4);
var O:=0;
var P:=0;
var K : real;
var i : integer;
for i:= 0 to B.High do
begin
if B[i]<0 then O+=1
else 
P+=1;
end;
K:= (O+P)/O;
K.Println;
end.
