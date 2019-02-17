status(List, Position, Orientation) :-
    status_(List, (0, 0), north, Position, Orientation).

status_([], Position, Orientation, Position, Orientation).

status_([move | Tail], (X, Y), north, Position, Orientation) :-
    Y_ is Y + 1,
    status_(Tail, (X, Y_), north, Position, Orientation).

status_([move | Tail], (X, Y), south, Position, Orientation) :-
    Y_ is Y - 1,
    status_(Tail, (X, Y_), south, Position, Orientation).

status_([move | Tail], (X, Y), east, Position, Orientation) :-
    X_ is X + 1,
    status_(Tail, (X_, Y), east, Position, Orientation).

status_([move | Tail], (X, Y), west, Position, Orientation) :-
    X_ is X - 1,
    status_(Tail, (X_, Y), west, Position, Orientation).


status_([left | Tail], (X, Y), north, Position, Orientation) :-
    status_(Tail, (X, Y), west, Position, Orientation).

status_([left | Tail], (X, Y), west, Position, Orientation) :-
    status_(Tail, (X, Y), south, Position, Orientation).

status_([left | Tail], (X, Y), south, Position, Orientation) :-
    status_(Tail, (X, Y), east, Position, Orientation).

status_([left | Tail], (X, Y), east, Position, Orientation) :-
    status_(Tail, (X, Y), north, Position, Orientation).


status_([right | Tail], (X, Y), north, Position, Orientation) :-
    status_(Tail, (X, Y), east, Position, Orientation).

status_([right | Tail], (X, Y), east, Position, Orientation) :-
    status_(Tail, (X, Y), south, Position, Orientation).

status_([right | Tail], (X, Y), south, Position, Orientation) :-
    status_(Tail, (X, Y), west, Position, Orientation).

status_([right | Tail], (X, Y), west, Position, Orientation) :-
    status_(Tail, (X, Y), north, Position, Orientation).