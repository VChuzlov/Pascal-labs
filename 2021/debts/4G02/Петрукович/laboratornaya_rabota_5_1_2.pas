begin
var a:= matrrandom (5, 10, 0, 9);
var b: array [0..9] of integer;
var maxi, max, j, i: integer;
max:=0;for j := 0 to 9 do
  begin b[j]:=0;
  for i :=0 to 4 do
    b[j]:=b[j]+a[i,j];
    end;
    maxi:=0;max:=b[0];
    for j:=0 to 9 do 
      if b[j] >max
      then
        begin max:=b[j];
        maxi:=j;
        end;
        a.Println;
        b.println;
        max.println;
        maxi.Println;
        end.
