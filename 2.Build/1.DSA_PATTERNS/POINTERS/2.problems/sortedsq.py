def sortedSquares(nums):
    n = len(nums)
    result = [0] * n

    left = 0
    right = n - 1
    pos = n - 1   # fill from back

    while left <= right:
        if abs(nums[left]) > abs(nums[right]):
            result[pos] = nums[left] * nums[left]
            left += 1
        else:
            result[pos] = nums[right] * nums[right]
            right -= 1
        pos -= 1

    return result

nums = [-4, -1, 0, 3, 10]
print(sortedSquares(nums))
