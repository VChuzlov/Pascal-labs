program lab_14_ex_2;

type
  matrix = array of array of real;
  arr = array of real;

const
  comp_count = 3;
  k: arr = (0.21, 0.12, 0.18);
  
var
  c: arr;

function right_parts(t: real; c: arr): arr;
begin
  SetLength(result, comp_count);
  result[0] := -k[0] * c[0] - k[1] * c[0] + + k[2] * c[2];
  result[1] := k[0] * c[0];
  result[2] := k[1] * c[0] - k[2] * c[2]
end;

function runge_kutt_method(start_t, stop_t, h: real; c0: arr): matrix;
var
  i, j: integer;
  t: real;
  k1, k2, k3, k4: arr;
  c: arr;
  x: real;
  
  function sum_map(a: real; array1, array2: arr): arr;
  var
    i: integer;
  begin
    SetLength(result, Length(array1));
    for i := 0 to High(result) do
      result[i] := array1[i] + array2[i] * a
  end;
  
begin
  SetLength(result, Trunc((stop_t - start_t) / h) + 1);
  for i := 0 to High(result) do
    SetLength(result[i], Length(c0) + 2);
  SetLength(c, Length(c0));
  
  t := start_t;
  for i := 0 to High(c0) do
    c[i] := c0[i];
  x := 0;
  
  for i := 0 to High(result) do
    begin
      result[i, 0] := t;
      for j := 0 to High(c) do
        result[i, j+1] := c[j];
      result[i, j+2] := x;
      
      k1 := right_parts(t, c);
      k2 := right_parts(t + h / 2, sum_map(h / 2, c, k1));
      k3 := right_parts(t + h / 2, sum_map(h / 2, c, k2));
      k4 := right_parts(t + h, sum_map(h, c, k3));
      
      for j := 0 to High(c) do
        c[j] := c[j] + h / 6 * (k1[j] + 2 * k2[j] + 2 * k3[j] + k4[j]);
      x := (c0[0] - c[0]) / c0[0] * 100;
      t := t + h
    end;
end;

function runge_kutt_method_x(start_t, x, h: real; c0: arr): arr;
var
  i, j: integer;
  t: real;
  k1, k2, k3, k4: arr;
  c: arr;
  conversion: real;
  
  function sum_map(a: real; array1, array2: arr): arr;
  var
    i: integer;
  begin
    SetLength(result, Length(array1));
    for i := 0 to High(result) do
      result[i] := array1[i] + array2[i] * a
  end;
  
begin
  SetLength(result, Length(c0) + 2);
  SetLength(c, Length(c0));
  
  t := start_t;
  for i := 0 to High(c0) do
    c[i] := c0[i];
  conversion := 0;
  
  while x > conversion do
    begin
      t := t + h;
  
      k1 := right_parts(t, c);
      k2 := right_parts(t + h / 2, sum_map(h / 2, c, k1));
      k3 := right_parts(t + h / 2, sum_map(h / 2, c, k2));
      k4 := right_parts(t + h, sum_map(h, c, k3));
      
      for j := 0 to High(c) do
        c[j] := c[j] + h / 6 * (k1[j] + 2 * k2[j] + 2 * k3[j] + k4[j]);
      conversion := (c0[0] - c[0]) / c0[0] * 100;
    end;
    
  result[0] := t;
  for j := 0 to High(c) do
    result[j+1] := c[j];
  result[j+2] := conversion;
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
  SetLength(c, comp_count);
  c[0] := 0.7;
  c[1] := 0;
  c[2] := 0;
  print_results(runge_kutt_method(0, 10, 1, c));
  writeln();
  write(runge_kutt_method_x(0, 98, 1, c)[0])
end.