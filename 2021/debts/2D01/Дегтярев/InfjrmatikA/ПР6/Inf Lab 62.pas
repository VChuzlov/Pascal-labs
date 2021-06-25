function f(x:integer):real;
begin
 if (x >= -2) and (x <2) then
   result := x **2
   else
     if (x >= 2)  then
      result := x **2 + 4 * x +5
      else
        if (x < -2)  then
          result := 1
end;


begin 
  for  var x := -3 to 3 do
  println(f(x));
end.