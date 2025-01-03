// 2.4. Write a program that read two integers and divide them

// promt for entering first Interger
print("Please enter the first integer:", terminator: " ")

// using Nil-Coalescing Operator for both optionals
let x = Int(readLine() ?? "0") ?? 0

// promt for entering first Interger
print("Please enter the second integer:", terminator: " ")

// using Nil-Coalescing Operator for both optionals
// changing default value to 1 because we can't divide something by zero
let y = Int(readLine() ?? "1") ?? 1

if y == 0 {
        print("Error!!! Can't divide by zero")
} else {
        let quotient = x / y

        print("Quotient of the entered numbers is", quotient)
}