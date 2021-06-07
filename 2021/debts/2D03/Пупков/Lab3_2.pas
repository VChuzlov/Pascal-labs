begin
   var k:= 250;
   var h:= 50;
   var start:= 300;
   var stop:= 1000;
    
   
   for var i:=1 to Trunc ((stop-start)/h)+1 do
   begin    
     k+=50;
     println ($'T={k}'); 
   end;
end.