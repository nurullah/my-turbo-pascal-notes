uses crt;
var
a,b,c:real;
procedure islem (var k,l,m:real);
begin
k:=k*k;
l:=l*l;
m:=m*m;
end;
begin
clrscr;
a:=10;
b:=20;
c:=30;
islem(a,b,c);
writeln(a:0:0);
writeln(b:0:0);
writeln(c:0:0);
readln;
end.