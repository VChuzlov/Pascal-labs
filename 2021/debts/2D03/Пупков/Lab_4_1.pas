begin
  var a:=ArrRandomInteger(7,0,10);
  var max:=a[0];
  var imax:=1;
  var min :=a[0];
  var imin:=1;
  var S:= 0.0 ;
  var p:= 1.0 ;
  
 for var i:=0 to a. High do
  begin
   s+=a[i];
   
   if a[i]>1 then
   p*=a[i];
   
   if a[i]> max then
    begin
    max:= a[i];
    imax:=i;
    end;
    
   if a[i]<min then 
    begin
    min :=a[i];
    imin:=i;
    end;
   end;
   
  a.Println;
  max.Println;
  imax.Println;
  min.Println;
  imin.Println;
  s.Println;
  p.Println;
  
end.