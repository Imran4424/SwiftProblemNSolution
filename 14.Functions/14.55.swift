// 14.55. Function parameters with default values in Swift

// here,
// we are using default values for each parameter, x has 55 as default value, y has 46 as default value
// why there is default value
// in some cases we must need a value for function parameter
// in those cases if function caller don't pass any value
// we gonna use the default parameter
// otherwise function will behave normally
func addition(x: Int = 55, y: Int = 46) -> Int {
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

// let sakib = addition(x: imran, y: pritha)
let sakib = addition()

print("Sum of the entered numbers is", sakib)