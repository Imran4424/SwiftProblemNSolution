// 6.8. Write a program to calculate the series: 1.3 + 3.5 + 5.7 + ... + n(n+2)

// prompt for entering N
print("Please enter the nth term of the series:", terminator: " ")

// using Nil-Coalescing Operator for both optionals
let nthTerm = Int(readLine() ?? "0") ?? 0

let startElement: Int = 1
let interval: Int = 2
var seriesSum: Int = 0

for currentElement in stride(from: startElement, through: nthTerm, by: interval) {
        seriesSum = seriesSum + (currentElement * (currentElement + 2))
}

print("Series sum of this:", seriesSum)