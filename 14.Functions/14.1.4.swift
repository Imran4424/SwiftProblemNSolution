// 14.1.4. Write a function that gets two integers and returns Addition

// get - has parameters
// display addition - no return type

func addition(x: Int, y: Int) {
        let sum = x + y

        print("Sum of the entered numbers is", sum)
}

// promt for entering first Interger
print("Please enter the first integer:", terminator: " ")

// using Nil-Coalescing Operator for both optionals
let imran = Int(readLine() ?? "0") ?? 0

// promt for entering first Interger
print("Please enter the second integer:", terminator: " ")

// using Nil-Coalescing Operator for both optionals
let pritha = Int(readLine() ?? "0") ?? 0

// first x is the label(name) of the parameter of the function
let = addition(x: imran, y: pritha)