program lb81;

const
  n = 10;

type
  arr = array[1..n] of real;

var
  i: integer;
  a, max_ind: integer;
  max, sum: real;
  b: arr;

procedure pr1({var} b: arr; var max: real; var max_ind: integer); {Служебное слово var в заголовке процедуры используется, когда нужно
                                                                   объявить выходные параметры процедуры,если параметр является входным,
                                                                   то ставить перед ним var необязательно.
                                                                   Но если очень хочется, то можно)
                                                                   } 
var
  i: integer;
begin
  for i := 1 to n do
  begin
    if(max < b[i]) then
    begin
      max := b[i];
      max_ind := i;
    end;
  end;
  
end;

procedure pr2({var} b: arr; var a: integer);
var
  i: integer;
begin
  a := 0;
  for i := 1 to n do
  begin
    if(b[i] > 1) then
      a := a + 1;
  end;
  
end;

procedure pr3({var} b: arr; var sum: real);
var
  i: integer;
begin
  sum := 0;
  i := 2; 
  for i := 1 to n do
    if i mod 2 = 0 then
    begin
      sum := sum + b[i];
    end;
  
end;

begin
  
  for i := 1 to n do
  begin
    b[i] := arctan(2 * i + i / n) - sin(i + n);
  end;
  pr1(b, max, max_ind);
  writeln('максимальный элемент = ', max:5:1, '  индекс элемента:', max_ind:3);
  pr2(b, a);
  writeln('количество элементов > 1 = ', a:3);
  pr3(b, sum);
  writeln('сумма четных элементов = ', sum:5:1);
  
end.