program lab_13_ex_1;

type
  matrix = array of array of real;
  arr = array of real;

function right_parts(x, y1, y2: real): arr;
begin
  SetLength(result, 2);
  result[0] := 3 * y1 - y2;
  result[1] := 4 * y1 - y2
end;

function fa(x: real): arr;
begin
  SetLength(result, 2);
  result[0] := (5 + 2 * x) * exp(x);
  result[1] := (8 + 4 * x) * exp(x)
end;

function runge_kutt_method(start_x, stop_x, h, start_y1, start_y2: real): matrix;
var
  i: integer;
  x, y1, y2: real;
  k1, k2, k3, k4: arr;
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
      k1 := right_parts(x, y1, y2);
      k2 := right_parts(x + h / 2, y1 + k1[0] * h / 2, y2 + k1[1] * h / 2);
      k3 := right_parts(x + h / 2, y1 + k2[0] * h / 2, y2 + k2[1] * h / 2);
      k4 := right_parts(x + h, y1 + k3[0] * h, y2 + k3[1] * h);
      y1 := y1 + h / 6 * (k1[0] + 2 * k2[0] + 2 * k3[0] + k4[0]);
      y2 := y2 + h / 6 * (k1[1] + 2 * k2[1] + 2 * k3[1] + k4[1]);
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
  print_results(get_error(runge_kutt_method(0, 0.1, 0.01, 5, 8)))
end.