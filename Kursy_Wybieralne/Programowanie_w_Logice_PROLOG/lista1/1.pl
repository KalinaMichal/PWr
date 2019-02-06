kobieta(basia).
kobieta(ona).
kobieta(amanda).

m�czyzna(tomek).
m�czyzna(krzys).
m�czyzna(stefan).

matka(basia, tomek).
matka(ona, tomek).

ojciec(stefan, amanda).
ojciec(stefan, krzys).
ojciec(krzys, basia).

rodzic(X,Y) :- matka(X,Y); ojciec(X,Y).

jest_matk�(X) :- matka(X,_).
jest_ojcem(X) :- ojciec(X,_).
jest_synem(X) :- rodzic(_,X), m�czyzna(X).
jest_c�rk�(X) :- rodzic(_,X), kobieta(X).
siostra(X,Y) :- rodzic(Z,X), rodzic(Z,Y), kobieta(X), X \= Y.
dziadek(X,Y) :- rodzic(X,Z), rodzic(Z,Y), m�czyzna(X).
rodze�stwo(X,Y) :- rodzic(Z,X), rodzic(Z,Y), X \= Y.