last1([Last | []], Last).

last1([_ | Tail], Last) :-
    last1(Tail, Last).

last2(List, Last) :-
    append(_, [Last], List).