/* Experiment 5
   Towers of Hanoi */

move(1, Source, Destination, _) :-
    write('Move Disk 1 from '),
    write(Source),
    write(' to '),
    write(Destination), nl.

move(N, Source, Destination, Auxiliary) :-
    N > 1,
    M is N - 1,
    move(M, Source, Auxiliary, Destination),
    write('Move Disk '),
    write(N),
    write(' from '),
    write(Source),
    write(' to '),
    write(Destination), nl,
    move(M, Auxiliary, Destination, Source).