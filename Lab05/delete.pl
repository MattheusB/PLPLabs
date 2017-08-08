:- initialization(main).

main:-
	repeat,
	read(X),
	read(Y),
	remove(Y, X, Z),
	write(Z),nl,
	halt(0).
	
	
remove(Cabeca, [], []).
remove(Cabeca, [Cabeca|Cauda], Cauda).
remove(Cabeca, [Cabeca2|Cauda], [Cabeca2|Cauda2]):- remove(Cabeca,Cauda,Cauda2).
