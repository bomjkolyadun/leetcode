/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init() { self.val = 0; self.next = nil; }
 *     public init(_ val: Int) { self.val = val; self.next = nil; }
 *     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 * }
 */
class Solution {
    func removeNthFromEnd(_ head: ListNode?, _ n: Int) -> ListNode? {
        var node: ListNode? = head
        var len = 0
        while (node != nil) {
            len += 1
            node = node?.next
        }

        let removalIndex = len - n
        if removalIndex == 0 {
            return head?.next
        }
        var idx = 0
        node = head
        while (removalIndex > idx + 1 && node != nil) {
            node = node?.next
            idx += 1
        }

        node?.next = node?.next?.next
        return head
    }
}
