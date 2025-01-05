# Swift Average Calculation Bug
This repository demonstrates a potential bug in a Swift function designed to calculate the average of an array of Double values. The bug involves potential integer overflow and division by zero. 

## Bug Description
The `calculateAverage` function correctly handles empty arrays by returning 0. However, it does not explicitly check for potential integer overflow if the sum of numbers exceeds the maximum value representable by a `Double`. Additionally, there's no check to explicitly handle an empty input array, even though it's already addressed with the guard statement. 

## Solution
The improved `calculateAverage` function includes a check for potential overflow before performing the division.  It also uses a more robust approach to handle an empty input array. 

## How to reproduce the bug
1. Clone the repository.
2. Run `bug.swift`.