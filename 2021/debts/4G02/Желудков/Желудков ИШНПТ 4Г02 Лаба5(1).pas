begin
  var a: array of array of integer := ((-3, 10, 15), (32, 12, -5));
  var b: array [0..3] of real := (-3.5, 120.4, -3.9, 6.11);
  var sum, k, max: real;
  var i, min: integer;

min := a[0][0];
max := b[0];

  for i := 0 to 2 do
begin
   if a[0][i] < min
    then
      min := a[0][i]
end;

  for i := 0 to 3 do
begin
  if b[i] > 0
    then
        k := k + 1;
  if b[i] > max
    then
      max := b[i]
end;

  sum := (max + min) / k;
  println(sum);

end.