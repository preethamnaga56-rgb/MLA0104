/* =====================================================
   CyberShield
   Rule-Based Cybersecurity Threat Diagnosis Expert System
   Language: SWI-Prolog
   ===================================================== */

:- dynamic fact/1.

/* =====================================================
   KNOWLEDGE BASE - INITIAL FACTS
   ===================================================== */

% Scenario 1: Login and network attack
initial_fact(repeated_login_failures).
initial_fact(unusual_network_traffic).
initial_fact(unknown_ip_address).

% Scenario 2: Suspicious file activity
initial_fact(suspicious_file_activity).
initial_fact(unauthorized_access_attempt).
initial_fact(file_encryption_activity).

/* =====================================================
   PRODUCTION RULES
   ===================================================== */

% Rule 1
rule(brute_force_attack,
     [repeated_login_failures, unusual_network_traffic]).

% Rule 2
rule(suspicious_login_activity,
     [repeated_login_failures, unknown_ip_address]).

% Rule 3
rule(account_compromise,
     [suspicious_login_activity, unauthorized_access_attempt]).

% Rule 4
rule(network_intrusion,
     [unusual_network_traffic, unknown_ip_address]).

% Rule 5
rule(malware_infection,
     [suspicious_file_activity, unauthorized_access_attempt]).

% Rule 6
rule(ransomware_attack,
     [malware_infection, file_encryption_activity]).

% Rule 7
rule(high_risk_threat,
     [brute_force_attack, network_intrusion]).

% Rule 8
rule(high_risk_threat,
     [ransomware_attack]).

% Rule 9
rule(high_risk_threat,
     [account_compromise, malware_infection]).

% Rule 10
rule(data_exfiltration,
     [unusual_network_traffic, unauthorized_access_attempt]).

% Rule 11
rule(critical_security_incident,
     [high_risk_threat, data_exfiltration]).

% Rule 12
rule(credential_attack,
     [repeated_login_failures, suspicious_login_activity]).

% Rule 13
rule(compromised_system,
     [malware_infection, network_intrusion]).

% Rule 14
rule(critical_security_incident,
     [compromised_system, high_risk_threat]).

% Rule 15
rule(security_alert,
     [brute_force_attack]).

% Rule 16
rule(security_alert,
     [network_intrusion]).

% Rule 17
rule(security_alert,
     [malware_infection]).

% Rule 18
rule(security_alert,
     [account_compromise]).

% Rule 19
rule(security_alert,
     [ransomware_attack]).

% Rule 20
rule(immediate_response_required,
     [critical_security_incident]).

/* =====================================================
   FORWARD CHAINING
   ===================================================== */

% Start with initial facts
initialize :-
    retractall(fact(_)),
    forall(initial_fact(F), assertz(fact(F))).

% Check whether all conditions are true
all_true([]).
all_true([H|T]) :-
    fact(H),
    all_true(T).

% Apply a rule
apply_rule(Conclusion, Conditions) :-
    all_true(Conditions),
    \+ fact(Conclusion),
    assertz(fact(Conclusion)),
    format('Derived: ~w from ~w~n',
           [Conclusion, Conditions]).

% Apply all possible rules once
forward_step :-
    rule(Conclusion, Conditions),
    apply_rule(Conclusion, Conditions),
    fail.

forward_step.

% Repeat until no new facts are generated
forward_chain :-
    initialize,
    repeat,
        findall(F, fact(F), Before),
        forward_step,
        findall(F, fact(F), After),
        Before == After,
    !.

% Display all derived conclusions
show_facts :-
    nl,
    writeln('----- DERIVED FACTS -----'),
    forall(fact(F),
           format('~w~n', [F])),
    writeln('-------------------------').

/* =====================================================
   BACKWARD CHAINING
   ===================================================== */

% A goal is true if it exists as a fact
prove(Goal) :-
    fact(Goal).

% A goal is true if a rule can prove it
prove(Goal) :-
    rule(Goal, Conditions),
    prove_all(Conditions).

prove_all([]).

prove_all([H|T]) :-
    prove(H),
    prove_all(T).

/* =====================================================
   EXPLANATION FACILITY
   ===================================================== */

explain(Goal) :-
    fact(Goal),
    initial_fact(Goal),
    format('~w is an initial observed security event.~n',
           [Goal]).

explain(Goal) :-
    rule(Goal, Conditions),
    all_true(Conditions),
    format('~w was derived because: ~n', [Goal]),
    format('Required conditions: ~w~n', [Conditions]).

/* =====================================================
   UNIFICATION DEMONSTRATION
   ===================================================== */

unification_demo :-
    Threat = threat(brute_force_attack),
    format('Unified variable with: ~w~n', [Threat]).

/* =====================================================
   BACKTRACKING DEMONSTRATION
   ===================================================== */

possible_alert(Threat) :-
    rule(Threat, _).

show_possible_alerts :-
    writeln('Possible conclusions through backtracking:'),
    possible_alert(Threat),
    format('~w~n', [Threat]),
    fail.

show_possible_alerts.

/* =====================================================
   THREAT DIAGNOSIS
   ===================================================== */

diagnose :-
    forward_chain,
    nl,
    writeln('CYBERSECURITY THREAT DIAGNOSIS'),
    writeln('=============================='),
    show_facts,
    nl,
    writeln('Final Assessment:'),

    ( fact(immediate_response_required) ->
        writeln('CRITICAL INCIDENT - Immediate response required!')

    ; fact(high_risk_threat) ->
        writeln('HIGH RISK THREAT DETECTED!')

    ; fact(security_alert) ->
        writeln('SECURITY ALERT DETECTED!')

    ; writeln('No major threat detected.')
    ).

/* =====================================================
   SYSTEM MENU
   ===================================================== */

start :-
    nl,
    writeln('========================================='),
    writeln(' CYBERSHIELD EXPERT SYSTEM'),
    writeln(' Cybersecurity Threat Diagnosis'),
    writeln('========================================='),
    nl,

    writeln('1. Run Threat Diagnosis'),
    writeln('2. Show All Derived Facts'),
    writeln('3. Test Backward Chaining'),
    writeln('4. Demonstrate Unification'),
    writeln('5. Demonstrate Backtracking'),
    writeln('6. Exit'),

    write('Enter your choice: '),
    read(Choice),
    menu(Choice).

menu(1) :-
    diagnose,
    start.

menu(2) :-
    forward_chain,
    show_facts,
    start.

menu(3) :-
    forward_chain,
    write('Enter goal to prove (example: high_risk_threat): '),
    read(Goal),
    ( prove(Goal) ->
        format('Goal ~w is PROVEN.~n', [Goal])
    ;
        format('Goal ~w cannot be proven.~n', [Goal])
    ),
    start.

menu(4) :-
    unification_demo,
    start.

menu(5) :-
    show_possible_alerts,
    start.

menu(6) :-
    writeln('Thank you for using CyberShield!').

menu(_) :-
    writeln('Invalid choice!'),
    start.