const
  k=14;
begin
  var c,z:real;
  var x,i:integer;
  i := 0;
  x := 6;
 while x <=36 do
  begin
    i := i + 1;
    c := (x + k ** 3) / (k + 1);
    z := tan(x) + 5 * c;
      write('x(',i,')=',x,'  ');
      write('c(',i,')=',c,'  ');
      writeln('z(',i,')=',z,'  ');
    x := x + 6;
  end;
end.