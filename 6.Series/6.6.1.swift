// 6.6. Write a program to calculate the series: 1.2 + 2.3 + 3.4 + ... + n(n+1)

// prompt for entering N
print("Please enter the nth term of the series:", terminator: " ")

// using Nil-Coalescing Operator for both optionals
let nthTerm = Int(readLine() ?? "0") ?? 0

let startElement: Int = 1
var seriesSum: Int = 0

for (i, j) in zip(startElement...nthTerm, startElement + 1...nthTerm + 1) {
        seriesSum = seriesSum + i * j
}

print("Series sum of this:", seriesSum)