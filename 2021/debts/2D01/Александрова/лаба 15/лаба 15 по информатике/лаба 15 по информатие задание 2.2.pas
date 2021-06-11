function f(T:real):real;
 begin 
result := 3*(35.0/T)
 end;
function TrapMethod(f:function(T:real):real;
                    T:array of real; n:integer):real;
begin 
 var h:=(T[1]-T[0])/n;
 result := 0.0;
 var T_:=new real[n+1];
 (T_[0],T_[^1]):=(T[0],T[1]);
 for var i:=1 to T_.High-1 do
 T_[i]:=T_[i-1]+h;
 for var i:=0 to T_.High-1 do
 result += (f(T_[i])+f(T_[i+1]))/2;
 result *=h
 end;
 begin 
 var T :=Arr(400.0,500.0);
 var int :=TrapMethod(f,T,10);
 int.Println;
 end.