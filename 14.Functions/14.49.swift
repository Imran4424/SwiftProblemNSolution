// 14.49. Demonstrate the behaviour of function parameters in swift

func addition(x: Int, y: Int) -> Int {
        // the following line will give compilation error
        // why?
        // every parameter in swift considered to be constant, so we can not modify it's value
        x = 5

        // the following line will give compilation error
        // why?
        // every parameter in swift considered to be constant, so we can not modify it's value
        y = 3

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