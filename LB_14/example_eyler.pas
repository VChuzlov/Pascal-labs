program lab_14_example;

type
  matrix = array of array of real;
  arr = array of real;

const
  comp_count = 2;
  k: arr = (0.5, 0.2);
  
var
  c: arr;

function right_parts(t: real; c: arr): arr;
begin
  SetLength(result, comp_count);
  result[0] := -k[0] * c[0] + k[1] * c[1];
  result[1] := k[0] * c[0] - k[1] * c[1]
end;

function eyler_method(start_t, stop_t, h: real; c0: arr): matrix;
var
  i, j: integer;
  t: real;
  f, c: arr;
begin
  SetLength(result, Trunc((stop_t - start_t) / h) + 1);
  for i := 0 to High(result) do
    SetLength(result[i], Length(c0) + 1);
  SetLength(c, Length(c0));
 
  t := start_t;
  for i := 0 to High(c0) do
    c[i] := c0[i];
  
  for i := 0 to High(result) do
    begin
      result[i, 0] := t;
      for j := 0 to High(c) do
        result[i, j+1] := c[j];
      
      f := right_parts(t, c);
      for j := 0 to High(c) do
        c[j] := c[j] + h * f[j];
      t := t + h
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
  SetLength(c, comp_count);
  c[0] := 1;
  c[1] := 0;
  print_results(eyler_method(0, 1, 0.1, c))
end.