class Solution {
    func sortedSquares(_ nums: [Int]) -> [Int] {
        var result = Array<Int>(repeating: 0, count: nums.count)
        var left = 0
        var right = nums.count - 1
        var maxSqrPosition = right
        while left <= right {
            let leftSqr = nums[left] * nums[left]
            let rightSqr = nums[right] * nums[right]
            if leftSqr > rightSqr {
                result[maxSqrPosition] = leftSqr
                left += 1
            } else {
                result[maxSqrPosition] = rightSqr
                right -= 1
            }
            maxSqrPosition -= 1
        }
        return result
    }
}
