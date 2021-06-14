var arrA := ArrRandom(7, 0, 10);

var
arrMin := arrA[0];
arrMax := arrA[0];
arrPlus := 0;
arrEx := 1;

begin
for var i := 0 to arrA.High() do
  begin
    
    if (arrA[i] < arrMin) then
      arrMin := arrA[i];
    if (arrA[i] > arrMax) then
      arrMax := arrA[i];
    if (arrA[i] > 1) then
      arrEx *= arrA[i];
      
      
    arrPlus += arrA[i]
    
  end;
Print($'Массив:');
Print(arrA);
Print(char(10)+$'Максимальное значение:{arrMax}'+char(10)+
      $'Минимальное значение:{arrMin}'+char(10)+$'Сумма всех эллементов:{arrPlus}'+char(10)+
      $'Произведение всех эллементов, больше 1:{arrEx}');

end.