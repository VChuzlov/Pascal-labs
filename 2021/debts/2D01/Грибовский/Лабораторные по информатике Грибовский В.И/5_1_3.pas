begin
  var a := 2.5e-3;
  var c := 175;
  var k := 8;
  var Zi: array of integer := (-2, 3, 12, -7, -18, 27, -10);
  var B: array of array of real := ((0.3, 1.5, -6.1), (7.2, 10.3, 0.6));
  var P : real := 0;
  for var i := 0 to Zi.High do
    if Zi[i] > 0 then
    begin
      P += Zi[i]
    end;
  var O := 0;
  for var i := 0 to Zi.High do
    if Zi[i] < 0 then
    begin
      O += 1
    end;
  var Bmin : real := 100;
  for var i := 0 to B.High do
    if B[i, 1] < Bmin then
    begin
      Bmin := B[i, 1]
    end;
  var xi: array of real := (P.Sqrt / (O + a * c) + Bmin * k.Sqr + Zi.sum);
  xi.Println;
end.