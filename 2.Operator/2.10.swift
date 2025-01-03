// 2.10. Write a program that read two numbers and display bitwise AND

// promt for entering first Interger
print("Please enter the first integer:", terminator: " ")

// using Nil-Coalescing Operator for both optionals
let x = Int(readLine() ?? "0") ?? 0

// promt for entering first Interger
print("Please enter the second integer:", terminator: " ")

// using Nil-Coalescing Operator for both optionals
let y = Int(readLine() ?? "0") ?? 0

// this is bitwise AND operator of swift
let bitwiseAND = x & y

print("Bitwise AND of the entered numbers is", bitwiseAND)