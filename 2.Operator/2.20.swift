// 2.20. Write a program that read two numbers and display maximum using ternary operator

// promt for entering first number
print("Please enter the first number:", terminator: " ")

// using Nil-Coalescing Operator for both optionals
let x = Double(readLine() ?? "0.0") ?? 0.0

// promt for entering first number
print("Please enter the second number:", terminator: " ")

// using Nil-Coalescing Operator for both optionals
let y = Double(readLine() ?? "0.0") ?? 0.0

let maximum = x > y ? x : y

print("Maximum of entered numbers are: ", maximum)
