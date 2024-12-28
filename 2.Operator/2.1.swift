// 2.1. Write a program that read two integer and display sum

// promt for entering first Interger
print("Please enter the first integer:", terminator: " ")

// using Nil-Coalescing Operator for both optionals
let x = Int(readLine() ?? "0") ?? 0

// promt for entering first Interger
print("Please enter the second integer:", terminator: " ")

// using Nil-Coalescing Operator for both optionals
let y = Int(readLine() ?? "0") ?? 0

let sum = x + y

print("Sum of the entered numbers are", sum)
