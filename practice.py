s = 'ABCDE'
arr = ["a","b","c","d"]
n = len(arr)
k = 2
def reversarr (arr, n , k):
    while( i < n):
        left = i;
        right = min(i+k-1, n-1)
        while (left < right):
            arr[left], arr[right] = arr[right], arr[left]
            left+=1;
            right -=1
            
    for i in range(0, n):
        i+= k
    print(arr[i], end=" ")

reversarr(arr, n, k)
