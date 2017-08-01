:- initialization(main).

main:-
	repeat,
	read(Y),
	reinado(X, Y),
	write(X),nl,
	halt(0).


reinou(rhodi, 884, 878).
reinou(anarawd, 878, 916).
reinou(hywel_dda, 916, 950).
reinou(lago_ap_idwal, 950, 979).
reinou(hywal_ap_ieuaf, 979, 965).
reinou(cadwallon, 985, 986).
reinou(maredudd, 986, 999).

reinado(X, Y) :- reinou(X, Begin, End), Y >= Begin, Y =< End. 


