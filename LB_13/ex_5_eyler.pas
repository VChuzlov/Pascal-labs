program lab_13_example;

type
  matrix = array of array of real;
  arr = array of real;

function right_parts(x, y1, y2: real): arr;
begin
  SetLength(result, 2);
  result[0] := -y1 - 5 * y2;
  result[1] := -7 * y1 - 3 * y2
end;

function fa(x: real): arr;
begin
  SetLength(result, 2);
  result[0] := 10 * exp(-8 * x) + 3 * exp(4 * x);
  result[1] := 14 * exp(-8 * x) - 3 * exp(4 * x)
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

function get_error(res: matrix): matrix;
var
  i: integer;
  delta1, delta2: real;
  ya: arr;
begin
  SetLength(result, Length(res));
  for i := 0 to High(result) do
    SetLength(result[i], 7);
  for i := 1 to High(result) do
    begin
      ya := fa(res[i, 0]);
      delta1 := abs((res[i, 1] - ya[0]) / ya[0]) * 100;
      delta2 := abs((res[i, 2] - ya[1]) / ya[1]) * 100;
      result[i, 0] := res[i, 0];
      result[i, 1] := res[i, 1];
      result[i, 2] := ya[0];
      result[i, 3] := delta1;
      result[i, 4] := res[i, 2];
      result[i, 5] := ya[1];
      result[i, 6] := delta2
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
  print_results(get_error(eyler_method(0, 0.1, 0.01, 13, 11)))
end.