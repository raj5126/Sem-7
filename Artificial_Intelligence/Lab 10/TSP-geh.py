n = int(input("Enter No. of Nodes : "))

print("Enter Adjancency Matrix : ")
arr = [[0 for j in range(n)] for i in range(n)]
for i in range(0,n):
    arr[i] = list(map(int,input().split()))

print("Adjancency Matrix is : ")
print(arr)

start=0
end=0
visited = [0 for l in range(n)]
cost=0
min=9999
for i in range(n):
    for j in range(n):
        if arr[i][j]<min:
            start=i
            end=j
            min=arr[i][j]
            cost=arr[i][j]

print(str(start+1) + " " + str(end+1))
c=2
visited[start]=1
visited[end]=1
while c<n:
    min_edge=9999
    node=0
    for j in range(n):
        if arr[start][j]<min_edge and visited[j]==0:
            node=j
            min_edge=arr[start][j]
    
    k=9999
    p=0
    for j in range(n):
        if arr[end][j]<k and visited[j]==0:
            p=j
            k=arr[end][j]
    
    if k<min_edge:
        print(str(end+1)+" " + str(p+1))
        cost=cost+k
        visited[p]=1
        end=p
    else:
        cost=cost+min_edge
        print(str(start+1)+" "+str(node+1))
        start=node
        visited[node]=1
    c=c+1

print(str(start+1)+" "+str(end+1))
cost=cost+arr[start][end]
print("Cost =",cost)
