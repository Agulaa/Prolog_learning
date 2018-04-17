/*Pochodna */
d(X, X, 1):-!.
d(E, X, 0):-
    atomic(E),
    !.


/*suma pochodnych*/
d(A+B, X, DA+DB):-
        d(A, X, DA),
        d(B,X,DB).


/*roznica*/
d(A-B, X, DA-DB):-
        d(A, X, DA),
        d(B,X,DB).


/*iloczyn*/
d(A*B,X,DA*B+A*DB) :- !,
	d(A,X,DA),
	d(B,X,DB).


/*iloraz*/
d(A/B,X,(DA*B-DB*A)/(B*B)) :- !,
	d(A,X,DA),
	d(B,X,DB).


/*log naturalny*/
d(ln(A), X, DA/A):-!,
    d(A,X,DA).


/*Pochodna tangensa*/
d(tan(A), X, DA/A ):-!,
    d(A,X,DA).


/*Sinus*/
d(sin(A),X,DA*cos(A)):-!,
    d(A,X,DA).


/*cosinus*/
d(cos(A),X, (-1)*DA*sin(A) ):- !,
        d(A,X,DA).


/*tangens*/
d(tg(A), X, DA/cos(A)*cos(A)):- !,
          d(A,X,DA).


/*cotangens*/
d(ctg(A), X, (-1)*DA/sin(A)*sin(A)):- !,
          d(A,X,DA).
