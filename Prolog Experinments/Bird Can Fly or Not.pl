/* Experiment 6
   Bird Fly Program */

bird(parrot).
bird(sparrow).
bird(pigeon).
bird(peacock).
bird(penguin).
bird(ostrich).

can_fly(parrot).
can_fly(sparrow).
can_fly(pigeon).
can_fly(peacock).

cannot_fly(X) :-
    bird(X),
    \+ can_fly(X).