// 4.1. Write a program that read an integer and prints odd or even

// promt for entering an Interger
print("Please enter the integer:", terminator: " ")

// using Nil-Coalescing Operator for both optionals
let number = Int(readLine() ?? "0") ?? 0

// as per swift syntax guideline 
// we should not use parenthesis around if conditions like C, C++, C# or java language
// we can use parenthesis without running to an error but we should follow swift syntax guideline
if number % 2 == 0 {
        print("entered number is Even")
} else {
        print("entered number is Odd")
}