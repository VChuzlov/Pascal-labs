function interpolate(x, y: array of real; x_: real): real;
begin
var product := 1.0;
result := 0.0;
for var i := 0 to x.High do
begin
for var j := 0 to x.High do
if j <> i then
product *= (x_ - x[j]) / (x[i] - x[j]);
result += y[i] * product;
product := 1.0
end
end;
begin
  
var r:=100;
var z:=50;
var l:=0;
for var i:=1 to 11 do
begin
  
r+=z;
var x: array of real = (100,200,300,400,500,600);
var y: array of real = (6.95,7.05,7.17,7.25,7.46,7.69);
var y_ := interpolate(x, y, r);
println($'При х = {r} y = {y_}')

end;
end.