function fun(x:real):real;
begin
if x<-2 then
result:= 1
else 
if x >-2 then
Result := x**2 + 4 * x + 5
else
Result := x**2
end;
begin
var (x,h,xk) := (-3.0 , 1.0 , 3.0);
var y: real;
for var i:=1 to Trunc ((xk-x)/h) + 1 do
begin
y:= fun(x);
Writeln (x:4:1,y:7:2);
x+=h
end;
end.