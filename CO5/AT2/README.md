# Prolog-Based Cybersecurity Threat Detection and Response Expert System

## 1. Project Overview

This project develops a **Prolog-based cybersecurity expert system** for identifying possible security threats from observed security events.

The system uses **facts, production rules, and logical inference** to analyze cybersecurity events and recommend appropriate actions.

The project is based on the industry problem in which a Security Operations Center (SOC) receives events such as:

* Repeated failed login attempts
* Unusual login locations
* Privilege escalation
* Suspicious file access
* Abnormal network traffic

The system identifies possible threats and provides recommended actions using Prolog.

---

## 2. Objectives

The main objectives of this project are:

* Develop a rule-based cybersecurity expert system using Prolog.
* Represent cybersecurity knowledge using facts and production rules.
* Detect possible cybersecurity threats.
* Recommend suitable security actions.
* Demonstrate forward chaining.
* Demonstrate backward chaining.
* Demonstrate unification.
* Demonstrate backtracking.
* Test the system using multiple cybersecurity scenarios.

---

## 3. Technologies Used

| Technology | Purpose                               |
| ---------- | ------------------------------------- |
| Prolog     | Expert-system implementation          |
| SWI-Prolog | Prolog development and execution      |
| GitHub     | Source-code and project documentation |
| Windows    | Development environment               |

---

## 4. System Architecture

The system consists of the following major components:

```text
                    SOC ANALYST / USER
                           |
                           ↓
                   Security Events
                           |
                           ↓
                  ┌─────────────────┐
                  │  KNOWLEDGE BASE │
                  │                 │
                  │ Facts + Rules   │
                  └────────┬────────┘
                           ↓
                  ┌─────────────────┐
                  │ INFERENCE ENGINE│
                  │                 │
                  │ Forward Chaining│
                  │ Backward Chain. │
                  │ Unification     │
                  │ Backtracking    │
                  └────────┬────────┘
                           ↓
                  Threat Identification
                           |
                           ↓
                  Recommended Actions
                           |
                           ↓
                       Explanation
                           |
                           ↓
                    Output to User
```

---

## 5. Security Events

The system considers the following security events:

| Security Event           | Possible Threat     |
| ------------------------ | ------------------- |
| Repeated failed logins   | Brute-force attack  |
| Unusual login location   | Account compromise  |
| Privilege escalation     | Privilege abuse     |
| Suspicious file access   | Suspicious activity |
| Abnormal network traffic | Network attack      |

---

## 6. Detected Threats

The expert system can identify:

1. **Brute-force attack**
2. **Account compromise**
3. **Privilege abuse**
4. **Suspicious activity**
5. **Network attack**

---

## 7. Knowledge Base

The knowledge base contains cybersecurity facts.

Example:

```prolog
failed_logins(user1, 5).
unusual_location(user1).
privilege_escalation(user1).
suspicious_file_access(user1).
```

These facts describe observed security events.

---

## 8. Production Rules

The system uses production rules to infer threats.

### Brute-Force Attack

```prolog
threat(User, brute_force_attack) :-
    failed_logins(User, Count),
    Count >= 5.
```

If a user has five or more failed login attempts, the system identifies a possible brute-force attack.

### Account Compromise

```prolog
threat(User, account_compromise) :-
    unusual_location(User),
    failed_logins(User, Count),
    Count >= 3.
```

If a user logs in from an unusual location and has at least three failed login attempts, the system identifies a possible account compromise.

### Privilege Abuse

```prolog
threat(User, privilege_abuse) :-
    privilege_escalation(User).
```

### Suspicious Activity

```prolog
threat(User, suspicious_activity) :-
    suspicious_file_access(User).
```

### Network Attack

```prolog
threat(User, network_attack) :-
    abnormal_network_traffic(User).
```

---

## 9. Recommended Actions

The system provides an action for each detected threat.

| Threat              | Recommended Action                                          |
| ------------------- | ----------------------------------------------------------- |
| Brute-force attack  | Block the account and investigate repeated login attempts   |
| Account compromise  | Verify user identity and reset credentials                  |
| Privilege abuse     | Review privileges and investigate escalation                |
| Suspicious activity | Investigate suspicious file access                          |
| Network attack      | Monitor network traffic and investigate the affected system |

---

## 10. Inference Mechanisms

### Forward Chaining

Forward chaining starts with known facts and applies rules to derive conclusions.

Example:

```text
failed_logins(user1, 5)
        ↓
Count >= 5
        ↓
brute_force_attack
        ↓
Recommended Action
```

### Backward Chaining

Backward chaining starts with a goal and searches for facts that can prove the goal.

Example:

```prolog
?- threat(user3, account_compromise).
```

Prolog checks the account-compromise rule and searches for the required facts.

### Unification

Unification matches variables with known values.

Example:

```prolog
?- failed_logins(User, Count).
```

Possible result:

```text
User = user1,
Count = 5.
```

### Backtracking

Backtracking allows Prolog to search for alternative solutions.

Example:

```prolog
?- threat(user1, Threat).
```

The system can return multiple applicable threats. Pressing `;` asks Prolog to search for another solution.

---

## 11. Project Files

Recommended project structure:

```text
Cybersecurity-Expert-System/
│
├── cybersecurity_expert.pl
├── README.md
└── screenshots/
    ├── program_loaded.png
    ├── brute_force.png
    ├── account_compromise.png
    ├── privilege_abuse.png
    ├── suspicious_activity.png
    ├── network_attack.png
    ├── backtracking.png
    └── unification.png
```

---

## 12. Installation

### Step 1: Install SWI-Prolog

Install SWI-Prolog on your computer.

### Step 2: Clone or download the project

Place the project folder on your computer.

### Step 3: Open SWI-Prolog

Start the SWI-Prolog application.

### Step 4: Navigate to the project directory

For example:

```prolog
?- cd('C:/Users/laxmi/Downloads').
```

### Step 5: Load the program

```prolog
?- [cybersecurity_expert].
```

Expected result:

```text
true.
```

---

## 13. Running the System

### Test 1 — Brute-Force Attack

```prolog
?- threat(user1, Threat).
```

Expected:

```text
Threat = brute_force_attack.
```

Press `;` to search for additional threats.

---

### Test 2 — Account Compromise

```prolog
?- threat(user3, Threat).
```

Expected:

```text
Threat = account_compromise.
```

---

### Test 3 — Privilege Abuse

```prolog
?- threat(user4, Threat).
```

Expected:

```text
Threat = privilege_abuse.
```

---

### Test 4 — Suspicious Activity

```prolog
?- threat(user5, Threat).
```

Expected:

```text
Threat = suspicious_activity.
```

---

### Test 5 — Network Attack

```prolog
?- threat(user6, Threat).
```

Expected:

```text
Threat = network_attack.
```

---

## 14. Testing the Complete Expert System

Use:

```prolog
?- security_check(user1, Threat, Action).
```

Example output:

```text
Threat = brute_force_attack,
Action = 'Block the account and investigate repeated login attempts.'
```

The system can also return additional threats for the same user through Prolog backtracking.

---

## 15. Test Case Summary

| Test Case | User  | Input Event                        | Expected Threat     |
| --------- | ----- | ---------------------------------- | ------------------- |
| TC1       | user1 | 5 failed logins                    | Brute-force attack  |
| TC2       | user3 | Unusual location + 4 failed logins | Account compromise  |
| TC3       | user4 | Privilege escalation               | Privilege abuse     |
| TC4       | user5 | Suspicious file access             | Suspicious activity |
| TC5       | user6 | Abnormal network traffic           | Network attack      |

---

## 16. Procedural vs Non-Procedural Approach

### Procedural Approach

A procedural approach specifies how a problem should be solved using a sequence of instructions.

Examples include C and Python.

### Non-Procedural / Declarative Approach

A declarative approach describes facts and relationships while the system determines how to derive the solution.

Prolog follows a declarative approach by using facts and logical rules.

In this project, the cybersecurity knowledge is represented using Prolog facts and rules, while the Prolog inference engine searches for solutions.

---

## 17. Limitations

* The system depends on predefined cybersecurity rules.
* New attack types require additional rules.
* It does not automatically learn from new cybersecurity data.
* Incorrect or incomplete input facts can affect the result.
* Real-world cybersecurity attacks can be more complex than the defined scenarios.

---

## 18. Future Enhancements

Future versions can include:

* Real-time security-log integration.
* SIEM integration.
* Machine-learning-based anomaly detection.
* Real-time security alerts.
* Larger cybersecurity knowledge bases.
* Web-based monitoring dashboards.
* Automated incident-response integration.
* Integration with intrusion-detection systems.

---

## 19. Expected Outcome

The expected outcome is a working Prolog expert system that:

1. Accepts cybersecurity event information.
2. Matches the events with predefined rules.
3. Identifies possible threats.
4. Provides recommended security actions.
5. Demonstrates logical inference.
6. Explains the reasoning process.
7. Supports multiple possible conclusions through backtracking.

---

## 20. Conclusion

The Prolog-based Cybersecurity Threat Detection and Response Expert System demonstrates the use of artificial intelligence and logical reasoning for cybersecurity decision support.

The system represents cybersecurity knowledge using facts and production rules. It uses Prolog's inference capabilities to identify possible threats and recommend appropriate actions. Forward chaining, backward chaining, unification and backtracking demonstrate the reasoning capabilities of the system.

The project provides a simple rule-based approach that can assist Security Operations Center analysts in analyzing predefined cybersecurity events.

---
ADME documentation and screenshots of the test results.

