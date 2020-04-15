program lb81;

const
  n = 10;

type
  arr = array[1..n] of real;

var
  i: integer;
  b: arr;

procedure pr1(var b: arr);
var
  max, max_ind: real;
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
  writeln('максимальный элемент = ', max:5:1, '  индекс элемента:', max_ind:3);
end;

procedure pr2(var b: arr);
var
  a, i: integer;
begin
  a := 0;
  for i := 1 to n do
  begin
    if(b[i] > 1) then
      a := a + 1;
  end;
  writeln('количество элементов > 1 = ', a:3);
end;

procedure pr3(var b: arr);
var
  i: integer;
  sum: real;
begin
  sum := 0;
  i := 2; 
  for i := 1 to n do
  if i mod 2 = 0 then
  begin
    sum := sum + b[i];
  end;
  writeln('сумма четных элементов = ', sum:5:1);
end;

begin
  
  for i := 1 to n do
  begin
    b[i] := arctan(2 * i + i / n) - sin(i + n);
  end;
  pr1(b);
  pr2(b);
  pr3(b);
  
end.