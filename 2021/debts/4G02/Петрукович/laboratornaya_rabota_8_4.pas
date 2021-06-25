function equation(x:real):real;
begin
result := 2 * x - e ** (-0.1 * x) 
end;

function Half(f: function (x:real):real;
a,b, eps:real):real;
begin 
if f(a) * f(b) > 0 then
begin
Println ('Нет');
exit
end;
result:=(a+b)/2;
while abs(a-b) >= eps do
begin
if f(a) * f(result) > 0 then
a := result
else
b:= result;
result:=(a+b)/2
end;
end;

begin
Half (equation,0.2,1.5,0.0001).Print
end.