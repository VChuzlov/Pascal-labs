begin 
  var p : array of array of integer := ((-3 , 10 , 15) , (32 , 12 , -5));
  var x : array of real := (-3.5 , 120.4 , -3.9 , 6.11);
  var minP := p[0,0];
  var maxX := x[0];
  var pol := 0;
  var t :real;
  p.println;
  x.println;
  for var i := 0 to x.High do
    begin
    
    if x[i] > 0 then
    pol += 1;
    
    if x[i] > maxX then
    maxX := x[i];

    end;
    
  for var i := 0 to 0 do
     for var j := 0 to 2 do
    begin
    
    if p[i,j] < minP then
    minP := p[i,j];

    end;
   
  t := (minP + maxX) / pol;
  minP.println;
  maxX.println;
  pol.println;
  t.println;
end.