begin
  var f := OpenWrite('result1.txt');
  var n := 10;
  var a : array of real := arrfill (n, 0.0);
  for var i := 0 to n - 1 do
  begin
    a[i] := 1 / tan (2 * (i + 1) + (i + 1) / n) - sin ((i + 1) + n)
  end;
  Writeln (f, a);
  var imax : real;
  var amax := 0.0;
  for var i := 0 to a.High do
  if a[i] > amax then
  begin
    imax := i;
    amax := a[i]
  end;
  Writeln (f, amax);
  Writeln (f, imax);
  var B := 0;
  for var i := 0 to a.High do
  if a[i] > 1 then
  begin
    B += 1
  end;
  Writeln (f, B);
  var S : real;
  var (i, h, ik) := (1, 2, 9);
  for var r := 1 to Trunc ((ik-i) / h) + 1 do
  begin
    S += a[i];
    i += 2
  end;
  Writeln (f, S);
  f.close
end.