class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        var set = Set<Character>()
        let charArray = Array(s)
        let n = charArray.count
        var i = 0
        var j = 0
        var result = 0
        while (j < n && i < n) {
            let char = charArray[j]
            if set.contains(char) {
                set.remove(charArray[i])
                i += 1
            } else {
                set.insert(char)
                j += 1
            }
            result = max(result, set.count)
        }
        return result
    }
}
