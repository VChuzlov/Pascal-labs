begin
  var a := matrrandom(4, 4, -3, 6);
  a.Println;
  var s := 0;
  var q := 0; 
  for var i := 0 to a.high do
    for var j := 0 to a.high do
      if a[i, j] > 0 then
      begin
        s += a[ i, j];
        q += 1;
      end;
      s.println;
      q.println;
      println (s/q);
end.