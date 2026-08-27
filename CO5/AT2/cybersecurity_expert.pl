% =========================================================
% PROLOG-BASED CYBERSECURITY EXPERT SYSTEM
% =========================================================

% =========================================================
% 1. SECURITY EVENT FACTS
% =========================================================

% Failed login facts
failed_logins(user1, 5).
failed_logins(user2, 2).
failed_logins(user3, 4).

% Unusual login location facts
unusual_location(user1).
unusual_location(user3).

% Privilege escalation facts
privilege_escalation(user1).
privilege_escalation(user4).

% Suspicious file access facts
suspicious_file_access(user1).
suspicious_file_access(user5).

% Abnormal network traffic facts
abnormal_network_traffic(user2).
abnormal_network_traffic(user6).


% =========================================================
% 2. THREAT DETECTION RULES
% =========================================================

% Rule 1: Brute-force attack
threat(User, brute_force_attack) :-
    failed_logins(User, Count),
    Count >= 5.

% Rule 2: Account compromise
threat(User, account_compromise) :-
    unusual_location(User),
    failed_logins(User, Count),
    Count >= 3.

% Rule 3: Privilege abuse
threat(User, privilege_abuse) :-
    privilege_escalation(User).

% Rule 4: Suspicious activity
threat(User, suspicious_activity) :-
    suspicious_file_access(User).

% Rule 5: Network attack
threat(User, network_attack) :-
    abnormal_network_traffic(User).


% =========================================================
% 3. RECOMMENDED ACTIONS
% =========================================================

action(brute_force_attack,
       'Block the account and investigate repeated login attempts.').

action(account_compromise,
       'Verify user identity and reset account credentials.').

action(privilege_abuse,
       'Review privileges and investigate unauthorized privilege escalation.').

action(suspicious_activity,
       'Investigate suspicious file access and check the affected system.').

action(network_attack,
       'Monitor network traffic and investigate the affected system.').


% =========================================================
% 4. MAIN EXPERT SYSTEM
% =========================================================

security_check(User, Threat, Action) :-
    threat(User, Threat),
    action(Threat, Action).


% =========================================================
% 5. CHECK ALL THREATS FOR A USER
% =========================================================

check_user(User) :-
    security_check(User, Threat, Action),
    write('User: '),
    write(User),
    nl,
    write('Threat: '),
    write(Threat),
    nl,
    write('Recommended Action: '),
    write(Action),
    nl,
    nl,
    fail.

check_user(_).


% =========================================================
% 6. DISPLAY ALL THREATS
% =========================================================

show_all_threats :-
    security_check(User, Threat, Action),
    write('User: '),
    write(User),
    nl,
    write('Threat: '),
    write(Threat),
    nl,
    write('Action: '),
    write(Action),
    nl,
    write('-----------------------------'),
    nl,
    fail.

show_all_threats.