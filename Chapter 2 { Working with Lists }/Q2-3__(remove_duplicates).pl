remove_duplicates([],[]).

remove_duplicates([H | T], List) :-
    member(H, T),
    remove_duplicates( T, List), !.

remove_duplicates([H | T], [H | T1]) :-
    remove_duplicates(T, T1).

remove_duplicates([], []).