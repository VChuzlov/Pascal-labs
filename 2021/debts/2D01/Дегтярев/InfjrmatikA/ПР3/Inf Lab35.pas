const
  a = 2.1;
begin
  var x,b,z,min,max,shag:real;
  var i:integer;
  min := 10.2;
  max := 12.6;
  shag := 0.4;
  i := 0;
  x := min; 
    repeat
      i := i + 1;
      b := x + cos(x);
      z := sin(x/a) + abs(a - b) / b ** 2;
      write('x(',i,')=',x,'  ');
      write('b(',i,')=',b,'  ');
      writeln('z(',i,')=',z,'  ');
      x := x + shag;
    until (min + shag * i) > max
end.