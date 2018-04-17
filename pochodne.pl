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
