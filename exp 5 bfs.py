from collections import deque

graph = {
    0: [1],
    1: [3, 2],
    2: [],
    3: [4],
    4: [5, 6],
    5: [7],
    6: [],
    7: []
}

def bfs(start):
    visited = set()
    queue = deque([start])
    visited.add(start)

    while queue:
        node = queue.popleft()
        print(node, end=" ")

        for neighbour in graph[node]:
            if neighbour not in visited:
                visited.add(neighbour)
                queue.append(neighbour)

print("BFS Traversal:")
bfs(0)