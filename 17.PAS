uses crt;
var
a,b:real;
c:integer;
begin
clrscr;
b:=0;
for c:=1 to 5 do
begin
writeln(c,'- Say�y� Giriniz');
readln(a);
b:=c+a;
end;
clrscr;
write('Girilen Say�lar�n Toplam� :':50,b:0:0);
readln;
end.