uses crt; 
var 
murat,yedek:text; 
ad,soyad,tel,ara:String; 
yaz:boolean;
deg,dev:char;
bay:byte;
Begin

REPEAT
ASSIGN(Murat,'k:\Dosya.tex');
ASSIGN(Yedek,'k:\Yedek.tex');
RESET(Murat);
REWRITE(Yedek);
clrscr;
Write('De�i�tirmek istedi�iniz Kayd�n Ad�n� Giriniz:');Readln(ara);
Bay:=0;

   Repeat
   yaz:=True;
   Readln(Murat,Ad);
   Readln(Murat,Soyad);
   Readln(Murat,Tel);

   if ara=ad then
     begin
     bay:=1;
     clrscr;
     Writeln(ad);
     Writeln(Soyad);
     Writeln(Tel);
     Writeln('Devam i�in Enter Tu�una, De�i�tirmek i�in (D) Tu�una Bas�n�z..:');
     deg:=Readkey;

 if deg in ['D','d'] then
begin
clrscr;
Write('Yeni Ad� Giriniz....: ');Readln(ad);
Write('Yeni Soyad� Giriniz: ');Readln(soyad);
Write('Yeni Telefon No Gir: ');Readln(Tel);
         Writeln(Yedek,ad);
         Writeln(Yedek,Soyad);
         Writeln(Yedek,Tel);
         yaz:=False;
         end;
end;
if yaz=true then
  begin
  writeln(yedek,ad);
  writeln(yedek,soyad);
  writeln(yedek,tel);
  end
ELSE
  Writeln('Kay�t De�i�tirildi');
until eof(murat);
Close(Murat);
Close(Yedek);
if bay=0 then
   begin
   Writeln('Aranan Kay�t Bulunamad�');
   erase(Yedek);
   end
ELSE
   begin
   Erase(Murat);
   Rename(Yedek,'Dosya.dat');
   end;
Write('De�i�tirilecek Ba�ka Kay�t Varm�? [E/H]');
dev:=readkey;
until dev in ['H','h'];
end.
