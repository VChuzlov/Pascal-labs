begin
  var a := matrrandom(5, 10, 0, 9);
  a.Println;
  var s := 0;
  var imaxsum := 0;
  for var i := 0 to a.High do
    if s < a.col(i).sum then
    begin
      s := a.Col(i).Sum;
      imaxsum := (i)
    end;
    s.Println;
    imaxsum.Println;
end.