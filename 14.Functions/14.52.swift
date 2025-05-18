// 14.52. Demonstrate how to omit the function parameter label

func addition(_ x: Int, _ y: Int) -> Int {
        return x + y
}

// promt for entering first Interger
print("Please enter the first integer:", terminator: " ")

// using Nil-Coalescing Operator for both optionals
let imran = Int(readLine() ?? "0") ?? 0

// promt for entering first Interger
print("Please enter the second integer:", terminator: " ")

// using Nil-Coalescing Operator for both optionals
let pritha = Int(readLine() ?? "0") ?? 0

// since we put _ before parameter label
// we don't need to the parameter label when calling the function
let sakib = addition(imran, pritha)

print("Sum of the entered numbers is", sakib)