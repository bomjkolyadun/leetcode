class Solution: VersionControl {

    func binarySearch(_ n: Int,_ left: Int,_ right: Int) -> Int {
        if left > right {
            return isBadVersion(left) ? left : -1
        }
        let pivot = left + (right - left) / 2
        let mResult = isBadVersion(pivot)
        if mResult == true {
            return binarySearch(n, left, pivot - 1)
        }
        return binarySearch(n, pivot + 1, right)
    }

    func firstBadVersion(_ n: Int) -> Int {
        binarySearch(n, 1, n)
    }
}
