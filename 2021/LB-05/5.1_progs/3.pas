begin
  var a := MatrRandom(5, 10, 0, 9);
  a.Println;
  println;
  
  var max := a.Col(0).Sum;
  var indx := 0;
  
  for var i := 0 to a.ColCount-1 do
  begin
    var s := a.Col(i).Sum;
    write(s:4);
    if max < s then
      begin
        max := s;
        indx := i
      end
  end;
  
  println;
  indx.Print
end.