/*SILNIA REKURENCYJNIE*/

silnia(0,1).

silnia(N,X):-
	N>0,
	N1 is N-1,
	silnia(N1,X1),
	X is N*X1.

sili(N,X):-
	N>0,
	sili(N,1,X).
sili(0,A,A).
sili(N,A,X):-
	N>0,
	A1 is A*N,
	N1 is N-1,
	sili(N1,A1,X).


/*PARZYSTOŒÆ REKURENCYJNIE*/

parzysta(0).
parzysta(X):-
	X>1,
	X1 is X-2,
	parzysta(X1).


/*PARZYSTOŒÆ ITERACYJNIE*/

iparzysta(N):-
	N>0,
	iparzysta(N,0). 
iparzysta(X,X).
iparzysta(X,A):-
	A<X,
	A1 is A+2,
	iparzysta(X,A1).

	
/*NIEPARZYSTOŒÆ REKURENCYJNIE*/
nieparzysta(1).
nieparzysta(X):-
	X>2, 
	X1 is X-2, 
	nieparzysta(X1).


/*NIEPARZYSTOŒÆ ITERACYJNIE*/
iniepa(N):-
	N>1,
	iniepa(N,1).
iniepa(X,X).
iniepa(X,A):-
	A<X,
	A1 is A+2,
	iniepa(X,A1).


/*FIB REKURENCYJNIE*/
fib(0,1).
fib(1,1).
fib(N,X):-
	N>1,
	N1 is N-1,
	N2 is N-2, 
	fib(N1,X1),
	fib(N2, X2), 
	X is X1+X2. 


/*FIB ITERACYJNIE*/
ifib(0,1).
ifib(N,X):-
	N>0, 
	ifib(N,X,_).

ifib(1,1,1).
ifib(N,A1,A2):-
	N>1,
	N1 is N-1, 
	ifib(N1,A2,A3),
	A1 is A2+A3.


/*podzielnosc przez 3*/
podp3(3).
podp3(X):-
	X>3,
	X1 is X-3,
	podp3(X1).

/*potega*/
exp(X,0,1).
exp(X,N,Y):-
	N>0,
	X>0,
	N1 is N-1,
	exp(X,N1,Y1),
	Y is Y1*X.
	
	
	







	