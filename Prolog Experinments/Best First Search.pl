/* Experiment 11
   Best First Search */

edge(a,b).
edge(a,c).
edge(b,d).
edge(c,e).
edge(d,g).
edge(e,g).

heuristic(a,5).
heuristic(b,4).
heuristic(c,2).
heuristic(d,3).
heuristic(e,1).
heuristic(g,0).

best(Node):-
    heuristic(Node,H),
    write('Node : '),write(Node),nl,
    write('Heuristic Value : '),write(H),nl.