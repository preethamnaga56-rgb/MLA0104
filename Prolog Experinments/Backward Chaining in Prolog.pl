/* Experiment 14
   Backward Chaining */

% Facts
fever.
cough.
body_pain.

% Rule
flu :-
    fever,
    cough,
    body_pain.

% Diagnosis Rule
diagnosis(Patient, flu) :-
    flu,
    write(Patient),
    write(' is suffering from Flu.').