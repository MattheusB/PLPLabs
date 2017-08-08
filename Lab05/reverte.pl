:- initialization(main).

main:-
	repeat,
	read(X),
	reverte(X, Y),
	write(Y),nl,
	halt(0).
	
	
	
reverte([], []).
reverte([Cabeca|Cauda], Lista) :- reverte(Cauda, Cauda2), junta(Cauda2, [Cabeca], Lista).

junta([], Lista, Lista).
junta([Cabeca|Lista1], Lista2, [Cabeca|Lista3]) :- junta(Lista1, Lista2, Lista3).
