begin 
  var p := MatrRandom(3,3,-5,5);

  var min : integer;
  var sum := 0;
  var pr : integer;
  p.println;
  min := p[1,1]; 
  for var i := 0 to p.RowCount-1 do
   begin
     for var j := 0 to p.ColCount-1 do
        begin
    
          if p[i,j] < min then
          min := p[i,j];
      
          if p[i,j] > 0 then
          sum += p[i,j];
        end;
  end; 
  pr := sum * min; 
  writeln('Минимальный элемент =',min);
  writeln('Сумма положительных элементов =',sum);
  writeln(pr);
   
end.