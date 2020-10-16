n = int(input("Enter No. of Nodes : "))

print("Enter Adjancency Matrix : ")
arr = [[0 for j in range(n)] for i in range(n)]
for i in range(0,n):
    arr[i] = list(map(int,input().split()))

print("Adjancency Matrix is : ")
print(arr)

for p in range(n):
    visited = [0 for l in range(n)]
    start=p
    cost=0
    j=1
    curr=start
    visited[start]=1
    print("Path For City " + str(curr+1))
    print(curr+1,end=' ')
    while j<n:
        nearest = arr[curr][curr]
        k = curr
        for i in range(n):
            if arr[curr][i]<nearest and visited[i]==0:
                    nearest=arr[curr][i]
                    k=i
        curr=k
        cost=cost+nearest
        visited[k]=1
        j=j+1
        print("> " + str(k+1),end=' ')
    cost=cost+arr[curr][start]
    print("")
    print("Cost for City " + str(p+1) + "=" + str(cost))
    print("------------------------------------")


