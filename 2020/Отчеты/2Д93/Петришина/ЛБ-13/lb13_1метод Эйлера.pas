program lb13_1_eyler_method;

type
  matrix = array of array of real;
  arr = array of real;

function right_parts(x, y1, y2: real): arr;
begin
  SetLength(result, 2);
  result[0] := -2*y1 + 4*y2;
  result[1] := -y1 + 3*y2
end;

function a_resh(x: real): arr;
begin
  SetLength(result, {5}2); // Почему 5?? Нужно 2
  result[0] := 4*exp(-x*ln(e)) - exp(2*x*ln(e));
  result[1] := exp(-x*ln(e)) - exp(2*x*ln(e));
end;

function eyler_method(start_x, stop_x, h, start_y1, start_y2: real): matrix;
var
  i: integer;
  x, y1, y2: real;
  f: arr;
begin
  SetLength(result, Trunc((stop_x - start_x) / h) + 1);
  for i := 0 to High(result) do
    SetLength(result[i], 3);
  x := start_x;
  y1 := start_y1;
  y2 := start_y2;
  for i := 0 to High(result) do
    begin
      result[i, 0] := x;
      result[i, 1] := y1;
      result[i, 2] := y2;
      f := right_parts(x, y1, y2);
      y1 := y1 + h * f[0];
      y2 := y2 + h * f[1];
      x := x + h
    end;
end;

function f_er(y: matrix): matrix;
var
  i, j: integer;
  x: real;
  f1: arr;
begin
  SetLength(result, Length (y));
  for i := 0 to High(result) do
    SetLength(result[i], {4} 7); 
  for i := 0 to High(result) do
  begin
    x := y[i, 0];
    f1 := a_resh(x); // либо здесь вместо x сразу писать y[i, 0]
   result[i, 3] := f1[0];
   result[i, 4] := f1[1];
   if i = 0 then
     begin
       result[i, 5] := 0;
       result[i, 6] := 0;
     end
   else
     begin
       result[i, 5] := abs((y[i, 1] - f1[0])/f1[0]) * 100; // Чтобы не было отрицательных ошибок можно всю дробь взять под модуль
       result[i, 6]:= abs((y[i, 2] - f1[1])/f1[1]) * 100;
     end;
    for j := 0 to 2 do
      result [i, j] := y[i, j];
  end;
end;

procedure print_results(res: matrix);
var
  i, j: integer;
begin
  for i := 0 to High(res) do
    begin
      for j := 0 to High(res[i]) do
        write(res[i, j]:10:4);
      writeln
    end;
end;

begin
  writeln('      x ','        y1 ',  '       y2 ', '       ya1 ', '      ya2 ', 
          '    error1', '    error2 ');
  print_results(f_er(eyler_method(0, 1, 0.1, 3, 0)))
end.
