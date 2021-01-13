program lab_12_example;

type
  matrix = array of array of real;

function f(x, y: real): real;
begin
  result := (y - 3) / (3 * sqr(x) + x)
end;

function fa(x: real): real;
begin
  result := (3.5 * x) / (3 * x + 1) + 3
end;

function eyler_method(start_x, stop_x, h, start_y: real): matrix;
var
  x, y: real;
  i: integer;
begin
  SetLength(result, Trunc((stop_x - start_x) / h)+1);
  for i := 0 to High(result) do
    SetLength(result[i], 2);
  x := start_x;
  y := start_y;
  for i := 0 to High(result) do
    begin
      result[i, 0] := x;
      result[i, 1] := y;
      y := y + h * f(x, y);
      x := x + h
    end;
end;

function get_error(y: matrix): matrix;
var
  i, j: integer;
begin
  SetLength(result, Length(y));
  for i := 0 to High(y) do
    SetLength(result[i], 3);
  for i := 0 to High(y) do
    begin
      result[i, 2] := abs(y[i, 1] - fa(y[i, 0])) / fa(y[i, 0]) * 100;
      for j := 0 to 1 do
        result[i, j] := y[i, j];
    end;
end;

procedure print_results(y: matrix);
var
  i, j: integer;
begin
  for i := 0 to High(y) do
    begin
      for j := 0 to High(y[i]) do
        write(y[i, j]:10:4);
      writeln
    end
end;

begin
  print_results(get_error(eyler_method(2, 3, 0.2, 4)))
end.