Uses crt;
var
s:byte;
Begin
clrscr;
Writeln('K O M U T L A R':40);
Writeln('1. Write  ':38);
Writeln('2. Writeln':38);
Writeln('3. Read   ':38);
Writeln('4. Clrscr ':38);
Writeln;
Write('Yard�m Almak i�in Bir Komut isminin �n�ndeki Numaray� Yazarak Entere Bas�n�z  : ');
Readln(s);
Case s of
1 :
Begin
clrscr;
Writeln('Sabit , de�i�ken veye bir i�lem sonucunu bir dosyaya veya ekrana yaz�lmas�n� sa�lar.');
Writeln('Write Komutunda yaz�lan bilgiden sonra yazma i�lemi ayn�');
Writeln('sat�rda devam eder. Yani Kursur bir alt sat�ra gelmez');
Write('*****************************************************************');
End;
2 :
Begin
clrscr;
Writeln('Sabit , de�i�ken veya bir i�lem sonucunu bir dosyaya veya ekrana');
Writeln('yaz�lmas�n� sa�lar. Writeln Komutunda yaz�lan bilgiden sonra yazma i�lemi bir alt');
Writeln('sat�rdan devam eder. Yani Kurs�r bir alt sat�ra ge�er');
Write('*****************************************************************');
End;
3 :
Begin
Write('Klavye Vas�tas� ile bilgisayara bilgi g�ndermek i�in kullan�l�r. ');
Writeln('G�nderilen bilgiler tan�mlanan de�i�kenler i�inde tutulur. Korsur alt sat�ra ge�mez');
Write('*****************************************************************');
end;
4 :
Begin
clrscr;
Writeln('Ekran� temizler');
Writeln('***************************************************************');
End;
Else
Writeln('Program K�t�phanesinde Yazd���n�z komut ile ilgili bilgi bulunmuyor');
End;
Readln;
END.
