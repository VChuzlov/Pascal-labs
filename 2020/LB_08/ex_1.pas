program ex_1;

const
  n = 10;
type
  arr = array of real;
  
var
  i: integer;
  a: arr;
  max: real;
  imax: integer;
  
procedure get_max(a: arr; var max: real; var imax: integer);
var
  i: integer;
begin
  max := a[0];
  for i := 0 to High(a) do
    if max < a[i] then
      begin
        max := a[i];
        imax := i;
      end;
end;

function get_count(a: arr): integer;
var
  i: integer;
begin
  result := 0;
  for i := 0 to High(a) do
    if a[i] > 1 then
      result := result + 1
end;

function get_sum_even_index(a: arr): real;
var
  i: integer;
begin
  result := 0;
  for i := 0 to High(a) do
    if i mod 2 = 0 then
      result := result + a[i]
end;

begin
  SetLength(a, n);
  for i := 0 to High(a) do
    begin
      a[i] := arctan(2 * i + i / n) - sin(i + n);
      writeln('a[', i, '] = ', a[i]:6:4)
    end;
  get_max(a, max, imax);
  writeln('max ','[ ', imax, ' ] = ', max:6:4);
  writeln('count > 1: ', get_count(a):2);
  writeln('sum of even: ', get_sum_even_index(a):6:4)
  
end.