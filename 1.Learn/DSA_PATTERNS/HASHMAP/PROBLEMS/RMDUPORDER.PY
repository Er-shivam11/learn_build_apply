def removeDuplicatesKeepOrder(arr):
    seen=set()
    for num in arr:
        if num in seen:
            # result.append(num)
            return True
        seen.add(num)
        
    return False

arr=[1, 2, 3, 2, 4, 1, 5, 3]
print(removeDuplicatesKeepOrder(arr))