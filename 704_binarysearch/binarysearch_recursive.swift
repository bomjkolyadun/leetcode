class Solution {
    func binarySearch(_ nums:[Int], _ target: Int,_ left: Int,_ right: Int) -> Int {
        if left > right {
            return -1
        }
        let pivot = left + (right - left) / 2
        if nums[pivot] == target {
            return pivot
        }
        if nums[pivot] > target {
            return binarySearch(nums, target, left, pivot - 1)
        }
        return binarySearch(nums, target, pivot + 1, right)
    }

    func search(_ nums: [Int], _ target: Int) -> Int {
        var pivot: Int
        var left = 0
        var right = nums.count - 1
        return binarySearch(nums, target, left, right)
    }
}
