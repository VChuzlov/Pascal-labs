begin
  var x, c, k, z: real;
  k := 14;
  x := 6;
  while x <= 36 do
  begin
    c := (x + k * k * k) / (k + 1);
    z := tan(x) + 5 * c;
    println(z);
    x := x + 6;
  end
end.