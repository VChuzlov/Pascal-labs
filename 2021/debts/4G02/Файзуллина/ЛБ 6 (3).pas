function get_y(a, z, x: real): real;
begin
 Result := (cos(x) / sin(x) - cos(z) / sin(z)) / (cos(a) / sin(a) + cos(x) / sin(x)) - cos(z) / sin(z)
end;
 
begin
  var x, a, z : real;
  readln(x);
  z := 2 * x ** (3/2) + cos(x + 2) / sin(x + 2);
  a := 3 * x ** (7/9) + cos(x + 3) / sin(x + 3);
  writeln(z);
  writeln(a);
  
  get_y(a, z, x).Println
end.