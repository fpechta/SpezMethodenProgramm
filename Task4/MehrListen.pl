sum([], 0).
sum([X|Xs], Sum) :- sum(Xs, Rest), Sum is X + Rest.

addone([], []).
addone([X|Xs], [Y|Ys]) :- Y is X+1, addone(Xs, Ys).

permutation([],[]).
permutation([H|T],S) :- permutation(T,P),append(X,Y,P),append(X,[H|Y],S).

max([X], X).
max([X|Xs], Max) :- max(Xs, RestMax), X > RestMax, Max is X.
max([X|Xs], Max) :- max(Xs, RestMax), X =< RestMax, Max is RestMax.
