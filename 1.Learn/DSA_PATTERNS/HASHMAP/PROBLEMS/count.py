
### 1️⃣ Using `dict` + loop


nums = [1,1,1,2,2,3]
count = {}
for num in nums:
    if num in count:
        count[num] += 1
    else:
        count[num] = 1
print(count)


### 2️⃣ Using `dict.get()` shortcut


nums = [1,1,1,2,2,3]
count = {}
for num in nums:
    count[num] = count.get(num, 0) + 1
print(count)


### 3️⃣ Using `collections.Counter`


from collections import Counter
nums = [1,1,1,2,2,3]
count = Counter(nums)
print(count)


### 4️⃣ Using `defaultdict` (optional)

# ```python
from collections import defaultdict
nums = [1,1,1,2,2,3]
count = defaultdict(int)
for num in nums:
    count[num] += 1
print(count)


# So basically **4 solid approaches**.
# If you want, I can also show a **one-liner approach** using **`pandas` or `numpy`**, but for core Python these 4 are enough.

# Do you want me to list that one-liner too?
