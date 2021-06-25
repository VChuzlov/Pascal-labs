var f := OpenWrite('qwerty.txt');
const
b=2.6e-4;

function M(a: array[,] of real):real;
begin 
 result := 1.0;

 for var j := 0 to a.ColCount-1 do
  for var i := 0 to a.RowCount-1 do
    result *= [i,j];
       
  if result < n then
  result := n;
end;

function T(c: array of real):real;
begin 
 result := 0;
 
  for var i := 0 to a.High do
    result += c[i];
       
 result := ln(result);
end;
var n := 1.0;
var a := MatrRandom(5,3,1,100);
var c : array of real := (3.42 , 11.2 , 0.4 , 6.23 , 15.64);
var k :real;
  
begin  
 
 k := T(c) + sqrt(M(a)) / 2 * m;
  a.Print;
  c.Print;
  f.writeln(a);
  f.writeln('Наибольшее произведение строк =',' ',M(a));
  f.writeln(k);
  

  f.Close  
end.