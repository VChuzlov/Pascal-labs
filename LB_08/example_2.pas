program example_2;

type
  arr = array[1..5, 1..5] of real;

var
  b: arr;
  s: real;
  i, j: integer;

function get_sum(a: arr): real;
var
  i, j: integer;

begin
  result := 0;
  for i := 1 to 5 do
    for j := 1 to 5 do
      result := result + a[i, j]
end;

begin
  for i := 1 to 5 do
    begin
      for j := 1 to 5 do
        begin
          b[i, j] := random(1, 5);
          write(b[i, j]:4)
        end;
      writeln
    end;
  writeln('Сумма эл-тов массива b: ', get_sum(b):4)
end.