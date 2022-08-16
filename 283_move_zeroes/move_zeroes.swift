class Solution {
    func moveZeroes(_ nums: inout [Int]) {
        var lastNonZeroPos = 0
        for i in 0..<nums.count {
            if (nums[i] != 0) {
                var a = nums[lastNonZeroPos]
                var b = nums[i]
                swap(&a, &b)
                nums[lastNonZeroPos] = a
                nums[i] = b
                lastNonZeroPos += 1
            }
        }
    }
}
