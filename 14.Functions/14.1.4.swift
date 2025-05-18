// 14.1.4. Write a function that gets two integers and returns Addition

// get - has parameters
// returns - there will be a return type

// here, 
// x is both parameter name and parameter label
// y is both parameter name and paramter label
func addition(x: Int, y: Int) -> Int {
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

let sakib = addition(x: imran, y: pritha)

print("Sum of the entered numbers is", sakib)