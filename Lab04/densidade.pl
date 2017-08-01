:- initialization(main).

main:-
	repeat,
	read(X),
	read(Y),
	maior_densidade(X,Y,Z),
	write(Z),nl,
	halt(0).
		
populacao(brasil, 200).
populacao(eua, 320).
populacao(canada, 35).
populacao(india, 1200).
populacao(china, 1300).
populacao(japao, 127).
populacao(russia, 142).
		
metros(brasil, 8).
metros(eua, 9).
metros(canada, 9).
metros(india, 3).
metros(china, 9).
metros(japao, 1).
metros(russia, 17).


calcula_densidade(Pais, Densidade) :- metros(Pais, Area), populacao(Pais, Populacao), Densidade is Populacao / Area.

maior_densidade(Pais1, Pais2, Z) :- calcula_densidade(Pais1, Densidade1), calcula_densidade(Pais2, Densidade2), Densidade1 >= Densidade2, Z = Pais1.
maior_densidade(Pais1, Pais2, Z) :- calcula_densidade(Pais1, Densidade1), calcula_densidade(Pais2, Densidade2), Densidade1 < Densidade2, Z = Pais2.

