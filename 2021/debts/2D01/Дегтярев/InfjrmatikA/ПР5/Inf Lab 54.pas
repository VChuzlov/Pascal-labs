begin 
  var p := MatrRandom(4,4,1,100);
  var max := 0;
  var min := 101;
  var t :integer;
  var sr :real;
  p.println;
  
  for var i := 0 to p.RowCount-1 do
   begin
     for var j := 0 to p.ColCount-1 do
        begin
    
          if p[i,j] > max then
          max := p[i,j];
      
        end;
    
      writeln('Максимальный элемент',' ',i + 1,' ','строки =',' ',max);
     
      if max < min then
        min := max;
     
      max := 0;
     
  end; 
   
  writeln('Минимальный элемент =',min);
   
end.