uses crt;
type
   kayityap=record
   isim:string[30];
   baba:string[30];
   ana:string[30];
   dogumyer:string[30];
   dogumyil:string[30];
   f:char;
end;

var
   sec:char;
   d:file of kayityap;
   k:kayityap;
   tus:char;
   i,kod:integer;
   ara:string[30];
   s:integer;

procedure kayitgirisi;
begin
   assign(d,'nufus.dat');
   {$i-} reset(d);kod:=IOResult;{$i+};
   if kod<>0 then rewrite(d);
   repeat
      clrscr;
      write('��rencinin ad�n� ve soyad�n� giriniz...:');readln(k.isim);
      if k.isim='' then exit;
      write('��rencinin baba ad�n� giriniz..........:');readln(k.baba);
      write('��rencinin ana ad�n� giriniz...........:');readln(k.ana);
      write('��rencinin do�um yerini giriniz........:');readln(k.dogumyer);
      write('��rencinin do�um y�l�n� giriniz........:');readln(k.dogumyil);

      k.f:='*';
      seek(d,filesize(d));
      write(d,k);
      until 1=2;
end;

procedure kayitarama;
begin
   assign(d,'nufus.dat');
   {$i-} reset(d);kod:=IOResult;{$i+}
   if kod<>0 then
   begin
      writeln('Dosya yok...');
      tus:=readkey;
      halt;
   end;

   repeat
      clrscr;
      write('aradd���n�z ��rencinin ismini giriniz...');readln(ara);
      if ara='' then exit;
      for i:=0 to filesize(d)-1 do
      begin
         seek(d,i);
         read(d,k);
         if (k.f='*') and (k.isim=ara) then
         begin
            clrscr;
            writeln('��rencinin ad� ve soyad�.....:',k.isim);
            writeln('��rencinin baba ad�..........:',k.baba);
            writeln('��rencinin ana ad�...........:',k.ana);
            writeln('��rencinin do�um yeri........:',k.dogumyer);
            writeln('��rencinin do�um y�l�........:',k.dogumyil);
            write('arad���n�z kay�t bu mu [E/H]');
            tus:=readkey;
               if tus='e' then exit;
               if tus='E' then exit;          end;
      end;

      writeln;
      writeln('arad���n�z kay�t yok...');
      tus:=readkey;
   until 1=2;
end;  procedure kayitlistele;
begin
   assign(d,'nufus.dat');
   {$i-} reset(d);kod:=IOResult;{$i+}
   if kod<>0 then
      begin
      writeln('Dosya yok...');
      tus:=readkey;
      halt;
      end;


    clrscr;
   writeln('SIRA NO     ADI SOYADI          BABA ADI     ANA ADI     D.YER�     D.YILI');
   writeln('-------     ----------          --------     -------     ------     -------');

   window(1,3,80,25);
   s:=0;
   for i:=0 to filesize(d)-1 do
   begin
      seek(d,i);
      read(d,k);
      if k.f='*' then
         begin
         s:=s+1;
         gotoxy(4,s);write(i+1);
         gotoxy(13,s);write(k.isim);
         gotoxy(33,s);write(k.baba);
         gotoxy(46,s);write(k.ana);
         gotoxy(58,s);write(k.dogumyer);
         gotoxy(70,s);write(k.dogumyil);
      end;

      if s>18 then
      begin
         gotoxy(20,21);
         write('di�er bir sayfa i�in bir tu�a bas�n�z...');
         tus:=readkey;
         s:=0;
         clrscr;
      end;
   end;

   gotoxy(20,21);write('listelenecek kay�tlar bitti...');
   tus:=readkey;
   window(1,1,80,25);
   close(d);
end;

procedure kayitduzeltme;
var    ara:string[30];  begin
   assign(d,'nufus.dat');
   {$i-} reset(d);kod:=IOResult;{$i+}
   if kod<>0 then
   begin
      writeln('dosya yok...');
      tus:=readkey;
      exit;
   end;

   clrscr;
   write('d�zeltilecek kay�t ismini giriniz...');
   readln(ara);
   for i:=0 to filesize(d)-1 do
   begin
      seek(d,i);
      read(d,k);
      if (ara=k.isim) and (k.f='*') then
      begin
         clrscr;
         writeln('��rencinin ad� ve soyad�.....:',k.isim);
         writeln('��rencinin baba ad�..........:',k.baba);
         writeln('��rencinin ana ad�...........:',k.ana);
         writeln('��rencinin do�um yeri........:',k.dogumyer);
         writeln('��rencinin do�um y�l�........:',k.dogumyil);
         writeln('d�zeltilecek kay�t bu mu [E/H]');
         writeln;
         tus:=readkey;          if tus='e' then
         begin
            write('��rencinin yeni ad�n� ve soyad�n� giriniz...:');readln(k.isim);
            write('��rencinin yeni baba ad�n� giriniz..........:');readln(k.baba);
            write('��rencinin yeni ana ad�n� giriniz...........:');readln(k.ana);
            write('��rencinin yeni do�um yerini giriniz........:');readln(k.dogumyer);
            write('��rencinin yeni do�um y�l�n� giriniz........:');readln(k.dogumyil);
            seek(d,i);
            write(d,k);
            writeln('i�lem tamamland�...');
            close(d);            tus:=readkey;
            exit;               end;
      end;
   end;
   writeln('kay�t yok...');
   close(d);
   tus:=readkey;
end;

procedure kayitsilme;
var
   ara:string[30];
begin
   assign(d,'nufus.dat');

   {$i-} reset(d);kod:=IOResult;{$i+}
   if kod<>0 then
   begin
      writeln('dosya yok...');tus:=readkey;halt;
   end;

                                 clrscr;
   write('silinecek ki�inin ismini gir...:');readln(ara);
   for i:=0 to filesize(d)-1 do
   begin
      seek(d,i);
      read(d,k);
      if (ara=k.isim) and (k.f='*') then
      begin
         clrscr;
         writeln('��rencinin ad� ve soyad�.....:',k.isim);
         writeln('��rencinin baba ad�..........:',k.baba);
         writeln('��rencinin ana ad�...........:',k.ana);
         writeln('��rencinin do�um yeri........:',k.dogumyer);
         writeln('��rencinin do�um y�l�........:',k.dogumyil);
         write('silinecek kay�t bu mu [E/H]');
         tus:=readkey;
         if tus='e' then          begin
            k.f:='s';
            seek(d,i);             write(d,k);
            writeln('kay�t silindi...');             close(d);
            tus:=readkey;
            exit;
         end;
      end;
   end;

   writeln('kay�t yok...');
   close(d);
   tus:=readkey;
end;

procedure cikis;
begin
clrscr;
write('programdan 燍kmak i�in bir tu�a bas�n�z...');
readln;
halt;
end;

begin
repeat
clrscr;
gotoxy(25,7);write('Bilgi Giri�i........1');
gotoxy(25,9);write('Bilgi Arama.........2');
gotoxy(25,11);write('Bilgi Listeleme.....3');
gotoxy(25,13);write('Bilgi D�zeltme......4');
gotoxy(25,15);write('Bilgi Silme.........5');
gotoxy(25,17);write('� I K I �...........6');
gotoxy(25,19);write('SE��M�N�Z.......(1-6) ');
sec:=readkey;
case sec of
   '1':kayitgirisi;
   '2':kayitarama;
   '3':kayitlistele;
   '4':kayitduzeltme;
   '5':kayitsilme;
   '6':cikis;
end;
until 1=2;
end.
