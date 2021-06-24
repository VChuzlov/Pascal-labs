begin
 var a: array [0..3] of real := (2.1, 3.2, 4.8, 5.7);
 var c: array [0..3] of real := (2, 4, 6, 8);
 var b, y, sum, prod: real;
 var i: integer;

 sum:=0;
 prod:=1;
 b:=18;

 for i := 0 to 3 do
 begin
 sum:= sum + a[i]+sqrt(b);
 prod := prod * sin(c[i]);
 end;

 y := sum + prod;

 println('y = ', y);

end.