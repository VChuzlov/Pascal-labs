begin
  var a := matrrandom(3, 3, 1, 10);
  var sum: integer;
    a.Println;
    a.Row(0).sum.println;
    a.Row(2).sum.println;
  sum:= a.Row(0).sum + a.Row(2).sum;
  println(sum);
end.