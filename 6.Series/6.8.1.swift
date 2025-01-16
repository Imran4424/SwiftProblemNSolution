// 6.8. Write a program to calculate the series: 1.3 + 3.5 + 5.7 + ... + n(n+2)

// prompt for entering N
print("Please enter the nth term of the series:", terminator: " ")

// using Nil-Coalescing Operator for both optionals
let nthTerm = Int(readLine() ?? "0") ?? 0

let startElement: Int = 1
let interval: Int = 2
var seriesSum: Int = 0

for (i, j) in zip(stride(from: startElement, through: nthTerm, by: interval), stride(from: startElement + 2, through: nthTerm + 2, by: interval)) {
        seriesSum = seriesSum + i * j
}

print("Series sum of this:", seriesSum)