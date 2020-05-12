program lb11_3;
const
  n = 7;
type
  arr = array [1..n] of real;
var
  x, y, x, q: arr;
  x1, z1, g: real;
  i: integer;
  f: text;
function lagrange(x, y, z, q: arr; x1: real): real;
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
  result := sum;
  (*begin
  sum := 0;
  for i := 1 to n do
    begin
    p := 1;
    for j := 1 to n do
      begin
        if j <> i then
          p := p * (z1 - z[j]) / (z[i] - z[j])
      end;
      sum := sum + q[i] * p;
    end;
  result := sum*)
end; 

begin
  assign(f, 'задание 3 энтальпия.txt');
  reset(f);
  for i := 1 to n do
    readln(f, x[i], y[i]);
  x1 := 150;
  begin
    repeat
      writeln(x1:5, lagrange(x, y, z, q, x1):8:2);
      x1 := x1 + 100
    until x1 > 650
  end;
  //begin
  assign(f, 'задание 3 энтропия.txt');
  reset(f);
  for i := 1 to n do
    readln(f, z[i], q[i]);
  z1 := 150;
  begin
    repeat
      writeln(z1:5, lagrange(x, y,z, q, z1):8:2);
      z1 := z1 + 100
    until z1 > 650
  end;
  close (f)
  end.
  //end;
  