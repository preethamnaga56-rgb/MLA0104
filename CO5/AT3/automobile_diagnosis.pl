% =========================================================
% AUTOMOBILE FAULT DIAGNOSIS EXPERT SYSTEM
% CO5 AT3 - Artificial Intelligence and Expert Systems
% =========================================================


% =========================================================
% 1. FACTS - VEHICLE SYMPTOMS
% =========================================================

% Car 1 symptoms

overheating(car1).
low_coolant(car1).

starting_failure(car1).
weak_battery(car1).

abnormal_noise(car1).

low_mileage(car1).
poor_acceleration(car1).

warning_indicator(car1).


% =========================================================
% 2. PRODUCTION RULES / DIAGNOSTIC RULES
% =========================================================

% Rule 1:
% If the car is overheating and coolant is low,
% then there is a cooling system fault.

cooling_fault(Car) :-
    overheating(Car),
    low_coolant(Car).


% Rule 2:
% If the car has starting failure and weak battery,
% then there is a battery fault.

battery_fault(Car) :-
    starting_failure(Car),
    weak_battery(Car).


% Rule 3:
% If the warning indicator is ON and the battery is weak,
% then there may be an alternator fault.

alternator_fault(Car) :-
    warning_indicator(Car),
    weak_battery(Car).


% Rule 4:
% If there is abnormal noise and overheating,
% then there may be an engine mechanical fault.

engine_fault(Car) :-
    abnormal_noise(Car),
    overheating(Car).


% Rule 5:
% If mileage is low and acceleration is poor,
% then there may be a fuel system fault.

fuel_fault(Car) :-
    low_mileage(Car),
    poor_acceleration(Car).


% =========================================================
% 3. GENERAL DIAGNOSIS PREDICATE
% =========================================================

diagnosis(Car, cooling_system_fault) :-
    cooling_fault(Car).

diagnosis(Car, battery_fault) :-
    battery_fault(Car).

diagnosis(Car, alternator_fault) :-
    alternator_fault(Car).

diagnosis(Car, engine_mechanical_fault) :-
    engine_fault(Car).

diagnosis(Car, fuel_system_fault) :-
    fuel_fault(Car).


% =========================================================
% 4. SYMPTOM CHECKING PREDICATES
% =========================================================

symptom(Car, overheating) :-
    overheating(Car).

symptom(Car, low_coolant) :-
    low_coolant(Car).

symptom(Car, starting_failure) :-
    starting_failure(Car).

symptom(Car, weak_battery) :-
    weak_battery(Car).

symptom(Car, abnormal_noise) :-
    abnormal_noise(Car).

symptom(Car, low_mileage) :-
    low_mileage(Car).

symptom(Car, poor_acceleration) :-
    poor_acceleration(Car).

symptom(Car, warning_indicator) :-
    warning_indicator(Car).


% =========================================================
% 5. DISPLAY ALL SYMPTOMS
% =========================================================

show_symptoms(Car) :-
    write('Symptoms for '),
    write(Car),
    write(':'), nl,

    (overheating(Car) ->
        write('- Engine overheating'), nl
    ;
        true),

    (low_coolant(Car) ->
        write('- Low coolant'), nl
    ;
        true),

    (starting_failure(Car) ->
        write('- Starting failure'), nl
    ;
        true),

    (weak_battery(Car) ->
        write('- Weak battery'), nl
    ;
        true),

    (abnormal_noise(Car) ->
        write('- Abnormal engine noise'), nl
    ;
        true),

    (low_mileage(Car) ->
        write('- Low mileage'), nl
    ;
        true),

    (poor_acceleration(Car) ->
        write('- Poor acceleration'), nl
    ;
        true),

    (warning_indicator(Car) ->
        write('- Warning indicator ON'), nl
    ;
        true).


% =========================================================
% 6. DISPLAY ALL POSSIBLE DIAGNOSES
% =========================================================

show_diagnosis(Car) :-
    write('Diagnosis for '),
    write(Car),
    write(':'), nl,

    (cooling_fault(Car) ->
        write('- Cooling system fault'), nl
    ;
        true),

    (battery_fault(Car) ->
        write('- Battery fault'), nl
    ;
        true),

    (alternator_fault(Car) ->
        write('- Alternator fault'), nl
    ;
        true),

    (engine_fault(Car) ->
        write('- Engine mechanical fault'), nl
    ;
        true),

    (fuel_fault(Car) ->
        write('- Fuel system fault'), nl
    ;
        true).


% =========================================================
% 7. TEST PREDICATE
% =========================================================

run_test :-
    write('===================================='), nl,
    write(' AUTOMOBILE FAULT DIAGNOSIS SYSTEM'), nl,
    write('===================================='), nl,
    nl,

    show_symptoms(car1),
    nl,

    show_diagnosis(car1),
    nl,

    write('Diagnosis completed successfully.'), nl.