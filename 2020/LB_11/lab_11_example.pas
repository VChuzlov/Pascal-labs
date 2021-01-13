program lab_11_example;
const
  n = 4;
type
  arr = array [1..n] of real;
var
  x, y: arr;
  x1, y1: real;
  i: integer;
  f: text;
function lagrange(x, y: arr; x1: real): real;
var
  i, j: integer;
  p, sum: real;
begin
  sum := 0;
  for i := 1 to n do
    begin
    p := 1;
    for j := 1 to n do
      begin
        if j <> i then
          p := p * (x1 - x[j]) / (x[i] - x[j])
      end;
      sum := sum + y[i] * p;
    end;
  result := sum
end;

begin
  assign(f, 'data.txt');
  reset(f);
  for i := 1 to n do
    readln(f, x[i], y[i]);
  y1 := lagrange(x, y, 450);
  writeln(y1);
  close(f)
end.
    