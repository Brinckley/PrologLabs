move(A,B):- append(Start,[b,e|End],A), append(Start,[e,b|End],B).
move(A,B):- append(Start,[e,w|End],A), append(Start,[w,e|End],B).
move(A,B):- append(Start,[b,w,e|End],A), append(Start,[e,w,b|End],B).
move(A,B):- append(Start,[e,b,w|End],A), append(Start,[w,b,e|End],B).

prolong([X|T],[Y,X|T]):- move(X,Y), not(member(Y,[X|T])).

dpth([X|T],X,[X|T]).
dpth(P,F,L):-
	prolong(P,N),
	dpth(N,F,L).

search_dpth(Start,Finish,Delta1) :-
	get_time(Ts),
	dpth([Start],Finish,Path),
	get_time(Te),
    Delta1 is Te - Ts,!.
%%%%
bdth([[X|T]|_],X,[X|T]).
bdth([P|QI],X,R):-
	findall(Z,prolong(P,Z),T),
	append(QI,T,QO),
	bdth(QO,X,R).

search_bdth(Start,Finish,Delta2) :-
    get_time(Ts),
    bdth([[Start]],Finish,Path),
    get_time(Te),
    Delta2 is Te - Ts,!.
%%%%
int(1).
int(N):-int(M),N is M+1.

id([X|T],X,[X|T],0).
id(P,X,L,N):-
    prolong(P,Z),
    N1 is N-1,
    id(Z,X,L,N1).

search_id(Start,Finish,Delta3):-
    get_time(Ts),
    int(Level),
    id([Start],Finish,Path,Level),
    get_time(Te),
    Delta3 is Te - Ts.
%%%%%%%%%%%%%%%
comparesearch(Start,Final) :-
    search_dpth(Start,Final,D1),
    write('DEPTH SEARCH TAKES '), write(D1), nl,
    search_bdth(Start,Final,D2),
    write('BREADTH SEARCH TAKES '), write(D2), nl,
    search_id(Start,Final,D3),
    write('ID SEARCH TAKES '), write(D3), nl.

?-comparesearch([b,b,b,b,e,w,w,w],[w,w,w,e,b,b,b,b]).
