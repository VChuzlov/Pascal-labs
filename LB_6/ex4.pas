program ex4;
const
  a = 2.5e-3;
  c = 175;
  k = 8;
  z: array of real = (-2, 3, 12, -7, -18, 27, -10);
  b: array of array of real = ((0.3, 1.5, -6.1),
                               (7.2, 10.3, 0.6)
                               );
var
  x: array of real;
  i: integer;
  p: real;
  o: integer;
  min: real;
begin
  SetLength(x, 7);
  min := b[0, 1];
  for i := 0 to 1 do
    if min > b[i, 1] then
      min := b[i, 1];
  p := 0;
  o := 0;
  for i := 0 to 6 do
    begin
      if z[i] > 0 then
        p += z[i];
      if z[i] < 0 then
        o += 1;
    end;
  writeln(min:4, p:4, o:4);
  for i := 0 to 6 do
    begin
      x[i] := sqrt(p) / (o + a * c) + min * sqr(k) + z[i];
      writeln('x[', i, '] = ', x[i]:8:4);
    end;
end.