begin
  var a := MatrRandom(4, 4, 1, 100);
  a.Println;
  
  var min := a.Row(0).Max.Print;
  
  for var i := 1 to a.RowCount-1 do
  begin
    var m := a.Row(i).Max;
    print(m);
    if min > m then
      min := m
  end;
  
  println;
  min.Print
end.