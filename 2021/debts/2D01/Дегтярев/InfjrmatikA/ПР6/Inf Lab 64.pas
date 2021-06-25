function fa(i:integer):real;
begin
 result := i ** 2 + cos(-i+(2 * i + 3) ** (1/3))
end;

function faa(a:real):real;
begin
  if (a < 5) then
   result := 1 / a
   else
     if (a > 5) and (a <= 35) then
      result := 1 + 2 * a ** (-3)
      else
        if (a > 35)  then
          result := 25 ** (1 / sqrt(a))
end;

function fz(a,y:real):real;
begin
 result := y ** 2 / sin(a) + 1 / a
end;

begin  
  
  for  var i := 1 to 10 do
  fz(fa(i),faa(fa(i))).Println;
  
end.