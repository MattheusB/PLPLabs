:- initialization(main).

somaNaoDuplicadas(X, Y):- removeRepetidos(X, Z), somaElementos(Z, Y).
	
somaElementos([],0).
somaElementos([Cabeca|Cauda],Soma):- somaElementos(Cauda,Soma2), Soma is Cabeca+Soma2.
	
	
removeRepetidos([], []).
removeRepetidos([Cabeca|Cauda], [Cabeca|Cauda2]):- retiraAux(Cabeca, Cauda, Lista), removeRepetidos(Lista, Cauda2).


retiraAux(_, [], []).
retiraAux(Cabeca, [Cabeca|Cauda], Lista):- retiraAux(Cabeca, Cauda, Lista).
retiraAux(Cabeca, [Cabeca2|Cauda], [Cabeca2|Cauda2]):- Cabeca =\= Cabeca2, retiraAux(Cabeca, Cauda, Cauda2).


	


main:-
	repeat,
	read(X),
	somaNaoDuplicadas(X, Y),
	write(Y),nl,
	halt(0).

