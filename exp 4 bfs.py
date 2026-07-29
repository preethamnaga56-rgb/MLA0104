from collections import deque

graph = {
    1: [2, 3],
    2: [5, 6],
    3: [7, 4],
    4: [8],
    5: [],
    6: [],
    7: [8],
    8: []
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
bfs(1)