begin 
  var a := ArrRandom(7, 0, 10);
  var max := a[0];
  var min := a[0];
  var sum := 0;
  var pr := 1;
  var maxI,minI:integer;
  a.println;
  for var i := 0 to a.High do
    begin
    sum += a[i];
    
    if a[i] > 1 then
    pr *= a[i];
    
    if a[i] > max then
    begin
    max := a[i];
    maxI := i;
    end;
    
    if a[i] < min then
    begin
    min := a[i];
    minI := i;
    end;
    end;
  a.println;
  writeln('максимальное значение=',max,' ','индекc=',maxI); 
  writeln('минималное значение=',min,' ','индекc=',minI);
  writeln('произведение=',pr);
  writeln('сумма=',sum);
  
end.