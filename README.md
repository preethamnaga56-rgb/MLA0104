# MLA0104
BFS PSEUDOCODE
BEGIN

Read Graph G
Read Starting Node S

Create an empty Queue Q
Create an empty list/set Visited

Insert S into Q
Mark S as Visited

WHILE Q is not empty DO

    Remove the front node from Q
    Print the node

    FOR each neighbour of the current node DO

        IF neighbour is not visited THEN

            Mark neighbour as Visited
            Insert neighbour into Q

        END IF

    END FOR

END WHILE

END
