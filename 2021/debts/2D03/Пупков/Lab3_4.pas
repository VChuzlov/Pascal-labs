begin
   var k:= 14;
   var h:= 6;
   var start:= 6;
   var stop:= 36;
   var Z: real;
   var x:=start;
   var c: real;
   
   while  x<=stop+0.5*h do 
   begin
     c:=(x+k**3)/(k+1);
     Z:=tan(x)+5*c;
     println ($'{x:f1} {Z:f4}');
     x +=h;
   end;
end.