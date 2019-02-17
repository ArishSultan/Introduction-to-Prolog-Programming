reverse_list([], []).

reverse_list([_], [_]).

reverse_list(List, RevList) :-
    reverse_list_worker(List, [], RevList).


reverse_list_worker([], Acc, Acc).

reverse_list_worker([Head | Tail], Temp, Acc) :-
    append([Head], Temp, NewTemp),
    reverse_list_worker(Tail, NewTemp, Acc).