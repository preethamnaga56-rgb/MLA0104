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

visited = set()

def dfs(node):
    if node not in visited:
        print(node, end=" ")
        visited.add(node)

        for neighbour in graph[node]:
            dfs(neighbour)

print("DFS Traversal:")
dfs(0)