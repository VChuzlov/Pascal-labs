begin
 var b:= ArrRandomreal(7, -3, 10);
 var a,bm, c: real;
 var i: integer;

 b.println;

 c:=9.5;
 a:=7.7;
 bm := 0;
  if b.max > c then
   for i := 0 to 6 do
   b[i]:= b[i]/a
  else
  for i := 0 to 6 do
   if b[i] > 0 then
    bm := bm + b[i];
   for i := 0 to 6 do
   b[i] := b[i] * bm;
   b.println;

end.