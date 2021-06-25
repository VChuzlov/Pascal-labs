const
  k=14;
begin
  var c,z:real;
  var x:integer;
  x := 6;
  for var i := 1 to 6 do
  begin
    c := (x + k ** 3) / (k + 1);
    z := tan(x) + 5 * c;
      write('x(',i,')=',x,'  ');
      write('c(',i,')=',c,'  ');
      writeln('z(',i,')=',z,'  ');
    x := x + 6;
  end;
end.