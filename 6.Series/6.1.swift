// 6.1. Write a program to calculate the series: 1 + 2 + 3 + 4 + ... + n

// prompt for entering N
print("Please enter the nth term of the series:", terminator: " ")

// using Nil-Coalescing Operator for both optionals
let nthTerm = Int(readLine() ?? "0") ?? 0

let starElement: Int = 1
var seriesSum: Int = 0

for i in 1...nthTerm {
        seriesSum = seriesSum + i
}

print("Series sum of this:", seriesSum)
