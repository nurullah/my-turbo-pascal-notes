uses crt;
var
nur:text;
ad,soyad,tel:string;
ch:char;
kod:byte;
begin
assign(nur,'k:\dosya.text');
append(nur);
kod:=ioresult;
if kod <> 0 then
rewrite(nur);
repeat
clrscr;
write('Ad�n�z� Giriniz.....: '); readln(ad);
write('Soyad�n�z� Giriniz.....: '); readln(soyad);
write('Telefon Numaras� Giriniz.....: '); readln(tel);
write(nur,ad);
write(nur,soyad);
write(nur,tel);
write('Ba�ka Girilecek Kay�t Varm� [E/H] :');
ch:=readkey;
until ch in ['H','h'];
close(nur);
end.