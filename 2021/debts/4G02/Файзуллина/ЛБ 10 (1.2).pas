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
 var x: array of real = (0.71, 0.81, 0.91, 1.01, 1.11, 1.21, 1.31, 1.41, 1.51, 1.61);
 var y: array of real = (2.03, 2.25, 2.48, 2.75, 3.03, 3.35, 3.71, 4.10, 4.53, 5.00);
 
 var y_ := interpolate(x, y, 1.27);
 println($'При х = 1.27 y = {y_}')
end.