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
gotoxy(6,3);writeln('Copyright'#184' 2013 Nurullah-Nurettin-Rçdvan.òzinsiz Kullançlmasç Yasaktçr');
normvideo;
assign(kut,'m:\KÅtÅphane.tex');
append(kut);
repeat
textcolor(10);
gotoxy(20,6);write('Adçnçzç Giriniz         '#175' '); readln(ad);
gotoxy(20,7);write('Soyadçnçzç Giriniz      '#175' '); readln(soyad);
gotoxy(20,8);write('Telefon Numarasç Gir    '#175' '); readln(tel);
gotoxy(20,9);write('Aldçßçnçz Kitap         '#175' '); readln(kitap);
gotoxy(20,10);write('Kitap Yazarç            '#175' '); readln(yazar);
gotoxy(20,11);write('Kitap Alçü Tarihi       '#175' '); readln(atarih);
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
gotoxy(6,24);writeln('Copyright'#184' 2013 Nurullah-Nurettin-Rçdvan.òzinsiz Kullançlmasç Yasaktçr');
normvideo;
textcolor(7);
cerceve(16,8,60,14);
textcolor(10);
gotoxy(18,10);writeln('Baüka Girilecek Kayçt Var mç? [E/H]');
gotoxy(30,12);write(#175' ');
ch:=readkey;
clrscr;
highvideo;
textcolor(7);
ciz(1,1,80,24);
textcolor(10);
gotoxy(6,24);writeln('Copyright'#184' 2013 Nurullah-Nurettin-Rçdvan.òzinsiz Kullançlmasç Yasaktçr');
normvideo;
until ch in['H','h'];
close(kut);
end;
procedure okuma;
var
ch:char;
begin
assign(nur,'m:\kÅtÅphane.tex');
reset(nur);
clrscr;
highvideo;
textcolor(7);
ciz(1,1,80,24);
cerceve(3,2,78,4);
cerceve(16,5,63,15);
textcolor(10);
gotoxy(6,3);writeln('Copyright'#184' 2013 Nurullah-Nurettin-Rçdvan.òzinsiz Kullançlmasç Yasaktçr');
normvideo;
textcolor(10);
gotoxy(20,6); write('Adç                     '#175' ');
gotoxy(20,7); write('Soyadç                  '#175' ');
gotoxy(20,8); write('Telefon                 '#175' ');
gotoxy(20,9); write('Aldçßç Kitap            '#175' ');
gotoxy(20,10); write('Kitap Yazarç            '#175' ');
gotoxy(20,11); write('Kitap Alçü Tarihi       '#175' ');
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
gotoxy(6,24);writeln('Copyright'#184' 2013 Nurullah-Nurettin-Rçdvan.òzinsiz Kullançlmasç Yasaktçr');
normvideo;
repeat
assign(kut,'m:\kÅtÅphane.tex');
assign(yedek,'m:\yedek.tex');
reset(kut);
rewrite(yedek);
clrscr;
highvideo;
textcolor(7);
ciz(1,1,80,24);
textcolor(10);
gotoxy(6,24);writeln('Copyright'#184' 2013 Nurullah-Nurettin-Rçdvan.òzinsiz Kullançlmasç Yasaktçr');
normvideo;
textcolor(7);
cerceve(16,8,60,14);
textcolor(10);
gotoxy(18,10);writeln('Silmek òstedißiniz Kaydçn Adçnç Giriniz');
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
gotoxy(6,24);writeln('Copyright'#184' 2013 Nurullah-Nurettin-Rçdvan.òzinsiz Kullançlmasç Yasaktçr');
normvideo;
gotoxy(14,10);write('Bu Kaydç Silmek òáin [S] Tuüuna \ Devam òáin Entera Basçnçz');
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
writeln('Kayçt Silindi');
until eof(kut);
close(kut);
close(yedek);
if bay=0 then
begin
writeln('Aranan Kayçt Bulunamadç');
erase(yedek);
end
else
begin
erase(kut);
rename(yedek,'m:\kÅtÅphane.tex');
end;
clrscr;
highvideo;
textcolor(7);
ciz(1,1,80,24);
textcolor(10);
gotoxy(6,24);writeln('Copyright'#184' 2013 Nurullah-Nurettin-Rçdvan.òzinsiz Kullançlmasç Yasaktçr');
normvideo;
textcolor(7);
cerceve(16,8,60,14);
textcolor(10);
gotoxy(18,10);writeln('Baüka Silinecek Kayçt Var mç? [E/H] : ');
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
gotoxy(6,24);writeln('Copyright'#184' 2013 Nurullah-Nurettin-Rçdvan.òzinsiz Kullançlmasç Yasaktçr');
normvideo;
repeat
assign(kut,'m:\kÅtÅphane.tex');
assign(yedek,'m:\yedek.tex');
reset(kut);
rewrite(yedek);
clrscr;
highvideo;
textcolor(7);
ciz(1,1,80,24);
textcolor(10);
gotoxy(6,24);writeln('Copyright'#184' 2013 Nurullah-Nurettin-Rçdvan.òzinsiz Kullançlmasç Yasaktçr');
normvideo;
textcolor(7);
cerceve(14,8,60,14);
textcolor(10);
gotoxy(16,10);write('Deßiütirmek òstedißiniz Kaydçn Adçnç Giriniz');
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
gotoxy(6,24);writeln('Copyright'#184' 2013 Nurullah-Nurettin-Rçdvan.òzinsiz Kullançlmasç Yasaktçr');
normvideo;
gotoxy(4,2);write('Kayçt Arama;');
textcolor(2);
gotoxy(18,3);writeln(ad);
gotoxy(18,4);writeln(soyad);
gotoxy(18,5);writeln(tel);
gotoxy(18,6);writeln(kitap);
gotoxy(18,7);writeln(yazar);
gotoxy(18,5);writeln(atarih);
gotoxy(18,5);writeln(ttarih);
gotoxy(14,10);writeln('Devam òáin Enter Tuüuna, Deßiütirmek òáin [D] Tuüuna Basçnçz');
gotoxy(30,12);write(#175' ');
deg:=readkey;
if deg in ['D','d'] then
begin
clrscr;
highvideo;
textcolor(7);
ciz(1,1,80,24);
textcolor(10);
gotoxy(6,24);writeln('Copyright'#184' 2013 Nurullah-Nurettin-Rçdvan.òzinsiz Kullançlmasç Yasaktçr');
normvideo;
clrscr;
write('Yeni Adç Giriniz                   '#175' ');readln(ad);
write('Yeni Soyadç Giriniz                '#175' ');readln(soyad);
write('Yeni Telefon No Giriniz            '#175' ');readln(tel);
write('Yeni Kitap Adç Giriniz             '#175' ');readln(kitap);
write('Yeni Yazar Adç Giriniz             '#175' ');readln(yazar);
write('Yeni Kitap Alçü Tarihi Giriniz     '#175' ');readln(atarih);
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
writeln('Kayçt Deßiütirildi');
until eof(kut);
close(kut);
close(yedek);
if bay=0 then
begin
writeln('Aranan Kayçt Bulunamadç');
erase(yedek);
end
else
begin
erase(kut);
rename(yedek,'kÅtÅphane.tex');
end;
clrscr;
highvideo;
textcolor(7);
ciz(1,1,80,24);
textcolor(10);
gotoxy(6,24);writeln('Copyright'#184' 2013 Nurullah-Nurettin-Rçdvan.òzinsiz Kullançlmasç Yasaktçr');
normvideo;
textcolor(7);
cerceve(16,8,60,14);
textcolor(10);
gotoxy(18,10);writeln('Deßiütirilecek Baüka Kayçt Var Mç? [E/H]');
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
gotoxy(6,3);writeln('Copyright'#184' 2013 Nurullah-Nurettin-Rçdvan.òzinsiz Kullançlmasç Yasaktçr');
normvideo;
assign(kay,'m:\kitkayçt.tex');
rewrite(kay);
repeat
gotoxy(20,6);write('Kitap Numarasç   '#175' '); readln(kno);
gotoxy(20,7);write('Kitap Sayfasç    '#175' '); readln(ksay);
gotoxy(20,8);write('Yayçn Evi        '#175' '); readln(yayev);
gotoxy(20,9);write('Kitap Adç        '#175' '); readln(kitap);
gotoxy(20,10);write('Kitap Yazarç     '#175' '); readln(yazar);
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
gotoxy(6,24);writeln('Copyright'#184' 2013 Nurullah-Nurettin-Rçdvan.òzinsiz Kullançlmasç Yasaktçr');
normvideo;
textcolor(7);
cerceve(16,8,60,14);
textcolor(10);
gotoxy(18,10);writeln('Baüka Girilecek Kayçt Var mç? [E/H]');
gotoxy(30,12);write(#175' ');
ch:=readkey;
clrscr;
highvideo;
textcolor(7);
ciz(1,1,80,24);
textcolor(10);
gotoxy(6,24);writeln('Copyright'#184' 2013 Nurullah-Nurettin-Rçdvan.òzinsiz Kullançlmasç Yasaktçr');
normvideo;
until ch in['H','h'];
close(kay);
end;
procedure kliste;
var
ch:char;
begin
assign(nur,'m:\kitkayçt.tex');
reset(nur);
clrscr;
textcolor(7);
ciz(1,1,80,24);
cerceve(3,2,78,4);
cerceve(16,5,63,15);
textcolor(10);
gotoxy(6,3);writeln('Copyright'#184' 2013 Nurullah-Nurettin-Rçdvan.òzinsiz Kullançlmasç Yasaktçr');
normvideo;
gotoxy(20,6); write('Kitap Numarasç         '#175' ');
gotoxy(20,7); write('Kitap Sayfasç          '#175' ');
gotoxy(20,8); write('Yayçn Evi              '#175' ');
gotoxy(20,9); write('Kitap Adç              '#175' ');
gotoxy(20,10); write('Kitap Yazarç           '#175' ');
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
gotoxy(4,9);write('Bu Otomasyon Programlama Temeli Dersinden ôdev Alan 3 Arkadaüçn ôdevidir.');
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
gotoxy(6,24);writeln('Copyright'#184' 2013 Nurullah-Nurettin-Rçdvan.òzinsiz Kullançlmasç Yasaktçr');
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
gotoxy(21,9);Write('1-Kayçt Giriüi');
gotoxy(21,11);Write('2-Kayçt Listeleme');
gotoxy(21,13);Write('3-Kayçt Silme');
gotoxy(21,15);Write('4-Kayçt Deßiütirme');
gotoxy(21,17);write('5-Kitap Kaydç Ekleme');
gotoxy(21,19);write('6-Kitap Kaydç Listeleme');
gotoxy(5,6);write('7-Hakkçmçzda');
gotoxy(5,9);write('8-òletiüim');
gotoxy(66,6);write('ESC-Äçkçü');
gotoxy(4,3);writeln('  Copyright'#184' 2013 Nurullah-Nurettin-Rçdvan.òzinsiz Kullançlmasç Yasaktçr  ');
gotoxy(25,22);Write('Seáiminiz [1  2  3  4  5  6] '#175' ');
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
gotoxy(6,24);writeln('Copyright'#184' 2013 Nurullah-Nurettin-Rçdvan.òzinsiz Kullançlmasç Yasaktçr');
normvideo;
textcolor(7);
cerceve(16,8,60,14);
textcolor(10);
gotoxy(20,12);
gotoxy(18,10);Writeln('MenÅye Dînmek istiyormusunuz? (E/H)  ');
gotoxy(30,12);write(#175' ');
c:=Readkey;
until c in ['H','h'];

end.
