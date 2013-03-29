uses crt;
var
s,k:integer;
function kare(a:integer):real;
begin
kare:=a*a;
end;
begin
clrscr;
write('Karesini Almak ˜‡in Say Giriniz : ');
readln(s);
writeln(s,' nin Karesi = ',kare(s):0:0, ' dir');
readln;
end.