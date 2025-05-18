// 14.1.2. Write a function that reads two integers and returns Addition

// read - no parameters
// returns - there will be a return type

func addition() -> Int {
        // promt for entering first Interger
        print("Please enter the first integer:", terminator: " ")

        // using Nil-Coalescing Operator for both optionals
        let x = Int(readLine() ?? "0") ?? 0

        // promt for entering first Interger
        print("Please enter the second integer:", terminator: " ")

        // using Nil-Coalescing Operator for both optionals
        let y = Int(readLine() ?? "0") ?? 0

        return x + y

        // let sum = x + y
        // return sum
}

let sum = addition()

print("Sum of the entered numbers is", sum)