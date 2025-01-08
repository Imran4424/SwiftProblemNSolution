// 3.14. Write a program that read two numbers base, power and display the value of base^power

// importing foundation framework for pow function
import Foundation

// promt for entering first number
print("Please enter the base number:", terminator: " ")

// using Nil-Coalescing Operator for both optionals
let base = Double(readLine() ?? "0.0") ?? 0.0

// promt for entering exponent number
print("Please enter the exponent number:", terminator: " ")

// using Nil-Coalescing Operator for both optionals
let exponent = Double(readLine() ?? "0.0") ?? 0.0

// this pow function is declared in Foundation framework
// for using it we need to import it
// otherwise it will give you error
let result = pow(base, exponent)

print("The result of enter number and exponent is:", result)
