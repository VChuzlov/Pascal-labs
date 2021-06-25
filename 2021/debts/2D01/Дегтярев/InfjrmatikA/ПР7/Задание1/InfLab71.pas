var f := OpenWrite('qwerty.txt');

Procedure M(a: array of real);
begin 
 var result := a[0];
 var n := 0;
 
 for var i := 0 to a.High do
  Begin 
   if a[i] > result then
     begin
       result := a[i];
       n := i;
     end;
  end;   
 
f.writeln('Максимальный элемент массива =',' ',result);
f.writeln('Индекс максимального элемента =',' ',n);
result := 0;

 for var i := 0 to a.High do
  Begin 
   if a[i] > 1 then
     result += 1;
  end;   

f.writeln('Количество элементов массива превышающих по значению "1" =',' ',result);
result := 0;

 for var i := 0 to a.High do
  Begin 
   if (i mod 2 = 0) then
     result += a[i];
  end;  

f.writeln('Сумма элементов с четными индексами =',' ',result);
end;

function fa(i,n:integer):real;
begin
 result := arctan(2 * i + i / n) - sin(i + n)
end;


var n := 10;
var a := new real[n];
 
begin  
  
  for var i := 0 to n-1 do
    a[i] := fa(i,n);

  M(a);

  a.Print;
  f.Close  
end.