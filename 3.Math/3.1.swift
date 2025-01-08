// 3.1. Write a program that read any number and display absolute value

// prompt for entering first number
print("Please enter the number:", terminator: " ")

// using Nil-Coalescing Operator for both optionals
let number = Double(readLine() ?? "0.0") ?? 0.0

let absoluteValue = abs(number)

print("Absolute value of entered number is: ", absoluteValue)