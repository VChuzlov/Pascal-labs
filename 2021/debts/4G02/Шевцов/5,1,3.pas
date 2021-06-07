begin
  var z: array[0..6] of real := (-2, 3, 12, -7, -18, 27, -10);
  var b: array of array of real := ((0.3, 1.5, -6.1), (7.2, 10.3, 0.6));
  var x: array[0..6] of real;
  var a, o, p, min, c, k: real;
  var i: integer;
  a := 2.5e-3;
  c := 175;
  k := 8;
  o := 0;
  p := 0;
  for i := 0 to 6 do
  begin
    if z[i] > 0
      then
      p := p + z[i]
    else
    if z[i] < 0
      then
      o := o + 1;
  end;
  min := b[0, 1];
  for i := 0 to 1 do
    if b[i, 1] < min
      then min := b[i, 1];
  for i := 0 to 6 do
    x[i] := sqrt(p) / (o + a * c) + min * k * k + z[i];
  x.println;
end.
