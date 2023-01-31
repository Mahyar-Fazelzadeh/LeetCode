class Solution:
    def pivotIndex(self, nums: List[int]) -> int:
        total_sum=sum(nums)
        running_sum=[]
        for i in range(len(nums)):
            running_sum = sum(nums[:i])
            if (total_sum-nums[i]) == 2*running_sum:
                return i
        
        return -1
