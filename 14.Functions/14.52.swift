// 14.52. Demonstrate how to use extra parameter label for hiding actual parameter name

// swift functions have function parameter name and function parameter label
// function parameter label is only used for calling functions
// but function parameter name is generally use for functional operations
// but when we don't provide function parameter label at that moment function parameter name works as function label

// here, 
// x is the parameter name, first is the parameter label
// y is the parameter name, second is the paramter label
func addition(first x: Int, second y: Int) -> Int {
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

let sakib = addition(first: imran, second: pritha)

print("Sum of the entered numbers is", sakib)