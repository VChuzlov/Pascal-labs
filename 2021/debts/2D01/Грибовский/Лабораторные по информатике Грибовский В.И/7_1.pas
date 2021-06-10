function a: array of real;
begin
  var n := 10;
  var a: array of real := arrfill(n, 0.0);
  for var i := 0 to n - 1 do
  begin
    a[i] := 1 / tan(2 * (i + 1) + (i + 1) / n) - (sin((i + 1) + n))
  end;
  result := a;
end;

function amax(a: array of real): real;
begin
  for var i := 0 to a.High do
    if a[i] > result then
    begin
      result := a[i];
    end;
end;

function imax(a: array of real) : integer;
begin
  var amax : real;
  for var i := 0 to a.High do
    if a[i] > amax then
    begin
      amax := a[i];
      result := i
    end;
end;

function B(a: array of real): integer;
begin
  for var i := 0 to a.High do
    if a[i] > 1 then
    begin
      result += 1
    end;
end;

function Sum(a : array of real) : real;
begin
var (i, h, ik) := (1, 2, 9);
  for var r := 1 to Trunc ((ik-i) / h) + 1 do
  begin
    result += a[i];
    i += 2
  end;
end;

begin
  var f := OpenWrite('result1.txt');
  writeln(f, a);
  Writeln(f, amax(a));
  Writeln(f, imax(a));
  Writeln(f, B(a));
  Writeln(f, Sum(a));
  f.Close
end.