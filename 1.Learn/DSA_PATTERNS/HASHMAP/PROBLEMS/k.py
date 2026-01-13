# “Sort = arrange all, Heap = keep only needed.”
# “Heap is more efficient for large data as it avoids full sorting.”
# count of num or str both same logic applies
from collections import Counter

def topKFrequent(nums, k):
    count = Counter(nums)
    return [item for item, freq in count.most_common(k)]

nums = [1,1,1,2,2,3]
k = 2
print(topKFrequent(nums, k))


import heapq
from collections import Counter

def topKFrequent(nums, k):
    count = Counter(nums)
    return heapq.nlargest(k, count.keys(), key=count.get)

nums = [1,1,1,2,2,3]
k = 2
print(topKFrequent(nums, k))

import heapq

def topKFrequent(nums, k):
    # Step 1: Count frequency
    freq = {}
    for num in nums:
        freq[num] = freq.get(num, 0) + 1

    # Step 2: Min-heap to keep top k
    heap = []
    for num, count in freq.items():
        heapq.heappush(heap, (count, num))
        if len(heap) > k:
            heapq.heappop(heap)

    # Step 3: Extract result
    result = []
    while heap:
        result.append(heapq.heappop(heap)[1])

    return result

# Example
nums = [1,1,1,2,2,3]
k = 2
print(topKFrequent(nums, k))  # Output: [2,1] or [1,2]
