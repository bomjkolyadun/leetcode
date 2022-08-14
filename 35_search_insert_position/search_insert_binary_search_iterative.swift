class Solution {
    func searchInsert(_ nums: [Int], _ target: Int) -> Int {
        var pivot: Int
        var left = 0
        var right = nums.count - 1
        while (left <= right) {
            pivot = left + (right - left) / 2
            if nums[pivot] == target {
                return pivot
            }
            if target < nums[pivot] {
                right = pivot - 1
            } else {
                left = pivot + 1
            }
        }
        return left
    }
}
