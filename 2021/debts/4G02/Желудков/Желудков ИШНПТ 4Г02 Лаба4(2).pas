begin
    var a := ArrRandom(7, 0, 10);
    var i, min, max, mini, maxi, prod: integer;
  a.println;
  min := a[0];
  mini := 0;
  max := a[0];
  maxi := 0;
  prod := 1;
    for i := 0 to 6 do
begin
    if a[i] < min
    then
begin
  min := a[i];
  mini := i;
end;

    if a[i] > max
    then
begin
  max := a[i];
  maxi := i;
end;

   if a[i] > 1
   then prod := prod * a[i];
end;
  println('Индекс минимального элемента: ', mini);
  println('Индекс максимального элемента: ', maxi);
  println('Сумма элементов массива: ', a.sum);
    if prod = 1
  then println('Элементов, превышающих 1, не найдено')
  else
println('Произведение элементов массива, превышающих 1: ', prod);

end.
