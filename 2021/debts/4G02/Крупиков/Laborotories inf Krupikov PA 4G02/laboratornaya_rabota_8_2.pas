function equation(x:real):real;
begin
result := e ** x + x - 2
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
Half (equation,0,1,0.001).Print
end.