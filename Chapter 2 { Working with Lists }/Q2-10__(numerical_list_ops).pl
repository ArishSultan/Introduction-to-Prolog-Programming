successor(List, [x | List]).

plus_([], Result, Result).

plus_([Head | Tail1], List, [Head | Tail2]) :-
    plus_(Tail1, List, Tail2).

times(List, [_|Times], Result) :-
    times_worker(List, Times, List, Result).

times(_, [], []).

times_worker(_, [], Result, Result).

times_worker(List, [_ | Times], Acc, Result) :-
    plus_(Acc, List, NewAcc),
    times_worker(List, Times, NewAcc, Result), !.