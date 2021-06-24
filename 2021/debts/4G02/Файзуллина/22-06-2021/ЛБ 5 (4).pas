begin
  var a := matrrandom(4, 4, 1, 100);
  a.Println;
  var b := arr(a.row(0).max, a.row(1).max, a.row(2).max, a.row(3).max);
  b.Println;
  b.Min.Println;
end.