kobieta(ewa).
kobieta(ala).
kobieta(ola).
kobieta(marta).
kobieta(anna).
kobieta(iza).

mezczyzna(adam).
mezczyzna(piotr).
mezczyzna(pawel).
mezczyzna(roman).
mezczyzna(jan).
mezczyzna(tomasz).

rodzic(adam,ala).
rodzic(adam,piotr).
rodzic(adam,ola).
rodzic(adam,pawel).
rodzic(ewa,ala).
rodzic(ewa,piotr).
rodzic(ewa,ola).
rodzic(ewa,pawel).
rodzic(jan,tomasz).
rodzic(jan,anna).
rodzic(marta,tomasz).
rodzic(marta,anna).
rodzic(pawel,iza).
rodzic(anna,iza).
rodzic(tomasz,roman).
rodzic(ola,roman).

matka(X,Y):-
	kobieta(X),
	rodzic(X,Y).

ojciec(X,Y):-
	mezczyzna(X),
	rodzic(X,Y).

syn(X,Y):-
	mezczyzna(X),
	rodzic(Y,X).

corka(X,Y):-
	kobieta(X),
	rodzic(Y,X).

brat(X,Y):-
	mezczyzna(X),
	matka(Z,X),
	matka(Z,Y),
	ojciec(M,X),
	ojciec(M,Y),
	X\=Y.

siostra(X,Y):-
	kobieta(X),
	matka(Z,X),
	matka(Z,Y),
	ojciec(M,X),
	ojciec(M,Y),
	X\=Y.

rodzienstwo(X,Y):-
	brat(X,Y);
	siostra(X,Y).

ciocia(X,Y):-
	kobieta(X),
	siostra(X,Z),
	rodzic(Z,Y).

wujek(X,Y):-
	mezczyzna(X),
	siostra(X,Z),
	rodzic(Z,Y).

kuzyn(X,Y):-
	mezczyzna(X),
	rodzic(R,X),
	rodzic(P,Y),
	rodzenstwo(R,P).

kuzynka(X,Y):-
	kobieta(X),
	rodzic(R,X),
	rodzic(P,Y),
	rodzenstwo(R,P).

babcia(X,Y):-
	kobieta(X),
	rodzic(M,Y),
	matka(X,M). 

dziadek(X,Y):-
	mezczyzna(X),
	rodzic(M,Y),
	ojciec(X,M). 
przodek(X,Y):-
	rodzic(X,Y).

przodek(X,Y):-
	rodzic(X,Z),
	przodek(Z,Y).

poMieczu(X,Y):-
	ojciec(Y,X).
	
poMieczu(X,Y):-
	ojciec(Z,X),
	poMieczy(Z,Y). 
	
poKadzieli(X,Y):-
	matka(X,Y).
poKadzieli(X,Y):-
	matka(X,Z),
	poKadzieli(Z,Y).	
	
	


	
