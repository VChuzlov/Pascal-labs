function f(T:real):real;
 begin 
result := 3*(35.0/T)
 end;
function Simpson(f:function(T:real):real;
                    T:array of real; n:integer):real;
begin 
 var h:=(T[1]-T[0])/n;
 var(s1,s2):=(0.0,0.0);
 for var i:=1 to n-1 do
 if i mod 2=0 then
 s1+=f(T[0]+i*h)
 else 
 s2+=f(T[0]+i*h);
 result := h/3*(f(T[0])+2*s1+4*s2+f(T[1]))
 end;
 begin 
 var T :=Arr(400.0,500.0);
 var int :=Simpson(f,T,10);
 int.Println;
 end.