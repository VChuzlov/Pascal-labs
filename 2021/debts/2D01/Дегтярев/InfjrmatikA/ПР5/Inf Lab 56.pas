begin 
  var p := MatrRandom(5,10,0,9);
  var sum := 0;
  var t := 0;
  var max :=0;
  p.println;
  
  for var j := 0 to p.ColCount-1 do
    begin
     for var i := 0 to p.RowCount-1 do
      begin
    
         sum += p[i,j];
   
      end;
    writeln('Сумма элементов',' ',j + 1,' ','столбца =',' ',sum);
    
    if sum > max then
        begin
          
          max := sum;
          t := j;
          
        end;
    sum := 0;
  end; 
  writeln('Столбец с максимальной суммой элементов имеет индекс = ',t + 1);
  
   for var i := 0 to p.RowCount-1 do
     write(p[i,t],'  ');
  
end.