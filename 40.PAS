uses crt;
var
ad,sonuc :Array [1..5] of string;
vize,final : Array [1..5] of byte;
ort: Array [1..5] of Real;
a:Byte;
Begin
     clrscr;
     For a:=1 to 5 do
         Begin
         Write(a, '. Adç Giriniz  : ');Readln( ad [a] );
         Write('Vize Notunu Girirniz  : ');Readln(vize[a]);
         write('Final Notunu Girirniz : ');Readln(final[a]);
         ort[a]:=vize[a]*0.3+final[a]*0.7 ;
         ort[a]:=ROUND(ort[a]);
         if (final[a]< 50) or (ort[a]<50) then
         sonuc[a]:='BÅTÅNLEME'
         ELSE
         sonuc[a]:='GEÄTò';
         end;

     clrscr;
     textcolor(15);
     gotoxy(10,2);Write ('ADI SOYADI');
     gotoxy(30,2);Write ('ViZE');
     gotoxy(40,2);Write ('FiNAL');
     gotoxy(50,2);Write ('ORTALAMASI');
     gotoxy(60,2);Write ('SONUC');
     gotoxy(10,3);Write ('============================================================');

     For a:=1 to 5 do
         Begin
         Gotoxy(10,a+4);Write(ad [a] );
         Gotoxy(30,a+4);Write(vize[a] );
         if final[a]<50 then textcolor(Red) else textcolor(15);
         Gotoxy(40,a+4);Write(final[a] );
         if ort[a]<50 then textcolor(Red) else textcolor(15);
         gotoxy(50,a+4);Write(ort [a]:0:0 );
         if sonuc[a]='B‹T‹NLEME' then textcolor(red) ;
         Gotoxy(60,a+4);Write(sonuc [a]);
         Textcolor(15);
         end;Readln;END.
uses crt;
var
ad,sonuc :Array [1..5] of string;
vize,final : Array [1..5] of byte;
ort: Array [1..5] of Real;
a:Byte;
Begin
     clrscr;
     For a:=1 to 5 do
         Begin
         Write(a, '. Adç Giriniz  : ');Readln( ad [a] );
         Write('Vize Notunu Girirniz  : ');Readln(vize[a]);
         write('Final Notunu Girirniz : ');Readln(final[a]);
         ort[a]:=vize[a]*0.3+final[a]*0.7 ;
         ort[a]:=ROUND(ort[a]);
         if (final[a]< 50) or (ort[a]<50) then
         sonuc[a]:='BÅTÅNLEME'
         ELSE
         sonuc[a]:='GEÄTò';
         end;

     clrscr;
     textcolor(15);
     gotoxy(10,2);Write ('ADI SOYADI');
     gotoxy(30,2);Write ('ViZE');
     gotoxy(40,2);Write ('FiNAL');
     gotoxy(50,2);Write ('ORTALAMASI');
     gotoxy(60,2);Write ('SONUC');
     gotoxy(10,3);Write ('============================================================');

     For a:=1 to 5 do
         Begin
         Gotoxy(10,a+4);Write(ad [a] );
         Gotoxy(30,a+4);Write(vize[a] );
         if final[a]<50 then textcolor(Red) else textcolor(15);
         Gotoxy(40,a+4);Write(final[a] );
         if ort[a]<50 then textcolor(Red) else textcolor(15);
         gotoxy(50,a+4);Write(ort [a]:0:0 );
         if sonuc[a]='BÅTÅNLEME' then textcolor(red) ;
         Gotoxy(60,a+4);Write(sonuc [a]);
         Textcolor(15);
         end;
Readln;
END.

