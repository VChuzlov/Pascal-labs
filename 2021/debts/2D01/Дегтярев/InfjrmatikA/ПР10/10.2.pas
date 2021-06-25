function interpolate(x,y: array of real; a: real): real;
begin
  var product := 1.0;
  result := 0.0;
  
  for var i := 0 to x.High do
  begin
    
    for var j := 0 to x.High do
      if j <> i then
        product *= (a - x[j]) / (x[i] - x[j]);
      
      result += y[i] * product;
      product := 1.0

  end;
  
end;

begin
  var x: array of real = (100, 200, 300, 400, 500, 600);
  var y: array of real = (6.95, 7.05, 7.17, 7.25, 7.46, 7.69);  

  Writeln(x);
  Writeln(y);
  
  for var i := 0 to 10 do
    Writeln('При T =',' ',100 + i * 50,' ', 'значение C =',' ',interpolate(x, y, 100 + i * 50));
  
end. 