# 🛡️ CyberShield – Cybersecurity Threat Diagnosis Expert System

## Rule-Based Expert System Using SWI-Prolog

CyberShield is a rule-based Artificial Intelligence expert system developed using SWI-Prolog to identify possible cybersecurity threats from security-related events.

The system represents cybersecurity knowledge using facts and production rules and performs logical reasoning using forward chaining and backward chaining.

---

## 📌 Project Information

| Item | Details |
|---|---|
| Project Name | CyberShield |
| Project Type | Rule-Based Expert System |
| Domain | Cybersecurity Threat Diagnosis |
| Programming Language | Prolog |
| Development Tool | SWI-Prolog |
| Course | Artificial Intelligence and Expert Systems |
| Course Code | MLA01 |
| Assessment | CO5 – Expert System Development Project |

---

# 🎯 Problem Statement

Modern computer systems generate large numbers of security events such as repeated login failures, unusual network traffic, suspicious file activity, and unauthorized access attempts.

Analyzing these events manually can be difficult and time-consuming.

CyberShield addresses this problem by using a rule-based expert system to analyze security observations and derive possible cybersecurity threats.

The system can identify and classify threats such as:

- Brute-force attack
- Suspicious login activity
- Account compromise
- Network intrusion
- Malware infection
- Ransomware attack
- High-risk threat
- Data exfiltration
- Critical security incident
- Immediate response required

---

# 🎯 Objectives

The main objectives of CyberShield are:

1. Develop a rule-based cybersecurity expert system.
2. Represent cybersecurity knowledge using Prolog facts and rules.
3. Implement production rules for threat diagnosis.
4. Demonstrate forward chaining.
5. Demonstrate backward chaining.
6. Demonstrate Prolog unification.
7. Demonstrate Prolog backtracking.
8. Generate explainable cybersecurity conclusions.
9. Test the system using multiple cybersecurity scenarios.
10. Provide an interactive Prolog-based user interface.

---

# 🧠 System Architecture

```text
                 USER / SECURITY OBSERVATIONS
                            |
                            v
                    +---------------+
                    |   FACT BASE   |
                    +---------------+
                            |
                            v
                 +---------------------+
                 |   KNOWLEDGE BASE    |
                 |  Facts + Rules      |
                 +---------------------+
                            |
                            v
                 +---------------------+
                 |   INFERENCE ENGINE  |
                 +---------------------+
                     /             \
                    /               \
                   v                 v
          FORWARD CHAINING    BACKWARD CHAINING
            Data-Driven          Goal-Driven
                   \                 /
                    \               /
                     v             v
                 +---------------------+
                 |    WORKING MEMORY   |
                 |    Derived Facts    |
                 +---------------------+
                            |
                            v
                 +---------------------+
                 |  THREAT CLASSIFIER  |
                 +---------------------+
                            |
                            v
                 +---------------------+
                 |  FINAL ASSESSMENT   |
                 |  SECURITY ALERT     |
                 +---------------------+
