uses crt;
var
nurullah:text;
ad,soyad,tel:string;
ch:char;
begin
assign(nurullah,'k:\dosya.tex');
rewrite(nurullah);
repeat
clrscr;
write('Ad�n�z� Giriniz.....: '); readln(ad);
write('Soyad�n�z� Giriniz.....: '); readln(soyad);
write('Telefon Numaras� Gir.....: '); readln(tel);
writeln(nurullah,ad);
writeln(nurullah,soyad);
writeln(nurullah,tel);
write('Ba�ka Girilecek Kay�t Varm� [E/H] : ');
ch:=readkey;
until ch in ['H','h'];
close(nurullah);
end.