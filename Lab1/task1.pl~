length([], 0).
length([_|Y], N) :- length(Y, N1), N is N1 + 1.

member(A, [A|_]).
member(A, [_|Z]) :- member(A, Z).

append([], X, X).
append([A|X], Y, [A|Z]) :- append(X,Y,Z).


remove(X, [X|T], T).
remove(X, [Y|T],[Y|T1]) :- remove(X,T,T1).

permute([],[]).
permute(L,[X|T]) :- remove(X,L,R),permute(R,T).

%Text Sample
sublist([],T).
sublist([X|S], T) :- member(X,T),sublist(S,T).

writelist([]).
writelist([X|L]) :- write(X), nl, writelist(L).

%1 2. Delete last element
%With standard
sdeletelast(L, R) :- append(R,[X], L).
%Without standard
deletelast([_],[]).
deletelast([X|T],[X|Tnew]) :- deletelast(T, Tnew).

%?-deletelast([a,b,c,d],T),write(T).
%?-sdeletelast([a,b,c,d],T),write(T).

%1 6. Count amount of even numbers
%With standard

%Without standard
counteven([], 0).
counteven([X|T], N) :- counteven(T, N1), checkeven(X, 0, R), N is N1 + R.

checkeven(1, S, S).
checkeven(0, S, N) :- N is S + 1.
checkeven(X, S, N) :- X1 is X - 2, checkeven(X1, S, N).

?-counteven([2,2,2,4,5,6,2,0,0,0], N), write(N).


