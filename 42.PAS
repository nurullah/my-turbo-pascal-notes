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
write('Adçnçzç Giriniz.....: '); readln(ad);
write('Soyadçnçzç Giriniz.....: '); readln(soyad);
write('Telefon Numarasç Gir.....: '); readln(tel);
writeln(nurullah,ad);
writeln(nurullah,soyad);
writeln(nurullah,tel);
write('Baüka Girilecek Kayçt Varmç [E/H] : ');
ch:=readkey;
until ch in ['H','h'];
close(nurullah);
end.