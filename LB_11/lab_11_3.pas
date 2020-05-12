program lab_11_example;
const
  n = 7;
  
type
  arr = array [1..n] of real;
var
  x, y: arr;
  dH: arr = (-20.52, -10.5, -1.25, 5.32, 12.39, 24.67, 32.48);
  dS: arr = (20.48, 21.71, 22.85, 23.65, 24.52, 26.03, 27.00);
  T: arr = (100, 200, 300, 400, 500, 600 ,700);
  x1, y1, y2, dG: real;
  i: integer;
  
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
  i := 150;
  repeat
  y1 := lagrange(T, dH, i);
  y2 := lagrange(T, dS, i);
  dG := y1 - i * y2 / 1000;
  writeln(i:8, y1:8:2, y2:8:2, dG:8:2);
  i += 100
  until i > 650

end.
    