/* Experiment 12
   Medical Diagnosis */

disease(fever,flu).
disease(cough,flu).
disease(headache,migraine).
disease(bodypain,viral_fever).
disease(stomach_pain,gastritis).

diagnosis(Symptom,Disease):-
    disease(Symptom,Disease).