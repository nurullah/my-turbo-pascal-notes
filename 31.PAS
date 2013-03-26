uses crt;
var
a,b:integer;
begin
clrscr;
a:=0;
repeat
write('Bir Say Giriniz: '); readln(b);
if b>100 then continue;
a:=a+b;
write(b:10,a:40);
until b=0;
end.