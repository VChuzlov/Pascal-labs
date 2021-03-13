begin
  var a := 2.5e-3;
  var c := 175;
  var k := 8;
  
  var z := new real[7] (-2, 3, 12, -7, 18, 27, -10);
  var b := new real[2, 3] ((0.3, 1.5,-6.1), (7.2, 10.3, 0.6));
  var min := b.Col(1).Min;
  
  var p := 0.0;
  var o := 0;
  
  foreach var el in z do
    if el > 0 then
      p += 1
    else
      o += 1;
  
  var x := new real[7];
  for var i := 0 to z.High do
    x[i] := sqrt(p) / (o + a * c) + min * k ** 2 + z[i];  
  
  x.PrintLines
end.