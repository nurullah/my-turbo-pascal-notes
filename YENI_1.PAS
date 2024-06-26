uses crt;
type
kutup=record
ad:string[8];
soyad:string[10];
tel:string[10];
kitap:string[8];
yazar:string[10];
atarih,ttarih:string[11];
kad:string[10];
kyazar:string[10];
ktel:string[10];
kyay:string[8];
kbtarih:string[11];
f:char;
end;
var
kut:file of kutup;
kkut:file of kutup;
k:kutup;
ara:string[8];
ch:char;
kod,i,a:integer;
procedure ciz (x1,y1,x2,y2:byte);
var
a:integer;
cizgi:string[80];
begin
textcolor(7);
highvideo;
fillchar (cizgi,80,#205);
cizgi[0]:=chr(x2-x1-1);
gotoxy(x1,y1);write(chr(201),cizgi,chr(187));
for a:=y1+1 to y2-1 do
begin
gotoxy(x1,a);write(chr(186));
gotoxy(x2,a);write(chr(186));
end;
gotoxy(x1,y2);write(chr(200),cizgi,chr(188));
textcolor(10);
end;
procedure klastas;
begin
clrscr;
highvideo;
textcolor(7);
ciz(1,1,80,24);
ciz(3,2,78,4);
textcolor(10);
gotoxy(8,3);write('Copyright'#184' 2013 nurullahsevinctekin.�zinsiz Kullan�lmas� Yasakt�r.');
end;
procedure ekle;
begin
assign(kut,'d:k�t�phane.dat');
{$i-} reset(kut); kod:=ioresult;{$i+}
if kod<>0 then begin rewrite(kut); end;
repeat
clrscr;
klastas;
ciz(16,5,63,13);
textcolor(10);
gotoxy(20,6);write('Ad�n�z� Giriniz      '#175' ');readln(k.ad);
gotoxy(20,7);write('Soyad�n�z� G�riniz   '#175' ');readln(k.soyad);
gotoxy(20,8);write('Tel. No Giriniz      '#175' ');readln(k.tel);
gotoxy(20,9);write('Ald��� Kitap         '#175' ');readln(k.kitap);
gotoxy(20,10);write('Kitap Yazar          '#175' ');readln(k.yazar);
gotoxy(20,11);write('Kitap Al�� Tarih     '#175' ');readln(k.atarih);
gotoxy(20,12);write('Kitap Teslim Tarih   '#175' ');readln(k.ttarih);
ciz(16,14,63,16); textcolor(10);
gotoxy(20,15);write('Ba�ka Girilecek Kay�t Var M�? [E/H] '#175' ');
k.f:='*';
seek(kut,filesize(kut));
write(kut,k);
ch:=readkey;
until ch in ['H','h'];
close(kut);
end;
procedure liste;
begin
assign(kut,'d:K�T�PHAN.dat');
{$i-} reset(kut); kod:=ioresult;{$i+}
if kod<>0 then begin clrscr; gotoxy(34,12);writeln('Kay�t Yok..'); end;
clrscr;
klastas; ciz(3,2,78,4); ciz(3,5,78,7); ciz(3,8,78,23);
gotoxy(4,6);  write('Ad�');
gotoxy(13,6); write('Soyad�');
gotoxy(25,6); write('Telefon');
gotoxy(36,6); write('Kitap Ad');
gotoxy(47,6); write('K.Yazar');
gotoxy(66,6); write('Tarih');
for i:=0 to filesize(kut)-1 do
begin
seek(kut,i);
read(kut,k);
if k.f='*' then begin
a:=9;
gotoxy(4,a);  write(k.ad);
gotoxy(12,a); write(k.soyad);
gotoxy(22,a); write(k.tel);
gotoxy(32,a); write(k.kitap);
gotoxy(40,a); write(k.yazar);
gotoxy(50,a); write(k.atarih);
gotoxy(69,a); write(k.ttarih);   end;
if a>18 then
begin
gotoxy(38,23);write('Di�er Bir Sayfa ��in Bir Tu�a Bas�n�z..');
ch:=readkey;
a:=0;
clrscr;
end;
gotoxy(4,23);write('Listelenecek Kay�tlar Bitti..');
readln;
close(kut);
end;
end;
procedure sil;
begin
assign(kut,'d:K�T�PHAN.dat');
{$i-} reset(kut); kod:=ioresult;{$i+}
if kod<>0 then begin clrscr; klastas; gotoxy(33,12);writeln('Kay�t Yok..');readln; halt; end;
clrscr;
klastas;
ciz(23,9,56,11);
gotoxy(25,10);write('Silmek �stedi�iniz Kay�t �simi');
gotoxy(39,12);write(#175' ');readln(ara);
for i:=0 to filesize(kut)-1 do
begin
seek(kut,i);
read(kut,k);
end;
if (ara=k.ad) and (k.f='*') then
begin
clrscr;
klastas;
ciz(3,5,30,7);
gotoxy(5,6);write(' Kay�t Silme '#175' ');
write(k.ad);
write(k.soyad);
write(k.tel);
write(k.kitap);
write(k.yazar);
write(k.atarih);
write(k.ttarih);
ciz(20,11,60,13);gotoxy(26,12);write('Silinecek Kay�t Bu Mu? [E/H]');
ch:=readkey;
if ch='e' then
begin
k.f:='S';
seek(kut,i);
gotoxy(64,23);writeln('Kay�t Silindi..');
ch:=readkey;
end;
repeat
ciz(20,14,60,16);gotoxy(22,15);write('Ba�ka Girilecek Kay�t Var M�? [E/H] ');
ch:=readkey;
until ch in ['H','h'];
close(kut);
end;
end;
procedure degis;
begin
repeat
assign(kut,'d:K�T�PHAN.dat');
{$i-} reset(kut); kod:=ioresult;{$i+}
if kod<>0 then begin clrscr; writeln('Kay�t Yok..'); halt; end;
begin
clrscr;
klastas; ciz(18,11,62,13); ciz(3,5,30,7);
gotoxy(5,6);write(' Kay�t De�i�tir '#175' ');
gotoxy(19,12);write('De�i�tirmek �stedi�iniz Kay�t �simi Giriniz');
gotoxy(35,14);write(#175'');readln(ara);
for i:=0 to filesize(kut)-1 do
begin
seek(kut,i);
read(kut,k);
if (ara=k.ad) and (k.f='*') then
begin
clrscr;
klastas;
ciz(3,5,30,7);gotoxy(5,6);write(' Kay�t De�i�tir '#175' ');
gotoxy(5,8);write(k.ad);
gotoxy(5,9);write(k.soyad);
gotoxy(5,10);write(k.tel);
gotoxy(5,11);write(k.kitap);
gotoxy(5,12);write(k.yazar);
gotoxy(5,13);write(k.atarih);
gotoxy(5,14);write(k.ttarih);
ciz(23,14,57,16);gotoxy(25,15);write('D�zeltilecek Kay�t Bu Mu? [E/H]');
ch:=readkey;
if ch='E' then
begin
clrscr; klastas; ciz(16,5,63,13);
gotoxy(20,6);write('Yeni Ad� Giriniz                 '#175' ');readln(k.ad);
gotoxy(20,7);write('Yeni Soyad� Griniz               '#175' ');readln(k.soyad);
gotoxy(20,8);write('Yeni Tel. No Giriniz             '#175' ');readln(k.tel);
gotoxy(20,9);write('Yeni Kitap Ad� Giriniz           '#175' ');readln(k.kitap);
gotoxy(20,10);write('Yeni Yazar Ad� Giriniz           '#175' ');readln(k.yazar);
gotoxy(20,11);write('Yeni Kitap Al�� Tarihi Giriniz   '#175' ');readln(k.atarih);
gotoxy(20,12);write('Yeni Teslim Tarihi Giriniz       '#175' ');readln(k.ttarih);
ciz(16,14,63,16); textcolor(10);
gotoxy(20,21);write('Ba�ka De�i�tirilecek Kay�t Var M�? [E/H]');
ch:=readkey;
seek(kut,i);
write(kut,k);
gotoxy(31,14);write('��lem Tamamland�..');
end;
end;
clrscr;
klastas;
gotoxy(35,12);write('Kay�t Yok..');
readln;
end;
end;
until ch in ['H','h'];
close(kut);
end;
procedure kekle;
begin
assign(kkut,'d:KITKAYIT.dat');
{$i-} reset(kkut); kod:=ioresult;{$i+}
if kod<>0 then begin rewrite(kkut); end;
repeat
clrscr;
klastas; ciz(16,5,63,11); textcolor(10);
gotoxy(20,6);write('Kitap Ad� Giriniz    '#175' ');readln(k.kad);
gotoxy(20,7);write('Yazar Ad� G�riniz    '#175' ');readln(k.kyazar);
gotoxy(20,8);write('Tel. No Giriniz      '#175' ');readln(k.ktel);
gotoxy(20,9);write('Yay�nc�l�k           '#175' ');readln(k.kyay);
gotoxy(20,10);write('Kitap Ba��� Tarihi   '#175' ');readln(k.kbtarih);
ciz(16,12,63,14); textcolor(10);
gotoxy(20,13);write('Ba�ka Girilecek Kay�t Var M�? [E/H] '#175' ');
k.f:='*';
seek(kkut,filesize(kkut));write(kkut,k);
ch:=readkey;
until ch in ['H','h'];
close(kkut);
end;
procedure kliste;
begin
assign(kkut,'d:KITKAYIT.dat');
{$i-} reset(kkut); kod:=ioresult;{$i+}
if kod<>0 then begin clrscr; gotoxy(34,12);write('Kay�t Yok..'); end;
clrscr;
klastas; ciz(3,2,78,4); ciz(3,5,78,7); ciz(3,8,78,23);
gotoxy(4,6);  write('Kitap Ad�');
gotoxy(13,6); write('Kitap Yazar�');
gotoxy(25,6); write('Telefon');
gotoxy(36,6); write('Yay�nl�l�k');
gotoxy(47,6); write('Kitap Ba��� Tarihi');
for i:=0 to filesize(kkut)-1 do
begin
seek(kkut,i);
read(kkut,k);
if k.f='*' then begin
a:=9;
gotoxy(4,a);  writeln(k.kad);
gotoxy(12,a); writeln(k.yazar);
gotoxy(22,a); writeln(k.ktel);
gotoxy(32,a); writeln(k.kyay);
gotoxy(40,a); writeln(k.kbtarih);   end;
if a>18 then
begin
gotoxy(38,23);write('Di�er Bir Sayfa ��in Bir Tu�a Bas�n�z..');
ch:=readkey;
a:=0;
clrscr;
end;
gotoxy(4,23);write('Listelenecek Kitaplar Bitti..');
readln;
close(kkut);
end;
end;
procedure ksil;
begin
assign(kkut,'d:KITKAYIT.dat');
{$i-} reset(kkut); kod:=ioresult;{$i+}
if kod<>0 then begin clrscr; gotoxy(34,12);write('Kay�t Yok..'); halt; end;
clrscr; klastas; ciz(23,9,56,11);
gotoxy(25,10);write('Silmek �stedi�iniz Kitap �simi');
gotoxy(39,12);write(#175' ');readln(ara);
for i:=0 to filesize(kkut)-1 do
begin
seek(kkut,i);
read(kkut,k);
end;
if (ara=k.kad) and (k.f='*') then
begin
clrscr; klastas; ciz(3,5,30,7); gotoxy(5,6);write( 'Kay�t Silme '#175' ');
gotoxy(5,6);write(k.kad);
gotoxy(5,7);write(k.kyazar);
gotoxy(5,8);write(k.ktel);
gotoxy(5,9);write(k.kyay);
gotoxy(5,10);write(k.kbtarih);
ciz(20,11,60,13);gotoxy(26,12);write('Silinecek Kitap Bu Mu? [E/H]');
ch:=readkey;
if ch='e' then
begin
k.f:='S';
seek(kkut,i);
gotoxy(64,23);write('Kitap Silindi..');
ch:=readkey;
end;
repeat
ciz(20,14,60,16);gotoxy(22,15);writeln('Ba�ka Silinecek Kitap Var M�? [E/H] ');
ch:=readkey;
until ch in ['H','h'];
close(kkut);
end;
end;
procedure kdegis;
begin
repeat
assign(kkut,'d:KITKAYIT.dat');
{$i-} reset(kkut); kod:=ioresult;{$i+}
if kod<>0 then begin clrscr; gotoxy(34,12); write('Kay�t Yok..'); halt; end;
begin
clrscr; klastas; ciz(16,11,64,13); ciz(3,5,30,7);
gotoxy(4,6);write('Kitap De�i�tir '#175' ');
gotoxy(19,12);write('De�i�tirmek �stedi�iniz Kitap �simi Giriniz');
gotoxy(35,14);write(#175'');readln(ara);
for i:=0 to filesize(kkut)-1 do
begin
seek(kkut,i);
read(kkut,k);
if (ara=k.kad) and (k.f='*') then
begin
clrscr; klastas; ciz(3,5,30,7); gotoxy(5,6); write(' Kitap De�i�tir '#175' ');
gotoxy(5,8);write(k.kad);
gotoxy(5,9);write(k.kyazar);
gotoxy(5,10);write(k.ktel);
gotoxy(5,11);write(k.kyay);
gotoxy(5,12);write(k.kbtarih);
ciz(23,14,57,16); gotoxy(25,15);write('D�zeltilecek Kitap Bu Mu? [E/H]');
ch:=readkey;
if ch='e' then
begin
clrscr;  klastas; ciz(16,5,63,11);
gotoxy(20,6);write('Yeni Kitap Ad� Giriniz '#175' ');readln(k.kad);
gotoxy(20,7);write('Yeni Yazar Ad� Griniz '#175' ');readln(k.kyazar);
gotoxy(20,8);write('Yeni Tel. No Giriniz '#175' ');readln(k.ktel);
gotoxy(20,9);write('Yeni Yay�nc�l�k Ad� Giriniz '#175' ');readln(k.kyay);
gotoxy(20,10);write('Yeni Ba��� Tarihi Giriniz '#175' ');readln(k.kbtarih);
seek(kkut,i);
write(kkut,k);
gotoxy(31,11);write('��lem Tamamland�..');
end;
end;
clrscr;klastas;
ciz(16,13,63,15);
gotoxy(19,11);write('Ba�ka De�i�tirilecek Kitap Var M�? [E/H]');
ch:=readkey;
end;
end;
until ch in ['H','h'];
close(kkut);
end;
procedure hakkimizda;
begin
clrscr; klastas; ciz(5,5,76,7); ciz(9,8,72,10); ciz(9,8,72,10); ciz(13,11,68,13); ciz(20,14,58,23);
gotoxy(31,9);write('Programlama Temeli');
gotoxy(26,6);write('K�t�phane Otomasyon Program�');
gotoxy(33,12);write('Konu Da��l�m� '#175' ');
gotoxy(25,15);write('Nurullah '#175' Procedure+Dosyalama');
gotoxy(25,17);write('Nurettin '#175' Men�');
gotoxy(25,19);write('R�dvan '#175' �er�eve');
readln;
end;
procedure iletisim;
begin
clrscr;
klastas;
ciz(20,9,56,15);
gotoxy(22,11);write('nurullahsevinctekin@hotmail.com');
gotoxy(26,12);write('nkarnak23@hotmail.com');
gotoxy(26,13);write('akman.005@hotmail.com');
readln;
end;
procedure menu;
begin
highvideo;
ciz(1,1,80,24); ciz(3,2,78,4); ciz(20,5,60,7); ciz(20,21,60,23); ciz(62,8,78,23); ciz(3,8,18,23); ciz(62,5,78,7);
ciz(3,5,18,7); ciz(3,21,18,20); ciz(62,21,78,20); ciz(20,11,38,20); ciz(40,11,60,20); ciz(40,8,60,10);
ciz(20,8,38,10);
textcolor(10);
highvideo;
gotoxy(22,9);write('Kitap Teslim ��.');
gotoxy(42,9);write('Kitap Kay�t ��.');
gotoxy(36,6);write('M E N �');
gotoxy(21,12);write('0-Kay�t Giri�');
gotoxy(21,14);write('1-Kay�t Liste');
gotoxy(21,16);write('2-Kay�t Sil');
gotoxy(21,18);write('3-Kay�t De�i�tir');
gotoxy(41,12);write('4-Kitap Kayd� Ekle');
gotoxy(41,14);write('5-Kitap Kayd� Liste');
gotoxy(41,16);write('6-Kitap Kayd� Sil');
gotoxy(41,18);write('7-Kitap Kayd� De�i�');
gotoxy(7,6);write('ESC-�IKI�');
gotoxy(5,22);write('8-Hakkk�m�zda');
gotoxy(65,22);write('9-�leti�im');
gotoxy(66,6);write('ESC-�IKI�');
gotoxy(20,3);write(' ESENLER TEKN�K VE END�STR� MESLEK L�SES� ');
gotoxy(22,22);write('Se�iminiz [0 1 2 3 4 5 6 7 8 9 10] '#175' ');
end;
begin
repeat
clrscr;
menu;
repeat
ch:=readkey;
until ch in ['0'..'9',#27];
case ch of
'0':ekle;
'1':liste;
'2':sil;
'3':degis;
'4':kekle;
'5':kliste;
'6':ksil;
'7':kdegis;
'8':hakkimizda;
'9':iletisim;
#27:halt;
end;
clrscr;
klastas;
ciz(20,9,60,11);
gotoxy(23,10);writeln('Men�ye D�nmek �stiyormusunuz? [E/H] ');
gotoxy(40,12);write(#175' ');
ch:=readkey;
until ch in ['H','h'];
end.