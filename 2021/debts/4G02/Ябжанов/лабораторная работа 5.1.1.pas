begin
var a:= matrrandom (3, 3, -5, 5);
var min, j,prod, i, sum: integer;
sum:=0;
prod:=1;
for i := 0 to 2 do
  for j :=0 to 2 do 
    begin
    if a[i,j]>0
    then
      sum:=sum+a[i,j];
      if 
      a[i,j]<min
      then 
        min:=a[i,j];
      end;
      prod:=sum*min;
      a.Println;
      sum.println;
      min.println;
      prod.Println;
      end.
