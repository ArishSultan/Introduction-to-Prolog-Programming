membership(Elem, [Head | Tail]) :-
    membership_(Tail, Elem, Head).

membership_(_, Elem, Elem).

membership_([Head | Tail], Elem, _) :-
    membership_(Tail , Elem, Head).