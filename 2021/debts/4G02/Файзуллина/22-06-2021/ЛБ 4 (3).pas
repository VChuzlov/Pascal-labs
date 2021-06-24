begin
 var b: array [0..9] of real := (2, 5, -6, 8, -3, 7, 12, -45, 106, 4);
 var k, ko, kp: real;
 var i: integer;

 kp := 0;
 ko := 0;

 for i := 0 to 9 do
 begin
  if b[i] > 0 then
   kp := kp + 1
  else
   if b[i] < 0 then
    ko := ko + 1
 end;

 k := (ko+kp)/ko;
 println('k = ', k);

end.