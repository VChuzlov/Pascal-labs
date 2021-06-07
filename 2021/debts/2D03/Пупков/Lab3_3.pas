begin
   var k:= 14;
   var h:= 5
   var start:= 100 ;
   var stop:= 600;
   var Z: real;
   var x:=start;
   var c: real;
   
   loop Trunc ((stop-start)/h)+1 do
    begin
     c:=(x+k**3)/(k+1);
     Z:=tan(x)+5*c;
     println ($'{x:f1} {Z:f4}');
     x +=h;
   end;
   
 end.