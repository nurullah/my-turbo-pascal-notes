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
gotoxy(6,3);writeln('Copyright'#184' 2013 Nurullah-Nurettin-Rçdvan.òzinsiz Kullançlmasç Yasaktçr');
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
gotoxy(12,10);write('Bir òülem Dosyasç (TEX.) Oluüturmak òáin 1 Tuüuna Basçnçz');
gotoxy(39,12);write(#175);
repeat
ch:=readkey;
until ch in ['1'];
clrscr;
klastas;
highvideo;
assign(kut,'d:kÅtÅphane.tex');
rewrite(kut);
assign(kut,'d:yedek.tex');
rewrite(kut);
assign(kut,'d:kitkayçt.tex');
rewrite(kut);
cerceve(18,6,61,8);
cerceve(10,9,70,11);
textcolor(10);
gotoxy(20,7);write('Tebrikler Bir òülem Dosyasç Oluüturdunuz');
gotoxy(12,10);write('Enter òle MenÅye Dînebilir Yada Programdan Äçkabilirsiniz');

gotoxy(39,12);write(#175);
readln;
end;
procedure giris;
begin
clrscr;

assign(kut,'d:\KÅtÅphane.dat');
{$I-}reset(kut); kod:=IOResult; {$I+};
if kod<>0 then rewrite(kut);
repeat
highvideo;
textcolor(7);
ciz(1,1,80,24);
cerceve(3,2,78,4);
cerceve(16,5,63,13);
textcolor(10);
gotoxy(6,3);writeln('Copyright'#184' 2013 Nurullah-Nurettin-Rçdvan.òzinsiz Kullançlmasç Yasaktçr');
normvideo;
textcolor(10);
gotoxy(20,6);write('Adçnçzç Giriniz         '#175' ',ad);
gotoxy(20,7);write('Soyadçnçzç Giriniz      '#175' ',soyad);
gotoxy(20,8);write('Telefon Numarasç Gir    '#175' ',tel);
gotoxy(20,9);write('Aldçßçnçz Kitap         '#175' ',kitap);
gotoxy(20,10);write('Kitap Yazarç            '#175' ',yazar);
gotoxy(20,11);write('Kitap Alçü Tarihi       '#175' ',atarih);
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
gotoxy(6,24);writeln('Copyright'#184' 2013 Nurullah-Nurettin-Rçdvan.òzinsiz Kullançlmasç Yasaktçr');
normvideo;
textcolor(7);
cerceve(18,8,61,14);
textcolor(10);
gotoxy(22,10);writeln('Baüka Girilecek Kayçt Var mç? [E/H]');
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
assign(nur,'d:\kÅtÅphane.dat');
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
gotoxy(6,3);writeln('Copyright'#184' 2013 Nurullah-Nurettin-Rçdvan.òzinsiz Kullançlmasç Yasaktçr');
normvideo;
textcolor(10);
gotoxy(4,6); write('Adç');
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
write('Dißer Bir Sayfa òáin Bir Tuüa Basçnçz');
tus:=readkey;
a:=0;
clrscr;
end;
end;
gotoxy(20,21);write('Listelenecek Kayçtlar Bitti');
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
gotoxy(6,24);writeln('Copyright'#184' 2013 Nurullah-Nurettin-Rçdvan.òzinsiz Kullançlmasç Yasaktçr');
normvideo;
repeat
assign(kut,'d:\kÅtÅphane.tex');
assign(yedek,'d:\yedek.tex');
{$I-}reset(kut); kod:=IOResult;{$I+}
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
cerceve(9,9,70,11);
textcolor(10);
gotoxy(11,10);write('Bu Kaydç Silmek òáin [S] Tuüuna \ Devam òáin Entera Basçnçz');
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
cerceve(18,8,62,14);
textcolor(10);
gotoxy(20,10);writeln('Baüka Silinecek Kayçt Var mç? [E/H] : ');
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
assign(kut,'d:\kÅtÅphane.tex');
assign(yedek,'d:\yedek.tex');
{$I-}reset(kut); kod:=IOResult;{$I+}
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
klastas;
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
klastas;
cerceve(18,8,61,14);
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
klastas;
assign(kay,'d:\kitkayçt.tex');
{$I-}append(kay); kod:=IOResult;{$I+}
if kod<>0 then rewrite(kay);
repeat
cerceve(16,5,63,13);
textcolor(10);
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
klastas;
textcolor(7);
cerceve(18,6,61,14);
textcolor(10);
gotoxy(23,10);writeln('Baüka Girilecek Kayçt Var mç? [E/H]');
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
assign(nur,'d:\kitkayçt.tex');
{$I-}reset(nur); kod:=IOResult;{$I+}
clrscr;
klastas;
cerceve(3,5,78,7);
cerceve(3,8,78,23);
textcolor(10);
gotoxy(4,6); write('Kitap Numarasç');
gotoxy(23,6); write('Kitap Sayfasç');
gotoxy(40,6); write('Yayçn Ev');
gotoxy(52,6); write('Kitap Adç');
gotoxy(66,6); write('Kitap Yazarç');
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
gotoxy(26,6);write('KÅtÅphane Otomasyon Programç');
gotoxy(33,12);write('Konu Daßçlçmç '#175' ');
gotoxy(25,15);write('Nurullah '#175' Procedure+Dosyalama');
gotoxy(25,16);write('Nurettin '#175' MenÅ');
gotoxy(25,17);write('Rçdvan '#175' Äeráeve');
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
gotoxy(6,24);writeln('Copyright'#184' 2013 Nurullah-Nurettin-Rçdvan.òzinsiz Kullançlmasç Yasaktçr');
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
gotoxy(22,9);write('Kitap Teslim òü.');
gotoxy(42,9);write('Kitap Kayçt òü.');
Gotoxy(36,6);Write('M E N U');
gotoxy(21,12);Write('1-Kayçt Giriü');
gotoxy(21,14);Write('2-Kayçt Liste');
gotoxy(21,16);Write('3-Kayçt Sil');
gotoxy(21,18);Write('4-Kayçt Deßiütir');
gotoxy(41,12);write('5-Kitap Kaydç Ekle');
gotoxy(41,14);write('6-Kitap Kaydç Liste');
gotoxy(7,6);write('ESC-Äçkçü');
gotoxy(5,22);write('7-Hakkçmçzda');
gotoxy(65,22);write('8-òletiüim');
gotoxy(66,6);write('ESC-Äçkçü');
gotoxy(5,9);write('Dosya òülemi');
gotoxy(5,11);write('0-Yeni Dosya');
gotoxy(20,3);write(' ESENLER TEKNòK VE ENDöSTRò MESLEK LòSESò ');
gotoxy(22,22);Write('Seáiminiz [0 1  2  3  4  5  6 7 8] '#175' ');
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
gotoxy(6,24);writeln('Copyright'#184' 2013 Nurullah-Nurettin-Rçdvan.òzinsiz Kullançlmasç Yasaktçr');
normvideo;
textcolor(7);
cerceve(18,6,61,14);
klastas;
textcolor(10);
gotoxy(20,12);
gotoxy(23,10);Writeln('MenÅye Dînmek istiyormusunuz? (E/H)  ');
gotoxy(34,12);write(#175' ');
c:=Readkey;
until c in ['H','h'];

end.
