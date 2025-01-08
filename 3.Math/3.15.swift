// 3.15. Write a program that read any number and display it's square root

// importing foundation framework for sqrt function
import Foundation

// prompt for entering first number
print("Please enter the number:", terminator: " ")

// using Nil-Coalescing Operator for both optionals
let number = Double(readLine() ?? "0.0") ?? 0.0

// this sqrt() function is declared in Foundation framework
// for using it we need to import it
// otherwise it will give you error
let squareRoot = sqrt(number)

print("Square root value of entered number is: ", squareRoot)