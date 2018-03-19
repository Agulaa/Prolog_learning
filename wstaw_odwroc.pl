nalezy(X,[X|_]).
nalezy(X,[H|T]):-
    X\=H,
    nalezy(X,T). 

polacz([],X,X).
polacz([H|T], X, [H|T1]):-
    	polacz(T, X, T1). 

polaczK([],X,X).
polaczK([H|T], X, [H|T1]):-
    	polaczK(T, X, T1).

polaczP([],X,X).
polaczP([H|T], X, [X|T1]):-
    	polaczP(H,T,T1).

odwroc([],[]).
odwroc([X],[X]).
odwroc([H|T],L):-
     odwroc(T,T1),
     append(T1,[H], L). 


odwrocit(L1, L2):-
    odwrocit(L1, [], L2).

odwrocit([],L,L).
odwrocit([H|T],A,L):-
    	odwrocit(T, [H|A],L).
    	



