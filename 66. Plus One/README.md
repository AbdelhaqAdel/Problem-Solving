# 66. Plus One

## Problem Description

You are given a large integer represented as an integer array `digits`, where each `digits[i]` is the ith digit of the integer. The digits are ordered from most significant to least significant in left-to-right order. The large integer does not contain any leading 0's.

Increment the large integer by one and return the resulting array of digits.

---

### Example 1:

**Input:**
```plaintext
digits = [1,2,3]
```

**Output:**
```plaintext
[1,2,4]
```

**Explanation:** The array represents the integer `123`. Incrementing by one gives `123 + 1 = 124`. Thus, the result should be `[1,2,4]`.

---

### Example 2:

**Input:**
```plaintext
digits = [4,3,2,1]
```

**Output:**
```plaintext
[4,3,2,2]
```

**Explanation:** The array represents the integer `4321`. Incrementing by one gives `4321 + 1 = 4322`. Thus, the result should be `[4,3,2,2]`.

---

### Example 3:

**Input:**
```plaintext
digits = [9]
```

**Output:**
```plaintext
[1,0]
```

**Explanation:** The array represents the integer `9`. Incrementing by one gives `9 + 1 = 10`. Thus, the result should be `[1,0]`.

---

### Constraints:

- `1 <= digits.length <= 100`
- `0 <= digits[i] <= 9`
- The number does not contain any leading 0's.

---

## Approach

To solve this problem, we need to simulate the process of adding one to the given integer:

1. Traverse the array from the end to the beginning.
2. Add one to the last digit.
3. If the addition results in a value of `10`, set the current digit to `0` and carry over the `1` to the next digit.
4. If there is still a carry after processing all digits, prepend `1` to the array.

---

## Example Walkthrough

### Example 1: `digits = [1,2,3]`
1. Start from the last digit: `3 + 1 = 4` (no carry).
2. Result: `[1,2,4]`.

### Example 2: `digits = [4,3,2,1]`
1. Start from the last digit: `1 + 1 = 2` (no carry).
2. Result: `[4,3,2,2]`.

### Example 3: `digits = [9]`
1. Start from the last digit: `9 + 1 = 10` (carry `1` to the next digit).
2. Result: `[1,0]`.
