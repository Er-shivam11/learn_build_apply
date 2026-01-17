def moveZeroes(nums):
    left = 0   # where next non-zero should go

    for right in range(len(nums)):
        if nums[right] != 0:
            nums[left], nums[right] = nums[right], nums[left]
            left += 1

nums = [0, 1, 0, 3, 12]
moveZeroes(nums)
print(nums)


nums = [-4, -1, 0, 3, 10]
p = sorted(nums, reverse=True)