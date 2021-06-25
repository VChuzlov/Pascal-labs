begin 
  var p := MatrRandom(4,4,-3,6);
  var sum := 0;
  var t :integer;
  var sr :real;
  p.println;
  
  for var j := 0 to p.ColCount-1 do
    begin
     for var i := 0 to p.RowCount-1 do
    begin
    
    if p[i,j] > 0 then
      begin
      
        t += 1;
        sum += p[i,j];
    
      end;
      
    end;
    sr := sum / t;
    writeln('Среднее арифметическое элеметов',' ',j + 1,' ','столбца =',' ',sr);
    t := 0;
    sum := 0;
  end; 
end.