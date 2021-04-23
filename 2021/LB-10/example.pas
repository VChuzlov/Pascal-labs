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
  var x: array of real = (300, 400, 500, 600);
  var y: array of real = (52.89, 65.61, 78.07, 99.24);
  
  var y_ := interpolate(x, y, 450);
  println($'При х = 450 y = {y_}')
end.