uses crt;
var
a:byte;
toplam,sayi:real;
begin
clrscr;
toplam:=0;
for a:=1 to 7 do
begin
writeln(a,'- Sayy Giriniz');
readln(sayi);
writeln;
toplam:=toplam+sayi;
end;
writeln('Girdi§iniz Saylarn Toplam => ', toplam:0:0);
readln;
end.