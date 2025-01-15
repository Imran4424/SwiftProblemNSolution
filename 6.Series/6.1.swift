// 6.1. Write a program to calculate the series: 1 + 2 + 3 + 4 + ... + n

// prompt for entering N
print("Please enter the nth term of the series:", terminator: " ")

// using Nil-Coalescing Operator for both optionals
let nthTerm = Int(readLine() ?? "0") ?? 0

let startElement: Int = 1
var seriesSum: Int = 0

// range operators (...)
// this will produce the numbers from start to end
// interval between two numbers will always be 1
for i in startElement...nthTerm {
        seriesSum = seriesSum + i
}

print("Series sum of this:", seriesSum)

/* 
        There is another ranger operator which is called half open range operators ..<

        start..<end
        half open range operators (..<)
        this will produce the numbers from start to end - 1
        interval between two numbers will always be 1

        1...5 will produce 1 2 3 4 5
        1..<5 will produce 1 2 3 4
*/