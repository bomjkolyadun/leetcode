class Solution {
    func reverse(_ nums: inout [Int], _ start: Int, _ end: Int) {
        var startIdx = start
        var endIdx = end
        while startIdx < endIdx {
            nums[endIdx] = nums[endIdx] + nums[startIdx]
            nums[startIdx] = nums[endIdx] - nums[startIdx]
            nums[endIdx] = nums[endIdx] - nums[startIdx]
            startIdx += 1
            endIdx -= 1
        }
    }

    func rotate(_ nums: inout [Int], _ k: Int) {
        let k = k % nums.count
        let lastIdx = nums.count - 1
        reverse(&nums, 0, lastIdx)
        reverse(&nums, 0, k - 1)
        reverse(&nums, k, lastIdx)
    }
}
