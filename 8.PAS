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
Write('Yardçm Almak iáin Bir Komut isminin înÅndeki Numarayç Yazarak Entere Basçnçz  : ');
Readln(s);
Case s of
1 :
Begin
clrscr;
Writeln('Sabit , deßiüken veye bir iülem sonucunu bir dosyaya veya ekrana yazçlmasçnç saßlar.');
Writeln('Write Komutunda yazçlan bilgiden sonra yazma iülemi aynç');
Writeln('satçrda devam eder. Yani Kursur bir alt satçra gelmez');
Write('*****************************************************************');
End;
2 :
Begin
clrscr;
Writeln('Sabit , deßiüken veya bir iülem sonucunu bir dosyaya veya ekrana');
Writeln('yazçlmasçnç saßlar. Writeln Komutunda yazçlan bilgiden sonra yazma iülemi bir alt');
Writeln('satçrdan devam eder. Yani Kursîr bir alt satçra geáer');
Write('*****************************************************************');
End;
3 :
Begin
Write('Klavye Vasçtasç ile bilgisayara bilgi gîndermek iáin kullançlçr. ');
Writeln('Gînderilen bilgiler tançmlanan deßiükenler iáinde tutulur. Korsur alt satçra geámez');
Write('*****************************************************************');
end;
4 :
Begin
clrscr;
Writeln('Ekranç temizler');
Writeln('***************************************************************');
End;
Else
Writeln('Program KÅtÅphanesinde Yazdçßçnçz komut ile ilgili bilgi bulunmuyor');
End;
Readln;
END.
