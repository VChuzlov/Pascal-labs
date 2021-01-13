program lb11_2;
const
  n = 6;
type
  arr = array [1..n] of real;
var
  x, y: arr;
  x1, y1: real;
  i: integer;
  f: text;
function lagrange(x, y: arr; x1: real): real;
var
  i, j: integer;
  p, sum: real;
begin
  sum := 0;
  for i := 1 to n do
    begin
    p := 1;
    for j := 1 to n do
      begin
        if j <> i then
          p := p * (x1 - x[j]) / (x[i] - x[j])
      end;
      sum := sum + y[i] * p;
    end;
  result := sum
end; 
begin
  assign(f, 'задание 2.txt');
  reset(f);
  for i := 1 to n do
    readln(f, x[i], y[i]);
  (*y1 := lagrange(x, y, {lagrange(x,y,x1)});*)
  x1 := 100; // Присваиваем начальное значение из интервала
  begin
    (*x[i] := 100;*) // Здесь Вы обоащаетесь к i-му элементу массива x, чего делать не нужно
    repeat
      writeln((*x[i]*)x1:5, lagrange(x,y,x1):10:5);
      (*x[i] := x[i] + 50*)
      x1 := x1 + 50
    until (*x[i] > 600*) x1 > 600
  end;
  close(f)
end.

