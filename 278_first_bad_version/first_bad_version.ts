/**
 * The knows API is defined in the parent class Relation.
 * isBadVersion(version: number): boolean {
 *     ...
 * };
 */

function binarySearch(start: number, end: number, isBadVersion: any): number {
    let mid = Math.floor((start + end)/2)
    if (end - start <= 0) {
        return isBadVersion(start) ? start : -1
    }
    let mResult = isBadVersion(mid) ? mid : -1

    if (mResult > -1) {
        let lResult = binarySearch(start, mid-1, isBadVersion)
        return (lResult > -1) ? lResult : mResult
    } else {
        return binarySearch(mid+1, end, isBadVersion)
    }
}


var solution = function(isBadVersion: any) {

    return function(n: number): number {
        return binarySearch(1, n+1, isBadVersion)
    };
};
