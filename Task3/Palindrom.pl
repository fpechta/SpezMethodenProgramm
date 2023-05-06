trans_a_b([],[]).
trans_a_b([a|T],[b|T2]) :- trans_a_b(T,T2).
trans_a_b([H|T],[H|T2]) :- dif(H,a), trans_a_b(T,T2).

takeout(X,[X|T],T).
takeout(X,[H|T],[H|T2]) :- dif(X,H), takeout(X,T,T2).

palindrom([]).
palindrom([_]).
palindrom(L) :- append([H|T1],[H],L), palindrom(T1).
