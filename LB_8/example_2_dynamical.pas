program example_2_dynamical;

type
  arr = array of array of real;

var
  b: arr;
  i, j: integer;

function get_sum(a: arr): real;
var
  i, j: integer;

begin
  result := 0;
  for i := 0 to High(a) do
    for j := 0 to High(a[i]) do
      result := result + a[i, j]
end;

begin
  SetLength(b, 5);
  for i := 0 to High(b) do
    SetLength(b[i], 5);
    
  for i := 0 to High(b) do
    begin
      for j := 0 to High(b[i]) do
        begin
          b[i, j] := random(1, 5);
          write(b[i, j]:4)
        end;
      writeln
    end;
  writeln('Сумма эл-тов массива b: ', get_sum(b):4)
end.