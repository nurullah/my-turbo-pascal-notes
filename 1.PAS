uses crt;
    var
     okul,yedek:text;
     ara,ad,soyad,tel:string;
     ch,dev,sec:char;
     a:integer;
     bay,kod:byte;
     yaz:boolean;
    procedure cerceve(x1,y1,x2,y2:byte);
      var
       a:integer;
       cizgi:string[80];
     Begin
         fillchar (cizgi,80,#205);
         cizgi[0]:=chr(x2-x1-1);
         gotoxy(x1,y1);write(chr(201),cizgi,chr(187));
        for a:=y1+1 to y2-1 do
     Begin
         gotoxy(x1,a);write(chr(186));
         gotoxy(x2,a);write(chr(186));
    end;
       gotoxy(x1,y2);write(chr(200),cizgi,chr(188));
    end;
      procedure ekran;
          begin
           clrscr;
           cerceve(1,1,80,24);
           cerceve(3,2,78,4);
           cerceve(3,5,20,20);
           cerceve(22,5,60,7);
           cerceve(22,8,60,20);
           cerceve(62,5,78,20);
           cerceve(22,21,60,23);
           cerceve(3,21,20,23);
           cerceve(62,21,78,23);
           gotoxy(20,3);
           write('  Programý hazýrlayan : Muharrem KÖRDÜÐÜM  ');
           gotoxy(26,6);
           write('Ders Öðretmeni Murat DENKTAÞ');
     end;
    procedure OgrenciBilgileri;

  procedure KayitGir;
     begin
     assign(okul,'Dosya.Dat');
     rewrite(okul);
   repeat
     clrscr;
     cerceve(10,5,70,15);
     gotoxy(15,7);
     write('Adý giriniz .........: ');readln(ad);
     gotoxy(15,9);
     write('soyad giriniz .......: ');readln(soyad);
     gotoxy(15,11);
     write('telno  giriniz ......: ');readln(tel);
     writeln(okul,ad);
     writeln(okul,soyad);
     writeln(okul,tel);
     cerceve(10,16,70,18);
     gotoxy(25,17);
     write('baþka kayýt girilecek mi? (E/H)  : ');
     ch:=readkey;
    until ch in ['H','h'];
    close(okul);
   end;

 procedure kayitEkle;
    begin
          assign(okul,'Dosya.Dat');
          append(okul);
     repeat
          clrscr;
          cerceve(10,5,70,15);
          gotoxy(15,7);
          write('Adý giriniz ......: ');readln(ad);
          gotoxy(15,9);
          write('soyad giriniz ....: ');readln(soyad);
          gotoxy(15,11);
          write('telno  giriniz ...: ');readln(tel);
          writeln(okul,ad);
          writeln(okul,soyad);
          writeln(okul,tel);
          cerceve(10,16,70,18);
          gotoxy(25,17);
          write('baþka kayýt girilecek mi? (E/H)  : ');
          ch:=readkey;
        Until ch in ['H','h'];
         close(okul);
     end;

  



 procedure kayitOku;
   begin
     clrscr;
     assign(okul,'Dosya.Dat');
     {$i-}reset(okul); kod:=IORESULT{$i+};
     cerceve(2,2,80,25);
     cerceve(2,1,80,4);
     gotoxy(15,2);write('AD');
     gotoxy(30,2);write('SOYADI');
     gotoxy(50,2);write('TELEFON');
     gotoxy(25,20);write('Listelenecek kayýtlar bitti');
     a:=0;
    repeat
    a:=a+1;
    readln(okul,ad);
    readln(okul,soyad);
    readln(okul,tel);
    gotoxy(15,a+4);write(ad);
    gotoxy(30,a+4);write(soyad);
    gotoxy(50,a+4);write(tel);
    until EOF(okul);
    close(okul);
  readln;
end;
procedure KayitDeg;
       begin
       clrscr;
       repeat
       ASSIGN(okul,'Dosya.Dat');
       ASSIGN(yedek,'yedek.Dat');
       reset(okul);
       rewrite(Yedek);
       clrscr;
       cerceve(10,5,70,15);
       gotoxy(22,4);
       write('Düzeltilecek isim : ');readln(ara);
       bay:=0;
       repeat
       yaz:=true;
       readln(okul,ad);
       readln(okul,soyad);
       readln(okul,tel);
       If ara=ad Then





        begin
       bay:=1;
       gotoxy(15,7);  writeln(ad);
       gotoxy(15,9); writeln(soyad);
       gotoxy(15,11); writeln(tel);
       cerceve(10,16,70,18);
       gotoxy(15,17);
       write('Kayýtý deðiþtirmek için "D" tuþuna devam için enter');
       ch:=readkey;
       If ch in ['d','D'] then
       begin
       clrscr;
       cerceve(10,5,70,15);
       gotoxy(15,7);
       write('Yeni isim gir ......: ');readln(ad);
       gotoxy(15,9);
       write('Yeni soyad gir .....: ');readln(soyad);
       gotoxy(15,11);
       write('Yeni telefon gir ...: ');readln(tel);
       writeln(yedek,ad);
       writeln(yedek,soyad);
       writeln(yedek,tel);
       yaz:=false;
      end;
     end;
       If yaz=true then
       begin
       writeln(yedek,ad); writeln(yedek,soyad); writeln(yedek,tel);
      end
       Else
       write('kayýt deðiþtirildi');
       until EOF(okul);
       close(okul);
       Close(Yedek);
       If bay=0 then
       begin
       cerceve(10,16,70,18);
       gotoxy(20,17);
       writeln('Aranýlan kayýt yok. Devam için bir tuþa basýnýz.');
       erase(yedek);
      end
       Else
       Begin
       erase(okul);
       rename(yedek,'Dosya.dat');
      end;
       clrscr;
       cerceve(10,16,70,18);
       gotoxy(25,17);
       write('Deðiþtirilecek baþka kayýt var mý (E/H) : ');
       ch:=readkey;
       until ch in ['H','h'];
     end;
procedure KayitSil;
begin
       clrscr;
       repeat
       ASSIGN(okul,'Dosya.Dat');
       ASSIGN(yedek,'yedek.Dat');
       reset(okul);
       rewrite(Yedek);
       clrscr;
       cerceve(10,5,70,15);
       gotoxy(22,4);
       write('Silmek istediðiniz kiþinin adý : ');readln(ara);
       bay:=0;
       repeat
       yaz:=true;
       readln(okul,ad);
       readln(okul,soyad);
       readln(okul,tel);
      If ara=ad Then
       begin
       bay:=1;
       gotoxy(15,7);writeln(ad);
       gotoxy(15,9);writeln(soyad);
       gotoxy(15,11); writeln(tel);
       cerceve(10,16,70,18);
       gotoxy(20,17);
       write('Bu kayýtý silmek için "S" tuþuna devam için enter');
       ch:=readkey;
       If ch in ['s','S'] then
       yaz:=false;
       end;
       If yaz=true then
       begin
       writeln(yedek,ad); writeln(yedek,soyad); writeln(yedek,tel);
       end
       Else
       write('kayýt silindi');
       until EOF(okul);
       close(okul);
       Close(Yedek);
       If bay=0 then
     

  begin
       cerceve(10,16,70,18);
       gotoxy(15,17);
       writeln('Aranan kayýt bulunamadý');
       erase(yedek);
       end
       Else
       Begin
       erase(okul);
       rename(yedek,'Dosya.dat');
       end;
       clrscr;
       cerceve(10,16,70,18);
       gotoxy(15,17);
       write('Silinecek baþka kayýt var mý (E/H) : ');
       ch:=readkey;
       until ch in ['H','h'];
       end;
      BEGIN
       repeat
          textbackground(1);
          clrscr;
          textcolor(15);
          ekran;
          gotoxy(30,10); writeln('1-Kayýt Gir');
          gotoxy(30,11); writeln('2-Kayýt Ekle');
          gotoxy(30,12); writeln('3-Kayýt Oku');
          gotoxy(30,13); writeln('4-Kayýt Deðiþtir');
          gotoxy(30,14); writeln('5-Kayýt Sil');
          gotoxy(30,15); writeln('6-Kapat');
          gotoxy(30,22); write('Seçiminiz [ ] : ');sec:=readkey;
       case  sec of
          '1':kayitGir;
          '2':kayitEkle;
          '3':KayitOku;
          '4':KayitDeg;
          '5':KayitSil;
          '6':exit;
          #27:exit;
  end;
   ch:=readkey;
   until ch in ['H','h'];
  readln;
end;



procedure DersNotgirisleri;
      var
        y1,y2,y3,s,a:integer;
        ort:real;
   procedure NotuGir;
      begin
      assign(okul,'Dosya.Dat');
      rewrite(okul);
     repeat
      clrscr;
      cerceve(10,5,70,15);
      gotoxy(12,7);  write('Öðrencinin Adý ve soyadý          : ');readln(ad);
      gotoxy(12,8);  write(ad,' 1. Notu         : ');readln(Y1);
      gotoxy(12,9);  write(ad,' 2. Notu         : ');readln(Y2);
      gotoxy(12,10); write(ad,'3. Notu          : ');readln(Y3);
      gotoxy(12,11); write(ad,'Sözlü Notu       : ');readln(S);
      ort:=(y1+y2+y3+s)/4;
      ort:=round(ort);
      gotoxy(12,12); write(ad,'Not  Ortalamasý  : ',ort:0:0);
      writeln(okul,ad);
     writeln(okul,y1);
     writeln(okul,y2);
     writeln(okul,y3);
     writeln(okul,s);
     writeln(okul,Ort);
     cerceve(10,16,70,18);
     gotoxy(25,17);
     write('baþka kayýt girilecek mi? (E/H)  : ');
     ch:=readkey;
   until ch in ['H','h'];
    close(okul);
  end;
 procedure NotuEkle;
 begin
          assign(okul,'Dosya.Dat');
          append(okul);
     repeat
     clrscr;
       cerceve(10,5,70,15);
       gotoxy(12,7); write('Öðrencinin Adý ve soyadý   : ');readln(ad);
       gotoxy(12,8); write(ad,' 1. Notu        : ');readln(Y1);
       gotoxy(12,9); write(ad,' 2. Notu        : ');readln(Y2);
       gotoxy(12,10);write(ad,' 3. Notu        : ');readln(Y3);
       gotoxy(12,11);write(ad,' Sözlü Notu     :');readln(S);
       ort:=(y1+y2+y3+s)/4;
       ort:=round(ort);
       gotoxy(12,12);write(ad,' Not Ortalamasý : ',ort:0:0);

       writeln(okul,ad);
       writeln(okul,y1);
       writeln(okul,y2);
       writeln(okul,y3);
       writeln(okul,s);
       writeln(okul,Ort);
       cerceve(10,16,70,18);
       gotoxy(25,17);
       write('baþka kayýt girilecek mi? (E/H)  : ');
     ch:=readkey;
   until ch in ['H','h'];
    close(okul);
end;
    procedure NotuOku;
   begin
        clrscr;
          assign(okul,'Dosya.Dat');
          reset(okul);
          cerceve(2,2,80,25);
          cerceve(2,1,80,4);
          gotoxy(5,3);write('AD SOYADI');
          gotoxy(20,3);write('1.NOT');
          gotoxy(30,3);write('2.NOT');
          gotoxy(40,3);write('3.NOT');
          gotoxy(50,3);write('SÖZLÜ');
          gotoxy(60,3);write('ORTALAMA');
          gotoxy(20,22);write('Listelenecek kayýtlar bitti');
    a:=0;
    repeat
    a:=a+1;
    readln(okul,ad);
    readln(okul,y1);
    readln(okul,y2);
    readln(okul,y3);
    readln(okul,S);
    readln(okul,ORT);
    gotoxy(5,a+9);write(ad);
    gotoxy(25,a+9);write(Y1);
    gotoxy(35,a+9);write(Y2);
    gotoxy(45,a+9);write(Y3);
    gotoxy(55,a+9);write(S);
    gotoxy(67,a+9);write(ort:0:0);
    until EOF(okul);
    close(okul);
  readln;
 end;


   begin
   repeat
       clrscr;
   ekran;
   gotoxy(30,12); writeln('1-Notu Gir');
   gotoxy(30,13); writeln('2-Notu Ekle');
   gotoxy(30,14); writeln('3-Notu Oku');
   gotoxy(30,15); writeln('4-Kapat');
   gotoxy(30,22); write(' Seçiminiz ');sec:=readkey;
   case  sec of
   '1':NotuGir;
   '2':NotuEkle;
   '3':NotuOku;
   '4':exit;
    #27:exit;
   end;
   clrscr;
   ch:=readkey;
   until ch in ['H','h'];
  readln;
 end;
Begin
       repeat
          textbackground(1);
          textcolor(15);
          ekran;
          textbackground(4);
          gotoxy(20,3);
          gotoxy(5,22);write('  Yeþilyurt   ');
          gotoxy(64,22);write('    Malatya  ');
          textbackground(1);
          gotoxy(30,12); writeln('1-Öðrenci Bilgileri');
          gotoxy(30,14); writeln('2-Ders Not Giriþleri');
          gotoxy(30,16); writeln('3-Çýkýþ');
          textbackground(4);
          gotoxy(24,22); write('          Seçiminiz                ');sec:=readkey;
          case  sec of
          '1':ogrencibilgileri;
          '2':dersnotgirisleri;
          '3':halt;
           #27:halt;
           end;
   dev:=readkey;
   until dev in ['H','h'];
  readln;
end.
