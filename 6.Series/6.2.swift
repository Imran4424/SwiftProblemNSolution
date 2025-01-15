// 6.2. Write a program to calculate the series: 2 + 4 + 6 + 8 + ... + n

// prompt for entering N
print("Please enter the nth term of the series:", terminator: " ")

// using Nil-Coalescing Operator for both optionals
let nthTerm = Int(readLine() ?? "0") ?? 0

let startElement: Int = 2
let interval: Int = 2
var seriesSum: Int = 0

for currentElement in stride(from: startElement, through: nthTerm, by: interval) {
        seriesSum = seriesSum + currentElement
}

print("Series sum of this:", seriesSum)