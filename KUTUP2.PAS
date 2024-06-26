uses crt;
type
kayityap=record
ad:string[30];
soyad:string[30];
tel:string[30];
kitap:string[30];
yazar:string[30];
atarih:string[30];
ttarih:string[30];
ch:char;
end;
var
kut:file of kayityap;
den:kayityap;
nur,yedek:text;
ad,soyad,tel,kitap,yazar,atarih,ttarih,kno,ksay,yayev,ara:string;
a,bay,kod:integer;
tus,c,ch,sil,deg,dev,s:char;
i:byte;
yaz:boolean;

procedure cerceve (x1,y1,x2,y2:byte);
var
a:integer;
cizgi:string[80];
begin
textcolor(7);
fillchar (cizgi,80,#205);
cizgi[0]:=chr(x2-x1-1);
gotoxy(x1,y1);write(chr(201),cizgi,chr(187));
for a:=y1+1 to y2-1 do
begin
gotoxy(x1,a);write(chr(186));
gotoxy(x2,a);write(chr(186));
end;
gotoxy(x1,y2);write(chr(200),cizgi,chr(188));
end;

procedure ciz (x1,y1,x2,y2:byte);
var
a:integer;
cizgi:string[80];
begin
textcolor(7);
fillchar (cizgi,80,#205);
cizgi[0]:=chr(x2-x1-1);
gotoxy(x1,y1);write(chr(201),cizgi,chr(187));
for a:=y1+1 to y2-1 do
begin
gotoxy(x1,a);write(chr(186));
gotoxy(x2,a);write(chr(186));
end;
gotoxy(x1,y2);write(chr(200),cizgi,chr(188));
end;
procedure klastas;
begin
highvideo;
textcolor(7);
ciz(1,1,80,24);
cerceve(3,2,78,4);
textcolor(10);
gotoxy(6,3);writeln('Copyright'#184' 2013 Nurullah-Nurettin-R�dvan.�zinsiz Kullan�lmas� Yasakt�r');
normvideo;
end;
procedure dosya;
var
ch:char;
kut:text;
begin
clrscr;
klastas;
highvideo;
cerceve(9,9,70,11);
textcolor(10);
gotoxy(12,10);write('Bir ��lem Dosyas� (TEX.) Olu�turmak ��in 1 Tu�una Bas�n�z');
gotoxy(39,12);write(#175);
repeat
ch:=readkey;
until ch in ['1'];
clrscr;
klastas;
highvideo;
assign(kut,'d:k�t�phane.tex');
rewrite(kut);
assign(kut,'d:yedek.tex');
rewrite(kut);
assign(kut,'d:kitkay�t.tex');
rewrite(kut);
cerceve(18,6,61,8);
cerceve(10,9,70,11);
textcolor(10);
gotoxy(20,7);write('Tebrikler Bir ��lem Dosyas� Olu�turdunuz');
gotoxy(12,10);write('Enter �le Men�ye D�nebilir Yada Programdan ��kabilirsiniz');

gotoxy(39,12);write(#175);
readln;
end;
procedure giris;
begin
clrscr;

assign(kut,'d:\K�t�phane.dat');
{$I-}reset(kut); kod:=IOResult; {$I+};
if kod<>0 then rewrite(kut);
repeat
highvideo;
textcolor(7);
ciz(1,1,80,24);
cerceve(3,2,78,4);
cerceve(16,5,63,13);
textcolor(10);
gotoxy(6,3);writeln('Copyright'#184' 2013 Nurullah-Nurettin-R�dvan.�zinsiz Kullan�lmas� Yasakt�r');
normvideo;
textcolor(10);
gotoxy(20,6);write('Ad�n�z� Giriniz         '#175' ',ad);
gotoxy(20,7);write('Soyad�n�z� Giriniz      '#175' ',soyad);
gotoxy(20,8);write('Telefon Numaras� Gir    '#175' ',tel);
gotoxy(20,9);write('Ald���n�z Kitap         '#175' ',kitap);
gotoxy(20,10);write('Kitap Yazar�            '#175' ',yazar);
gotoxy(20,11);write('Kitap Al�� Tarihi       '#175' ',atarih);
gotoxy(20,12);write('Kitap Teslim Tarihi     '#175' ',ttarih);
den.ch:='*';
seek(kut,filesize(kut));
write(kut,den);

                   {
writeln(kut,ad);
writeln(kut,soyad);
writeln(kut,tel);
writeln(kut,kitap);
writeln(kut,yazar);
writeln(kut,atarih);
writeln(kut,ttarih);   }
clrscr;
highvideo;
ciz(1,1,80,24);
textcolor(10);
gotoxy(6,24);writeln('Copyright'#184' 2013 Nurullah-Nurettin-R�dvan.�zinsiz Kullan�lmas� Yasakt�r');
normvideo;
textcolor(7);
cerceve(18,8,61,14);
textcolor(10);
gotoxy(22,10);writeln('Ba�ka Girilecek Kay�t Var m�? [E/H]');
gotoxy(30,12);write(#175' ');
ch:=readkey;
clrscr;
highvideo;
textcolor(7);
ciz(1,1,80,24);
textcolor(10);
gotoxy(6,24);writeln('Copyright'#184' 2013 Nurullah-Nurettin-R�dvan.�zinsiz Kullan�lmas� Yasakt�r');
normvideo;
until ch in['H','h'];
close(kut);
end;
procedure okuma;
var
ch:char;
begin
assign(nur,'d:\k�t�phane.dat');
{$I-}reset(nur); kod:=IOResult;{$I+}
if kod<>0 then
begin
writeln('Dosya Yok..');
ch:=readkey;
halt;
end;
clrscr;
highvideo;
textcolor(7);
cerceve(3,2,78,4);
cerceve(3,5,78,7);
cerceve(3,8,78,23);
ciz(1,1,80,24);
textcolor(10);
gotoxy(6,3);writeln('Copyright'#184' 2013 Nurullah-Nurettin-R�dvan.�zinsiz Kullan�lmas� Yasakt�r');
normvideo;
textcolor(10);
gotoxy(4,6); write('Ad�');
gotoxy(13,6); write('Soyad');
gotoxy(25,6); write('Telefon');
gotoxy(36,6); write('Kitap Ad');
gotoxy(47,6); write('K. Yazar');
gotoxy(66,6); write('Tarih');
repeat
textcolor(10);
a:=8;
for i:=0 to filesize(kut)-1 do
begin
seek(kut,i);
read(kut,den);
if den.ch='*' then
begin
a:=a+1;
                {
readln(kut,ad);
readln(kut,soyad);
readln(kut,tel);
readln(kut,kitap);
readln(kut,yazar);
readln(kut,atarih);
readln(kut,ttarih);  }
gotoxy(3,a);write(i+1);
gotoxy(4,a); write(ad);
gotoxy(13,a); write(soyad);
gotoxy(25,a); write(tel);
gotoxy(36,a); write(kitap);
gotoxy(47,a); write(yazar);
gotoxy(59,a); write(atarih);
gotoxy(69,a); write(ttarih);
end;
if a>18 then
begin
gotoxy(20,21);
write('Di�er Bir Sayfa ��in Bir Tu�a Bas�n�z');
tus:=readkey;
a:=0;
clrscr;
end;
end;
gotoxy(20,21);write('Listelenecek Kay�tlar Bitti');
tus:=readkey;

until eof(nur);
close(nur);

readln;
end;
procedure silme;
var
kut,yedek:text;
begin
clrscr;
highvideo;
textcolor(7);
ciz(1,1,80,24);
textcolor(10);
gotoxy(6,24);writeln('Copyright'#184' 2013 Nurullah-Nurettin-R�dvan.�zinsiz Kullan�lmas� Yasakt�r');
normvideo;
repeat
assign(kut,'d:\k�t�phane.tex');
assign(yedek,'d:\yedek.tex');
{$I-}reset(kut); kod:=IOResult;{$I+}
rewrite(yedek);
clrscr;
highvideo;
textcolor(7);
ciz(1,1,80,24);
textcolor(10);
gotoxy(6,24);writeln('Copyright'#184' 2013 Nurullah-Nurettin-R�dvan.�zinsiz Kullan�lmas� Yasakt�r');
normvideo;
textcolor(7);
cerceve(16,8,60,14);
textcolor(10);
gotoxy(18,10);writeln('Silmek �stedi�iniz Kayd�n Ad�n� Giriniz');
gotoxy(30,12);write(#175' ');readln(ara);
bay:=0;
repeat
yaz:=true;
readln(kut,ad);
readln(kut,soyad);
readln(kut,tel);
readln(kut,kitap);
readln(kut,yazar);
readln(kut,atarih);
readln(kut,ttarih);
if ara=ad then
begin
bay:=1;
writeln(ad);
writeln(soyad);
writeln(tel);
writeln(kitap);
writeln(yazar);
writeln(atarih);
writeln(ttarih);
clrscr;
highvideo;
textcolor(7);
ciz(1,1,80,24);
textcolor(10);
gotoxy(6,24);writeln('Copyright'#184' 2013 Nurullah-Nurettin-R�dvan.�zinsiz Kullan�lmas� Yasakt�r');
normvideo;
cerceve(9,9,70,11);
textcolor(10);
gotoxy(11,10);write('Bu Kayd� Silmek ��in [S] Tu�una \ Devam ��in Entera Bas�n�z');
gotoxy(30,12);write(#175' ');
sil:=readkey;
if sil in ['s','S'] then yaz:=false;
end;
if yaz=true then
begin
writeln(yedek,ad);
writeln(yedek,soyad);
writeln(yedek,tel);
end
else
writeln('Kay�t Silindi');
until eof(kut);
close(kut);
close(yedek);
if bay=0 then
begin
writeln('Aranan Kay�t Bulunamad�');
erase(yedek);
end
else
begin
erase(kut);
rename(yedek,'m:\k�t�phane.tex');
end;
clrscr;
highvideo;
textcolor(7);
ciz(1,1,80,24);
textcolor(10);
gotoxy(6,24);writeln('Copyright'#184' 2013 Nurullah-Nurettin-R�dvan.�zinsiz Kullan�lmas� Yasakt�r');
normvideo;
textcolor(7);
cerceve(18,8,62,14);
textcolor(10);
gotoxy(20,10);writeln('Ba�ka Silinecek Kay�t Var m�? [E/H] : ');
gotoxy(30,12);write(#175' ');
ch:=readkey;
until ch in['H','h'];
end;
procedure degis;
var
kut,yedek:text;
begin
clrscr;
highvideo;
textcolor(7);
ciz(1,1,80,24);
textcolor(10);
gotoxy(6,24);writeln('Copyright'#184' 2013 Nurullah-Nurettin-R�dvan.�zinsiz Kullan�lmas� Yasakt�r');
normvideo;
repeat
assign(kut,'d:\k�t�phane.tex');
assign(yedek,'d:\yedek.tex');
{$I-}reset(kut); kod:=IOResult;{$I+}
rewrite(yedek);
clrscr;
highvideo;
textcolor(7);
ciz(1,1,80,24);
textcolor(10);
gotoxy(6,24);writeln('Copyright'#184' 2013 Nurullah-Nurettin-R�dvan.�zinsiz Kullan�lmas� Yasakt�r');
normvideo;
textcolor(7);
cerceve(14,8,60,14);
textcolor(10);
gotoxy(16,10);write('De�i�tirmek �stedi�iniz Kayd�n Ad�n� Giriniz');
gotoxy(30,12);write(#175' ');readln(ara);
bay:=0;
repeat
yaz:=true;
readln(kut,ad);
readln(kut,soyad);
readln(kut,tel);
readln(kut,kitap);
readln(kut,yazar);
readln(kut,atarih);
readln(kut,ttarih);
if ara=ad then
begin
bay:=1;
clrscr;
highvideo;
textcolor(11);
ciz(1,1,80,24);
textcolor(10);
gotoxy(6,24);writeln('Copyright'#184' 2013 Nurullah-Nurettin-R�dvan.�zinsiz Kullan�lmas� Yasakt�r');
normvideo;
gotoxy(4,2);write('Kay�t Arama;');
textcolor(2);
gotoxy(18,3);writeln(ad);
gotoxy(18,4);writeln(soyad);
gotoxy(18,5);writeln(tel);
gotoxy(18,6);writeln(kitap);
gotoxy(18,7);writeln(yazar);
gotoxy(18,5);writeln(atarih);
gotoxy(18,5);writeln(ttarih);
gotoxy(14,10);writeln('Devam ��in Enter Tu�una, De�i�tirmek ��in [D] Tu�una Bas�n�z');
gotoxy(30,12);write(#175' ');
deg:=readkey;
if deg in ['D','d'] then
begin
clrscr;
klastas;
write('Yeni Ad� Giriniz                   '#175' ');readln(ad);
write('Yeni Soyad� Giriniz                '#175' ');readln(soyad);
write('Yeni Telefon No Giriniz            '#175' ');readln(tel);
write('Yeni Kitap Ad� Giriniz             '#175' ');readln(kitap);
write('Yeni Yazar Ad� Giriniz             '#175' ');readln(yazar);
write('Yeni Kitap Al�� Tarihi Giriniz     '#175' ');readln(atarih);
write('Yeni Kitap Teslim Tarihi Giriniz   '#175' ');readln(ttarih);
writeln(yedek,ad);
writeln(yedek,soyad);
writeln(yedek,tel);
writeln(yedek,kitap);
writeln(yedek,yazar);
writeln(yedek,atarih);
writeln(yedek,ttarih);
yaz:=false;
end;
end;
if yaz=true then
begin
writeln(yedek,ad);
writeln(yedek,soyad);
writeln(yedek,tel);
end
else
writeln('Kay�t De�i�tirildi');
until eof(kut);
close(kut);
close(yedek);
if bay=0 then
begin
writeln('Aranan Kay�t Bulunamad�');
erase(yedek);
end
else
begin
erase(kut);
rename(yedek,'k�t�phane.tex');
end;
clrscr;
klastas;
cerceve(18,8,61,14);
textcolor(10);
gotoxy(18,10);writeln('De�i�tirilecek Ba�ka Kay�t Var M�? [E/H]');
gotoxy(30,12);write(#175' ');
dev:=readkey;
until dev in ['H','h'];

end;
procedure kkayit;
var
kay:text;
begin
clrscr;
highvideo;
textcolor(7);
textcolor(7);
klastas;
assign(kay,'d:\kitkay�t.tex');
{$I-}append(kay); kod:=IOResult;{$I+}
if kod<>0 then rewrite(kay);
repeat
cerceve(16,5,63,13);
textcolor(10);
gotoxy(20,6);write('Kitap Numaras�   '#175' '); readln(kno);
gotoxy(20,7);write('Kitap Sayfas�    '#175' '); readln(ksay);
gotoxy(20,8);write('Yay�n Evi        '#175' '); readln(yayev);
gotoxy(20,9);write('Kitap Ad�        '#175' '); readln(kitap);
gotoxy(20,10);write('Kitap Yazar�     '#175' '); readln(yazar);
writeln(kay,kno);
writeln(kay,ksay);
writeln(kay,yayev);
writeln(kay,kitap);
writeln(kay,yazar);
clrscr;
klastas;
textcolor(7);
cerceve(18,6,61,14);
textcolor(10);
gotoxy(23,10);writeln('Ba�ka Girilecek Kay�t Var m�? [E/H]');
gotoxy(30,12);write(#175' ');
ch:=readkey;
clrscr;
highvideo;
textcolor(7);
ciz(1,1,80,24);
textcolor(10);
gotoxy(6,24);writeln('Copyright'#184' 2013 Nurullah-Nurettin-R�dvan.�zinsiz Kullan�lmas� Yasakt�r');
normvideo;
until ch in['H','h'];
close(kay);
end;
procedure kliste;
var
ch:char;
begin
assign(nur,'d:\kitkay�t.tex');
{$I-}reset(nur); kod:=IOResult;{$I+}
clrscr;
klastas;
cerceve(3,5,78,7);
cerceve(3,8,78,23);
textcolor(10);
gotoxy(4,6); write('Kitap Numaras�');
gotoxy(23,6); write('Kitap Sayfas�');
gotoxy(40,6); write('Yay�n Ev');
gotoxy(52,6); write('Kitap Ad�');
gotoxy(66,6); write('Kitap Yazar�');
repeat
a:=0;
a:=a+1;
readln(nur,kno);
readln(nur,ksay);
readln(nur,yayev);
readln(nur,kitap);
readln(nur,yazar);
gotoxy(4,9); write(kno);
gotoxy(23,9); write(ksay);
gotoxy(40,9); write(yayev);
gotoxy(52,9); write(kitap);
gotoxy(66,9); write(yazar);
until eof(nur);
close(nur);

readln;
end;
procedure hakkimizda;
begin
clrscr;
klastas;
textcolor(7);
cerceve(1,1,80,24);
cerceve(5,5,76,7);
cerceve(9,8,72,10);
cerceve(13,11,68,13);
cerceve(20,14,58,23);
textcolor(10);
gotoxy(31,9);write('Programlama Temeli');
gotoxy(26,6);write('K�t�phane Otomasyon Program�');
gotoxy(33,12);write('Konu Da��l�m� '#175' ');
gotoxy(25,15);write('Nurullah '#175' Procedure+Dosyalama');
gotoxy(25,16);write('Nurettin '#175' Men�');
gotoxy(25,17);write('R�dvan '#175' �er�eve');
readln;
end;
procedure iletisim;
begin
clrscr;
klastas;
textcolor(7);
cerceve(1,1,80,24);
cerceve(20,7,56,12);
textcolor(10);
gotoxy(22,8);write('nurullahsevinctekin@hotmail.com');
gotoxy(26,9);write('nkarnak23@hotmail.com');
gotoxy(26,10);write('akman.005@hotmail.com');
readln;
end;
begin
textcolor(10);
textbackground(8);

repeat
clrscr;
highvideo;
ciz(1,1,80,24);
gotoxy(6,24);writeln('Copyright'#184' 2013 Nurullah-Nurettin-R�dvan.�zinsiz Kullan�lmas� Yasakt�r');
normvideo;
highvideo;
cerceve(1,1,80,24);
cerceve(3,2,78,4);
cerceve(20,5,60,7);
cerceve(20,21,60,23);
cerceve(62,8,78,23);
cerceve(3,8,18,23);
cerceve(62,5,78,7);
cerceve(3,5,18,7);
cerceve(3,21,18,20);
cerceve(62,21,78,20);
cerceve(20,11,38,20);
cerceve(40,11,60,20);
cerceve(40,8,60,10);
cerceve(20,8,38,10);
cerceve(3,8,18,10);
textcolor(10);
gotoxy(22,9);write('Kitap Teslim ��.');
gotoxy(42,9);write('Kitap Kay�t ��.');
Gotoxy(36,6);Write('M E N U');
gotoxy(21,12);Write('1-Kay�t Giri�');
gotoxy(21,14);Write('2-Kay�t Liste');
gotoxy(21,16);Write('3-Kay�t Sil');
gotoxy(21,18);Write('4-Kay�t De�i�tir');
gotoxy(41,12);write('5-Kitap Kayd� Ekle');
gotoxy(41,14);write('6-Kitap Kayd� Liste');
gotoxy(7,6);write('ESC-��k��');
gotoxy(5,22);write('7-Hakk�m�zda');
gotoxy(65,22);write('8-�leti�im');
gotoxy(66,6);write('ESC-��k��');
gotoxy(5,9);write('Dosya ��lemi');
gotoxy(5,11);write('0-Yeni Dosya');
gotoxy(20,3);write(' ESENLER TEKN�K VE END�STR� MESLEK L�SES� ');
gotoxy(22,22);Write('Se�iminiz [0 1  2  3  4  5  6 7 8] '#175' ');
textcolor(2);
repeat
s:=Readkey
until s in ['0'..'9',#27];
case s of
'0':dosya;
'1':giris;
'2':okuma;
'3':silme;
'4':degis;
'5':kkayit;
'6':kliste;
'7':hakkimizda;
'8':iletisim;
#27:Halt;
END;
clrscr;
highvideo;
textcolor(7);
ciz(1,1,80,24);
textcolor(10);
gotoxy(6,24);writeln('Copyright'#184' 2013 Nurullah-Nurettin-R�dvan.�zinsiz Kullan�lmas� Yasakt�r');
normvideo;
textcolor(7);
cerceve(18,6,61,14);
klastas;
textcolor(10);
gotoxy(20,12);
gotoxy(23,10);Writeln('Men�ye D�nmek istiyormusunuz? (E/H)  ');
gotoxy(34,12);write(#175' ');
c:=Readkey;
until c in ['H','h'];

end.
