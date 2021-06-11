function f(T:real):real;
 begin 
result := 3*(35.0/T)
 end;
function RectMethod(f:function(T:real):real;
                    T:array of real; n:integer):real;
begin 
 var h:=(T[1]-T[0])/n;
 result := 0.0;
 for var i:=0 to n-1 do
 result += f(T[0]+h*(i+0.5));
 result *=h
 end;
 begin 
 var T :=Arr(400.0,500.0);
 var int :=RectMethod(f,T,10);
 int.Println
 end.