# Automobile Fault Diagnosis Expert System

## CO5 AT3 – Modelling Comparative Analysis

**Course:** Artificial Intelligence and Expert Systems
**Course Code:** MLA01
**Assessment:** CO5 AT3 – Modelling Comparative Analysis

---

## 1. Project Overview

The **Automobile Fault Diagnosis Expert System** is a rule-based expert system developed to identify possible automobile faults based on observed vehicle symptoms.

The system uses knowledge representation and reasoning techniques to model the diagnosis problem using:

* Production Rules
* Propositional Logic
* First-Order Logic
* Prolog

The project also demonstrates **forward chaining and backward chaining** and compares the different modelling approaches based on expressiveness, inference, complexity, scalability, explainability, and suitability.

---

## 2. Problem Statement

An automobile service center wants to identify possible vehicle faults using symptoms such as:

* Engine overheating
* Starting failure
* Abnormal engine noise
* Low mileage
* Warning indicators
* Low coolant
* Weak battery
* Poor acceleration

The system uses these symptoms to derive possible faults such as:

* Cooling system fault
* Battery fault
* Alternator fault
* Engine mechanical fault
* Fuel system fault

---

## 3. Objectives

The main objectives of this project are:

1. Identify important automobile symptoms and possible faults.
2. Represent automobile knowledge using production rules.
3. Represent the problem using propositional logic.
4. Represent entities and relationships using first-order logic.
5. Implement the expert system using Prolog.
6. Demonstrate forward chaining.
7. Demonstrate backward chaining.
8. Compare the different knowledge representation approaches.
9. Identify the most suitable modelling approach for automobile fault diagnosis.

---

## 4. Knowledge Representation

### 4.1 Production Rules

The system uses IF–THEN rules.

Example:

```text
IF engine is overheating AND coolant is low
THEN cooling system fault
```

Other rules identify battery, alternator, engine and fuel-system faults.

---

### 4.2 Propositional Logic

The symptoms are represented as propositions.

Example:

```text
O = Engine is overheating
C = Coolant level is low
CF = Cooling system fault
```

Rule:

```text
(O AND C) -> CF
```

---

### 4.3 First-Order Logic

First-order logic represents vehicles using predicates and variables.

Example:

```text
overheating(x) AND low_coolant(x)
        ->
cooling_fault(x)
```

This allows the same rule to be applied to different vehicles.

---

### 4.4 Prolog

Prolog is used to implement the knowledge base as facts and rules.

Example:

```prolog
overheating(car1).
low_coolant(car1).

cooling_fault(Car) :-
    overheating(Car),
    low_coolant(Car).
```

---

## 5. System Architecture

```text
                 AUTOMOBILE SYMPTOMS
                        |
                        v
              +---------------------+
              |   Knowledge Base    |
              |                     |
              | Facts + Rules       |
              +----------+----------+
                         |
                         v
              +---------------------+
              | Inference Mechanism |
              |                     |
              | Forward Chaining    |
              | Backward Chaining   |
              +----------+----------+
                         |
                         v
              +---------------------+
              |  Diagnosis Engine   |
              +----------+----------+
                         |
                         v
                 Possible Faults
```

---

## 6. Technologies Used

| Technology          | Purpose                              |
| ------------------- | ------------------------------------ |
| Prolog              | Expert system implementation         |
| SWI-Prolog          | Prolog development environment       |
| First-Order Logic   | Knowledge representation             |
| Propositional Logic | Logical representation               |
| Production Rules    | Rule-based representation            |
| GitHub              | Project repository and documentation |

---

## 7. Project Structure

```text
automobile-fault-diagnosis/
│
├── README.md
│
├── prolog/
│   └── automobile_diagnosis.pl
│
├── models/
│   ├── production_rules.txt
│   ├── propositional_logic.txt
│   └── first_order_logic.txt
│
├── test_cases/
│   └── test_cases.txt
│
├── outputs/
│   └── prolog_outputs.txt
│
└── documentation/
    └── assignment_report.pdf
```

---

## 8. Prolog Implementation

The main Prolog file is:

```text
prolog/automobile_diagnosis.pl
```

The program contains:

* Automobile symptom facts
* Diagnostic rules
* Diagnosis predicates
* Symptom checking predicates
* Diagnosis display predicates
* Test predicate

---

## 9. Sample Facts

```prolog
overheating(car1).
low_coolant(car1).

starting_failure(car1).
weak_battery(car1).

abnormal_noise(car1).

low_mileage(car1).
poor_acceleration(car1).

warning_indicator(car1).
```

---

## 10. Sample Diagnostic Rules

### Cooling System Fault

```prolog
cooling_fault(Car) :-
    overheating(Car),
    low_coolant(Car).
```

### Battery Fault

```prolog
battery_fault(Car) :-
    starting_failure(Car),
    weak_battery(Car).
```

### Alternator Fault

```prolog
alternator_fault(Car) :-
    warning_indicator(Car),
    weak_battery(Car).
```

### Engine Fault

```prolog
engine_fault(Car) :-
    abnormal_noise(Car),
    overheating(Car).
```

### Fuel System Fault

```prolog
fuel_fault(Car) :-
    low_mileage(Car),
    poor_acceleration(Car).
```

---

## 11. How to Run the Project

### Step 1: Install SWI-Prolog

Install SWI-Prolog on your computer.

### Step 2: Open SWI-Prolog

Launch the SWI-Prolog application.

### Step 3: Load the Program

Use:

```prolog
consult('automobile_diagnosis.pl').
```

If the program loads successfully:

```text
true.
```

will be displayed.

### Step 4: Run Queries

Test individual symptoms and faults using the queries below.

---

## 12. Test Queries

### Test 1 – Overheating

```prolog
?- overheating(car1).
```

Output:

```text
true.
```

### Test 2 – Cooling Fault

```prolog
?- cooling_fault(car1).
```

Output:

```text
true.
```

### Test 3 – Battery Fault

```prolog
?- battery_fault(car1).
```

Output:

```text
true.
```

### Test 4 – Alternator Fault

```prolog
?- alternator_fault(car1).
```

Output:

```text
true.
```

### Test 5 – Engine Fault

```prolog
?- engine_fault(car1).
```

Output:

```text
true.
```

### Test 6 – Fuel Fault

```prolog
?- fuel_fault(car1).
```

Output:

```text
true.
```

---

## 13. Complete Diagnosis Query

The main query is:

```prolog
?- diagnosis(car1, Fault).
```

Expected results:

```text
Fault = cooling_system_fault ;
Fault = battery_fault ;
Fault = alternator_fault ;
Fault = engine_mechanical_fault ;
Fault = fuel_system_fault.
```

The semicolon `;` is used to request additional solutions from Prolog.

---

## 14. Forward Chaining

Forward chaining starts with known facts and applies rules to derive new conclusions.

Example:

```text
overheating(car1)
        +
low_coolant(car1)
        |
        v
Cooling System Rule
        |
        v
cooling_fault(car1)
```

Therefore:

```text
Known Facts -> Rules -> New Conclusion
```

---

## 15. Backward Chaining

Backward chaining starts with a goal and searches for facts that can prove the goal.

Example:

```text
Goal:
cooling_fault(car1)
        |
        v
Required:
overheating(car1)
+
low_coolant(car1)
        |
        v
Both facts exist
        |
        v
Goal is TRUE
```

Therefore:

```text
Goal -> Rules -> Required Facts
```

---

## 16. Comparative Analysis

| Parameter                | Production Rules | Propositional Logic | First-Order Logic        | Prolog              |
| ------------------------ | ---------------- | ------------------- | ------------------------ | ------------------- |
| Knowledge Representation | IF–THEN rules    | Propositions        | Predicates and variables | Facts and rules     |
| Expressiveness           | Medium           | Low                 | Very High                | High                |
| Rule Representation      | Excellent        | Moderate            | Excellent                | Excellent           |
| Inference Mechanism      | Rule-based       | Logical inference   | Predicate inference      | Automated inference |
| Forward Chaining         | Easy             | Possible            | Possible                 | Possible            |
| Backward Chaining        | Possible         | Possible            | Possible                 | Naturally supported |
| Handling Relationships   | Limited          | Poor                | Excellent                | Excellent           |
| Scalability              | Moderate         | Low–Moderate        | High                     | High                |
| Explainability           | Very High        | High                | High                     | High                |
| Ease of Implementation   | Very Easy        | Easy                | Moderate                 | Easy–Moderate       |
| Suitability              | High             | Moderate            | Very High                | Very High           |

---

## 17. Results

The expert system successfully represents automobile fault diagnosis using four different approaches.

The Prolog implementation successfully:

* Stores automobile symptoms as facts.
* Represents diagnostic knowledge using rules.
* Performs logical inference.
* Determines possible faults.
* Answers diagnostic queries.
* Demonstrates backward reasoning.

---

## 18. Recommended Model

**Prolog is selected as the recommended implementation approach.**

Reasons:

1. Prolog naturally represents facts and rules.
2. It provides automated logical inference.
3. It supports backward chaining naturally.
4. It allows easy diagnostic queries.
5. The knowledge base can be extended with additional rules.
6. It is suitable for implementing rule-based expert systems.

---

## 19. Limitations

The current system has some limitations:

* It uses predefined rules.
* It does not handle uncertain diagnoses.
* It does not learn automatically from historical vehicle data.
* Similar symptoms may correspond to multiple faults.
* It does not directly use real-time vehicle sensor data.

---

## 20. Future Improvements

The system can be improved by:

* Adding more vehicle components.
* Adding more diagnostic rules.
* Integrating real-time sensors.
* Adding confidence scores.
* Integrating machine-learning models.
* Developing a graphical user interface.
* Supporting multiple vehicles.
* Adding a database for service history.

---

## 21. Conclusion

The Automobile Fault Diagnosis Expert System demonstrates the use of production rules, propositional logic, first-order logic and Prolog for representing diagnostic knowledge.

Forward chaining derives conclusions from known symptoms, while backward chaining starts from a diagnostic goal and searches for supporting facts.

Among the different approaches, Prolog provides a practical implementation because it combines facts, rules and automated logical reasoning. Therefore, Prolog is selected as the recommended model for implementing the automobile fault-diagnosis expert system.

---

## 22. References

1. Stuart Russell and Peter Norvig, *Artificial Intelligence: A Modern Approach*.
2. Ivan Bratko, *Prolog Programming for Artificial Intelligence*.
3. SWI-Prolog documentation.
4. Artificial Intelligence and Expert Systems course materials.
5. CO5 AT3 – Modelling Comparative Analysis Assignment.

---

