function search(nums: number[], target: number): number {
    let l = 0
    let r = nums.length - 1
    let mid = Math.floor((l + r) / 2)

    if (r % 2 !== 0) {
        mid += 1
    }

    if (nums[mid] === target) {
        return mid
    }
    if (nums.length === 1) {
        return -1
    }
    if (nums[mid] > target) {
        const result = search(nums.slice(0, mid), target)
        return result
    }
    const result = search(nums.slice(mid), target)
    return result === -1 ? -1 : result + mid
};
