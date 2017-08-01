notas_alunos(joao, 5.0, 7.0, 8.0).
notas_alunos(maria, 6.0, 6.0, 6.0).
notas_alunos(joana, 8.0, 5.1, 10).
notas_alunos(mariana, 9.0, 9.0, 3.0).
notas_alunos(cleuza, 8.5, 7.0, 8.6).
notas_alunos(jose, 3.5, 3.0, 2.0).
notas_alunos(mary, 10.0, 8.0, 7.0).

calcula_media(Aluno, Media) :- notas_alunos(Aluno, Nota1, Nota2, Nota3), Media is ((Nota1 + Nota2 + Nota3) / 3).

calcula_resultado(Aluno, Resultado) :- calcula_media(Aluno, Media), Media >= 7.0, Media =< 10.0, Resultado = "aprovado".
calcula_resultado(Aluno, Resultado) :- calcula_media(Aluno, Media), Media >= 4.0, Media < 7.0, Resultado = "final".
calcula_resultado(Aluno, Resultado) :- calcula_media(Aluno, Media), Media >= 0.0, Media < 4.0, Resultado = "reprovado".

:- initialization (main).


main:-
	repeat,
	read(Aluno),
	calcula_resultado(Aluno, Resultado),
	write(Resultado),nl,
	halt(0).
