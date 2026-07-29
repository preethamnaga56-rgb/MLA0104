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

visited = set()

def dfs(node):
    if node not in visited:
        print(node, end=" ")
        visited.add(node)

        for neighbour in graph[node]:
            dfs(neighbour)

print("DFS Traversal:")
dfs(1)