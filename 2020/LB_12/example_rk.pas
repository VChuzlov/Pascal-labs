program lab_12_example;

type
  matrix = array of array of real;

function f(x, y: real): real;
begin
  result := y / sqr(cos(x))
end;

function runge_kutt_method(start_x, stop_x, h, start_y: real): matrix;
var
  x, y: real;
  k1, k2, k3, k4: real;
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
      k1 := f(x, y);
      k2 := f(x + h / 2, y + h / 2 * k1);
      k3 := f(x + h / 2, y + h / 2 * k2);
      k4 := f(x + h, y + h * k3);
      y := y + h / 6 * (k1 + 2 * k2 + 2 * k3 + k4);
      x := x + h
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
  print_results(runge_kutt_method(0, 1, 0.1, 2.7183))
end.