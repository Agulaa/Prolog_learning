/*silnia rekurencyjnie z odcieciem*/
silnia(0,1) :- !. 

silnia(N,X):-
	N>0,
	N1 is N-1,
	silnia(N1,X1),
	X is N*X1.


/*parzystosc rekurencyjnie z odciêciem*/
rparzysta(0) :- !.
rparzysta(X) :-
	X > 1,
	X1 is X -2,
	rparzysta(X1).

/*ciag fibbonaciego rekurencyjnie z odcieciem*/
rfib(0, 0) :- !.
rfib(1, 1) :- !.
rfib(N, W) :-
	N>1,
	A is N - 1,
	B is N - 2,
	rfib(A, C),
	rfib(B, D),
	W is C + D.

/*spr czy lista jest posortowana z odcieciem*/
sorted([ ]):-!. 
sorted([_]):-!. 
sorted([X, Y| T]) :- 
		X =< Y, 
		sorted([Y | T]).


/*wstawianie*/
wstaw(X, [], [X]):- !.  
wstaw(X, [H|T], [X, H|T]):-
	X=<H.
wstaw(X, [H|T], [H|T1]):- 
	X>H, 
	wstaw(X, T, T1). 



/*min na liscie*/
min([H],H,[]):- !. 
min([H|T], M,[H|T1]):-
	min(T, M, T1), 
	H>M. 
min([H|T], H, T):-
	min(T, M, T1),
	H=<M.


/*member z odcieciem*/
member1(X,[X|L]). 
member1(X,[Y|L]):- member1(X,L).

/*dodanie z odcieciem*/
add1(X,L,L):- member(X,L),!.
add1(X,L,[X|L]).

/*usuwanie elementu z odcieciem*/
del(E, [E | T], T):- !. 
del(E, [H | T], [H | T1]) :-
		 del(E, T, T1). 


/*permutacja z  permutacja*/
perm([ ], [ ]) :- !. 
perm(L, [H | T]) :- 
	del(H, L, L1), 
	perm(L1, T).




























