analyse_list(Elem) :- atom(Elem), fail.

analyse_list([]) :- write('This is an empty list.').

analyse_list([Head | Tail]) :-
    write('This is the head of your list: '),
    writeln(Head),
    write('This is the tail of yout list: '),
    write(Tail).