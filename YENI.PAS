uses crt;
var
nur,yedek:text;
ad,soyad,tel,kitap,yazar,atarih,ttarih,kno,ksay,yayev,ara:string;
a,bay,kod:integer;
c,ch,sil,deg,dev,s:char;
yaz:boolean;
procedure cerceve (x1,y1,x2,y2:byte);
var
a:integer;
cizgi:string[80];
begin
textcolor(7);
fillchar (cizgi,80,#196);
cizgi[0]:=chr(x2-x1-1);
gotoxy(x1,y1);write(chr(218),cizgi,chr(191));
for a:=y1+1 to y2-1 do
begin
gotoxy(x1,a);write(chr(179));
gotoxy(x2,a);write(chr(179));
end;
gotoxy(x1,y2);write(chr(192),cizgi,chr(217));
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
procedure giris;
var
kut:text;
begin
clrscr;
highvideo;
textcolor(7);
ciz(1,1,80,24);
cerceve(3,2,78,4);
cerceve(16,5,63,15);
textcolor(10);
gotoxy(6,3);writeln('Copyright'#184' 2013 Nurullah-Nurettin-R�dvan.�zinsiz Kullan�lmas� Yasakt�r');
normvideo;
assign(kut,'m:\K�t�phane.tex');
append(kut);
repeat
textcolor(10);
gotoxy(20,6);write('Ad�n�z� Giriniz         '#175' '); readln(ad);
gotoxy(20,7);write('Soyad�n�z� Giriniz      '#175' '); readln(soyad);
gotoxy(20,8);write('Telefon Numaras� Gir    '#175' '); readln(tel);
gotoxy(20,9);write('Ald���n�z Kitap         '#175' '); readln(kitap);
gotoxy(20,10);write('Kitap Yazar�            '#175' '); readln(yazar);
gotoxy(20,11);write('Kitap Al�� Tarihi       '#175' '); readln(atarih);
gotoxy(20,12);write('Kitap Teslim Tarihi     '#175' '); readln(ttarih);
writeln(kut,ad);
writeln(kut,soyad);
writeln(kut,tel);
writeln(kut,kitap);
writeln(kut,yazar);
writeln(kut,atarih);
writeln(kut,ttarih);
clrscr;
highvideo;
ciz(1,1,80,24);
textcolor(10);
gotoxy(6,24);writeln('Copyright'#184' 2013 Nurullah-Nurettin-R�dvan.�zinsiz Kullan�lmas� Yasakt�r');
normvideo;
textcolor(7);
cerceve(16,8,60,14);
textcolor(10);
gotoxy(18,10);writeln('Ba�ka Girilecek Kay�t Var m�? [E/H]');
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
assign(nur,'m:\k�t�phane.tex');
reset(nur);
clrscr;
highvideo;
textcolor(7);
ciz(1,1,80,24);
cerceve(3,2,78,4);
cerceve(16,5,63,15);
textcolor(10);
gotoxy(6,3);writeln('Copyright'#184' 2013 Nurullah-Nurettin-R�dvan.�zinsiz Kullan�lmas� Yasakt�r');
normvideo;
textcolor(10);
gotoxy(20,6); write('Ad�                     '#175' ');
gotoxy(20,7); write('Soyad�                  '#175' ');
gotoxy(20,8); write('Telefon                 '#175' ');
gotoxy(20,9); write('Ald��� Kitap            '#175' ');
gotoxy(20,10); write('Kitap Yazar�            '#175' ');
gotoxy(20,11); write('Kitap Al�� Tarihi       '#175' ');
gotoxy(20,12);write('Kitap Teslim Tarihi     '#175' ');
repeat
textcolor(10);
a:=0;
a:=a+1;
readln(nur,ad);
readln(nur,soyad);
readln(nur,tel);
readln(nur,kitap);
readln(nur,yazar);
readln(nur,atarih);
readln(nur,ttarih);
gotoxy(50,6); write(ad);
gotoxy(50,7); write(soyad);
gotoxy(50,8); write(tel);
gotoxy(50,9); write(kitap);
gotoxy(50,10); write(yazar);
gotoxy(50,11); write(atarih);
gotoxy(50,12); write(ttarih);
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
assign(kut,'m:\k�t�phane.tex');
assign(yedek,'m:\yedek.tex');
reset(kut);
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
gotoxy(14,10);write('Bu Kayd� Silmek ��in [S] Tu�una \ Devam ��in Entera Bas�n�z');
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
cerceve(16,8,60,14);
textcolor(10);
gotoxy(18,10);writeln('Ba�ka Silinecek Kay�t Var m�? [E/H] : ');
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
assign(kut,'m:\k�t�phane.tex');
assign(yedek,'m:\yedek.tex');
reset(kut);
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
highvideo;
textcolor(7);
ciz(1,1,80,24);
textcolor(10);
gotoxy(6,24);writeln('Copyright'#184' 2013 Nurullah-Nurettin-R�dvan.�zinsiz Kullan�lmas� Yasakt�r');
normvideo;
clrscr;
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
highvideo;
textcolor(7);
ciz(1,1,80,24);
textcolor(10);
gotoxy(6,24);writeln('Copyright'#184' 2013 Nurullah-Nurettin-R�dvan.�zinsiz Kullan�lmas� Yasakt�r');
normvideo;
textcolor(7);
cerceve(16,8,60,14);
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
ciz(1,1,80,24);
cerceve(3,2,78,4);
cerceve(16,5,63,15);
textcolor(10);
gotoxy(6,3);writeln('Copyright'#184' 2013 Nurullah-Nurettin-R�dvan.�zinsiz Kullan�lmas� Yasakt�r');
normvideo;
assign(kay,'m:\kitkay�t.tex');
rewrite(kay);
repeat
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
highvideo;
textcolor(7);
ciz(1,1,80,24);
textcolor(10);
gotoxy(6,24);writeln('Copyright'#184' 2013 Nurullah-Nurettin-R�dvan.�zinsiz Kullan�lmas� Yasakt�r');
normvideo;
textcolor(7);
cerceve(16,8,60,14);
textcolor(10);
gotoxy(18,10);writeln('Ba�ka Girilecek Kay�t Var m�? [E/H]');
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
assign(nur,'m:\kitkay�t.tex');
reset(nur);
clrscr;
textcolor(7);
ciz(1,1,80,24);
cerceve(3,2,78,4);
cerceve(16,5,63,15);
textcolor(10);
gotoxy(6,3);writeln('Copyright'#184' 2013 Nurullah-Nurettin-R�dvan.�zinsiz Kullan�lmas� Yasakt�r');
normvideo;
gotoxy(20,6); write('Kitap Numaras�         '#175' ');
gotoxy(20,7); write('Kitap Sayfas�          '#175' ');
gotoxy(20,8); write('Yay�n Evi              '#175' ');
gotoxy(20,9); write('Kitap Ad�              '#175' ');
gotoxy(20,10); write('Kitap Yazar�           '#175' ');
repeat
a:=0;
a:=a+1;
readln(nur,kno);
readln(nur,ksay);
readln(nur,yayev);
readln(nur,kitap);
readln(nur,yazar);
gotoxy(50,6); write(kno);
gotoxy(50,7); write(ksay);
gotoxy(50,8); write(yayev);
gotoxy(50,9); write(kitap);
gotoxy(50,10); write(yazar);
until eof(nur);
close(nur);

readln;
end;
procedure hakkimizda;
begin
clrscr;
textcolor(7);
cerceve(1,1,80,24);
textcolor(10);
gotoxy(4,9);write('Bu Otomasyon Programlama Temeli Dersinden �dev Alan 3 Arkada��n �devidir.');
readln;
end;
procedure iletisim;
begin
clrscr;
textcolor(7);
cerceve(1,1,80,24);
cerceve(14,7,55,11);
textcolor(10);
gotoxy(19,9);write('nurullahsevinctekin@hotmail.com');
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
ciz(1,1,80,24);
cerceve(3,2,78,4);
cerceve(20,5,60,7);
cerceve(20,8,60,20);
cerceve(20,21,60,23);
cerceve(62,5,78,23);
cerceve(3,5,18,23);
cerceve(62,5,78,7);
cerceve(3,5,18,7);
cerceve(3,8,18,10);
textcolor(10);
Gotoxy(32,6);Write('A N A   M E N U');
gotoxy(21,9);Write('1-Kay�t Giri�i');
gotoxy(21,11);Write('2-Kay�t Listeleme');
gotoxy(21,13);Write('3-Kay�t Silme');
gotoxy(21,15);Write('4-Kay�t De�i�tirme');
gotoxy(21,17);write('5-Kitap Kayd� Ekleme');
gotoxy(21,19);write('6-Kitap Kayd� Listeleme');
gotoxy(5,6);write('7-Hakk�m�zda');
gotoxy(5,9);write('8-�leti�im');
gotoxy(66,6);write('ESC-��k��');
gotoxy(4,3);writeln('  Copyright'#184' 2013 Nurullah-Nurettin-R�dvan.�zinsiz Kullan�lmas� Yasakt�r  ');
gotoxy(25,22);Write('Se�iminiz [1  2  3  4  5  6] '#175' ');
textcolor(2);
repeat
s:=Readkey
until s in ['1'..'9',#27];
case s of
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
cerceve(16,8,60,14);
textcolor(10);
gotoxy(20,12);
gotoxy(18,10);Writeln('Men�ye D�nmek istiyormusunuz? (E/H)  ');
gotoxy(30,12);write(#175' ');
c:=Readkey;
until c in ['H','h'];

end.
