function FUN(S, PN, m : real) : real;
begin
  result := S + (PN.sqrt / 2) * m;
end;

begin
var f := openwrite ('result2.txt');
var Ci : array of real := (3.42, 11.2, 0.4, 6.23, 15.64);
var S : real := 0;
for var i := 0 to Ci.High do
 begin
  S += ln(Ci[i])
 end;
var B := matrrandom(5, 3, 1, 100);
var Bmax := arrfill (5, 0);
for var i := 0 to B.High do
 begin
   Bmax[i] := B.Row(i).Product
 end;
var PN := Bmax.Max;
var m := 2.6e-4;
var k := FUN(S, PN, m);
Writeln(f, B);
Writeln(f, PN);
Writeln(f, k);
f.Close
end.