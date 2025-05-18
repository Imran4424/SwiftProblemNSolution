// 14.50. Workaround of the behaviour of function parameters in swift

func addition(x: Int, y: Int) -> Int {
        var imran = x
        var pritha = y

        imran = 55
        pritha = 46

        return imran + pritha
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