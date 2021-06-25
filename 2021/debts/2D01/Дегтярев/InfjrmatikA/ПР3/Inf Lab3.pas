const
  ko = 100;
  R = 8.314;
begin
  var Ea,T,k,min,max,shag:real;
  var i:integer;
  min := 700;
  max := 750;
  shag := 5;
  i := 0;
  T := min; 
    repeat
      i := i + 1;
        if T <= 720 then Ea := 60
          else
          If (T > 720) and (T <= 730) then Ea := 59
            else
            Ea := 57;
      k := ko * exp(-Ea/(R * t));
      write('T(',i,')=',T,'  ');
      write('Ea(',i,')=',Ea,'  ');
      writeln('k(',i,')=',k,'  ');
      T := T + shag;
    until (min + shag * i) > max
end.
