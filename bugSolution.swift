func calculateAverage(numbers: [Double]) -> Double {
    guard !numbers.isEmpty else { return 0 } 
    //Check if sum will cause overflow
    let sum = numbers.reduce(0, +)
    guard sum <= Double.greatestFiniteMagnitude else{return Double.infinity}
    return sum / Double(numbers.count)
}

let numbers = [1.0, 2.0, 3.0, 4.0, 5.0]
let average = calculateAverage(numbers: numbers)
print(average) // Output: 3.0

let emptyNumbers: [Double] = []
let emptyAverage = calculateAverage(numbers: emptyNumbers)
print(emptyAverage) // Output: 0.0

let largeNumbers = Array(repeating: Double.greatestFiniteMagnitude / 10, count: 10)
let largeAverage = calculateAverage(numbers: largeNumbers)
print(largeAverage) // Output: Infinity (handles overflow gracefully) 