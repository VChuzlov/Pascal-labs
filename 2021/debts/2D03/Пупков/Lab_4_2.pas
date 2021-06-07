begin 
  var a:= arr(2.1 ,3.2, 4.8, 5.7);
  var c:= arr(2 ,4,6,8);
  var b:=18.0;
  var s:=0.0;
  var p:=1.0;
  var y:real;
  
  for var i:=0 to a.High do
  begin
    s+=a[i]+sqrt(b);
    p*=sin(c[i]);
  end;
  
  y:=s+p;
  
  s.Println;
  p.Println;
  y.Println;
end.
