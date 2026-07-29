from collections import deque

graph = {
    1: [2, 7],
    2: [3, 6],
    3: [4, 5],
    4: [],
    5: [],
    6: [],
    7: [8, 10],
    8: [9],
    9: [],
    10: []
}

visited = []
queue = deque([1])

while queue:
    node = queue.popleft()

    if node not in visited:
        visited.append(node)
        print(node, end=" ")

        for i in graph[node]:
            queue.append(i)