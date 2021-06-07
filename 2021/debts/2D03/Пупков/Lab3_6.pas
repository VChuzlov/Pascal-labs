begin
   var a:=2.1;
   var start:= 10.2;
   var stop:= 12.6;
   var h := 0.4;
   var x := start;
   var Z: real;
   var b: real;
   
   loop Trunc ((stop-start)/h)+1 do
   begin
     b:= x+ cos(x);
     Z:=sin(x/a)+(abs(a-b)/b**2);
     println ($'{x:f1} {Z:f4}');
     x +=h;
   end;
end.