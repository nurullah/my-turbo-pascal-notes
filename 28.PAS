uses crt;
var
a,b:integer;
begin
clrscr;
repeat
writeln('Bir Say Giriniz');
readln(a);
writeln('Bir Say Giriniz');
readln(b);
writeln('˜ki Saynn Toplam    :',a+b);
until (a+b)>1000;
readln;
end.