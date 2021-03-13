begin
  var a := MatrRandom(3, 3, -5, 5);
  var min := a.Row(0).Min;
  var product := 1;
  
  for var i := 1 to a.RowCount-1 do
  begin
    var m := a.Row(i).Min;
    if m < min then
      min := m;
  end;
  
  for var i := 0 to a.RowCount-1 do
    for var j := 0 to a.ColCount-1 do
      if a[i, j] > 0 then
        product *= a[i, j];
  
  a.Println;
  min.Println;
  product.Println;
  (min * product).Println;
end.