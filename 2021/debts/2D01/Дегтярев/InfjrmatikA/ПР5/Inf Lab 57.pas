const
a = 0.0025;
c = 175;
K = 8;
begin 
  var B : array of array of real := ((0.3 , 1.5 , -6.1) , (7.2 , 10.3 , 0.6));
  var Z : array of real := (-2 , 3 , 12 , -7 , -18 , 27 , -10);
  var minB := B[0,1];
  var x := Copy(Z);
  var pol := 0.0;
  var otr := 0;
  
  B.println;
  Z.println;
  
  for var i := 0 to Z.High do
    begin
    
    if Z[i] > 0 then
    pol += Z[i];
    
    if Z[i] < 0 then
    otr += 1;

    end;
    
    
    
  for var i := 0 to 1 do
    begin
    
    if B[i,1] < minB then
    minB := B[i,1];

    end;

  writeln('Количество отрицательных элементов массива Z =',' ',otr);
  writeln('Сумма положительных элементов массива Z =',' ',pol);
  writeln('Минимальный элемент второго столбца матрицы B =',' ',minB);
  writeln('Массив X:');

  for var i := 0 to Z.High do
    begin
    
    x[i] := sqrt(pol) / (otr + a * c) + minB * sqr(K) + Z[i];
    write(x[i],'  ');

    end;


end.