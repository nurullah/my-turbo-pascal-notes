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
write('Adçnçzç Giriniz.....: '); readln(ad);
write('Soyadçnçzç Giriniz.....: '); readln(soyad);
write('Telefon Numarasç Giriniz.....: '); readln(tel);
write(nur,ad);
write(nur,soyad);
write(nur,tel);
write('Baüka Girilecek Kayçt Varmç [E/H] :');
ch:=readkey;
until ch in ['H','h'];
close(nur);
end.