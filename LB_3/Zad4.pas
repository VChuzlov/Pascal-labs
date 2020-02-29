program zad4;
const
  k0 = 10e2;
  R = 8.314;
var
  Ea, k, T: real;
begin
  T:= 700;
  repeat
    if T <= 720 
      then
        Ea:= 60
      else
        if (T > 720) and (T <= 730) 
          then
            Ea:= 59
          else
            Ea:= 57;
    k:= k0 * exp(-Ea / (R * T));  
    writeln(T:3, k:10:2);
    T:= T + 5
  until T > 750
end.