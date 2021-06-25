const
h=7.7;
c=9.5;
begin 
  var a := ArrRandomreal(7, -3, 10);
  var max := a[0];
  var sum := 0.0;
  a.println;
  for var i := 0 to a.High do
    begin
    
    if a[i] > 0 then
    sum += a[i];
    
    if a[i] > max then
    max := a[i];

    end;
    
if max > c then
   
   for var i := 0 to a.High do
   a[i] /= h
  
else
   
   for var i := 0 to a.High do
   a[i] *= sum;  
   
a.println;
end.