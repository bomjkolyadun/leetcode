class Solution {
    func reverseString(_ s: inout ArraySlice<Character>) {
        var left = 0
        var right = s.count - 1
        while left <= right {
            s.swapAt(left + s.startIndex, right + s.startIndex)
            left += 1
            right -= 1
        }
    }

    func reverseWords(_ s: String) -> String {
        var left = 0
        var right = 0
        var characters: [Character] = Array(s)
        for (idx, char) in characters.enumerated() {
            if char == " " || idx == characters.count - 1 {
                right = (idx == characters.count - 1) ? idx : idx - 1
                reverseString(&characters[left...right])
                left = idx + 1
            }
        }
        let result = String(characters)
        return result
    }
}
