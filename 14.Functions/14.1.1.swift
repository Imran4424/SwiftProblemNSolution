// 14.1.1. Write a function that reads two integers and display Addition

// read - no parameters
// display addition - no return type

func addition() {
        // promt for entering first Interger
        print("Please enter the first integer:", terminator: " ")

        // using Nil-Coalescing Operator for both optionals
        let x = Int(readLine() ?? "0") ?? 0

        // promt for entering first Interger
        print("Please enter the second integer:", terminator: " ")

        // using Nil-Coalescing Operator for both optionals
        let y = Int(readLine() ?? "0") ?? 0

        let sum = x + y

        print("Sum of the entered numbers is", sum)
}

addition()
