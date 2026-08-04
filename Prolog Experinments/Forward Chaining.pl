/* Experiment 13
   Forward Chaining */

fact(fever).
fact(cough).

rule(flu):-
    fact(fever),
    fact(cough).

diagnosis(flu):-
    rule(flu).