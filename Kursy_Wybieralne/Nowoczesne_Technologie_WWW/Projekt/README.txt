�eby dzia�a� SQLite trzeba wej�� do XAMPPA i:
1) Przycisk Config przy Apache -> PHP (php.ini)
2) szukamy wszystkie wyst�pienia sqlite i:
  a) odkomentowujemy "extension=sqlite3" (usuwamy �rednik)
  b) odkomentowujemy "sqlite3.extension_dir =" i przypisujemy mu �cie�k� absolutn� do "php_sqlite3.dll". T� bibliotek� umie�ci�em w folderze db. Ja osobi�cie wrzuci�em sobie j� do "C:/xampp/htdocs", wi�c moja linijka w php.ini wygl�da tak: "sqlite3.extension_dir = "C:/xampp/htdocs""
3) i w sumie powinno dzia�a�