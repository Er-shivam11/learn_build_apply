def find_duplicate(nums):
    if len(nums) != len(set(nums)):
        return True
    return False

nums = [1,2,3,1]
print(find_duplicate(nums))  # Output: True

def find_duplicate_optimized(nums):
    seen = set()
    for num in nums:
        if num in seen:
            return True
        seen.add(num)
    return False
nums = [1,2,3,4]
print(find_duplicate_optimized(nums))  # Output: False
