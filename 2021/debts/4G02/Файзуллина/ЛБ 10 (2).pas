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
 var x: array of real = (100, 200, 300, 400, 500, 600);
 var y: array of real = (6.95, 7.05, 7.17, 7.25, 7.46, 7.69);
 begin
  var (j, h, jk) := (100, 50, 600);
  for var i := 1 to Trunc((jk- j) / h)+1 do
  begin
   var y_ := interpolate(x, y, j);
   writeln(j: 7, y_ :25);
   j += h
  end;
 end;
end.