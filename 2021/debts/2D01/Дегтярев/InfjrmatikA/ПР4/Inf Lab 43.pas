begin 
  var a := Arr(2,5,-6,8,-3,7,12,-45,106,4); 
  var otr := 0;
  var pol := 0;
  var k :real;
  a.println;
  for var i := 0 to a.High do
    begin
    
    if a[i] > 0 then
    pol += 1;

    if a[i] < 0 then
    otr += 1;
    
    end;
  k := (otr + pol)/otr;
  writeln('количество отрицательных элементов =',' ',otr); 
  writeln('количество положительных элементов =',' ',pol);
  writeln('k =',' ',k);
end.