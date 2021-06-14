function get_z(a, b, j : real): real;
begin
 Result := sqr(b) / sin(a) + 1 / a
end;
begin
 var (j, h, jk) := (1, 1, 10);
  
 for var i := 1 to Trunc((jk- j) / h)+1 do
 begin
  var a, b : real;
  a := sqr(j) + cos(-j + (2 * j + 3) ** (1/3));
  j += h;
  begin
    if a < 5 then 
     b := 1 /a
    else if a > 35 then
     b := 25 ** (1/sqrt(a))
    else
     b := 1 + 2 * a ** (-3);
    get_z(a, b, j).Println
   end;
  end;
end.