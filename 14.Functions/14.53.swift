// 14.53. Demonstrate how to omit the function parameter label

// swift functions have function parameter name and function parameter label
// function parameter label is only used for calling functions
// but function parameter name is generally use for functional operations
// but when we don't provide function parameter label at that moment function parameter name works as function label

// but there is a way we can avoid using parameter label during function call
// to omit function label
// we just need to put underscore(_) in the function label space

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