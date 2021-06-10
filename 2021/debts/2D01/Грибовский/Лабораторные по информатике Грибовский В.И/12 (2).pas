function equations(time:real;c,
                   k:array of real) : array of real;
begin 
  result :=ArrFill(c.Length,0.0);
  result[0]:=-k[0]*c[0]*c[1]-k[1]*c[1]*c[0]+k[2]*c[3];
  result[1]:=-k[0]*c[0]*c[1]-k[1]*c[1]*c[0]+k[2]*c[3];
  result[2]:=k[0]*c[0]*c[1];
  result[3]:=k[1]*c[1]*c[0]-k[2]*c[3]
end;
function Eiler(f:function(time:real;c,
                           k:array of real) : array of real;
               time, c0, k:array of real;
               h:real):array of array of real;
begin 
  var count := Trunc((time[^1]-time[0])/h)+1;
  SetLength(result,count);
  for var i :=0 to result.High do
    SetLength(result[i],c0.Length);
  var t:=time [0];
  result[0]:=c0;
  for var i:=1 to count-1 do
  begin
    var right_parts:=f(t,result[i-1], k);
    for var j:=0 to result [i].High do 
      result [i][j] := result[i-1][j]+h* right_parts[j];
    t+=h
  end;
end; 
begin 
  var time := Arr(0.0, 10.0);
  var c0 :=Arr(0.75,1.2, 0.9, 0.0);
  var k:=Arr(0.21,0.13, 0.18);
  var c:=Eiler(equations,time,c0,k,1);
  for var i :=0 to c.High do 
  begin
     for var j :=0 to c[i].High do
       write(c[i][j]:8:4);
     writeln
  end;
end.             