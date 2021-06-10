begin
  var a := matrrandom(3, 3, -5, 5);
  a.println;
 var b := arr(a.row(0).min, a.row(1).min, a.row(2).min);
 var min := b.Min;
 var q :=0;
  for var i := 0 to a.high do
    for var j := 0 to a.high do
        if a[i, j] > 0 then
        begin
          q += 1
        end;
        Println(min*q)
end.