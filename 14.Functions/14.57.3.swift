// 14.57. Swift Nested functions

// In Swift, a function can exist inside the body of another function. 
// This is called a nested function.

func operate(symbol: String) -> (Int, Int) -> Int {

        // inner function to add two numbers 
        func add(num1: Int, num2: Int) -> Int {
                return num1 + num2
        }

        // inner function to subtract two numbers    
        func subtract(num1: Int, num2: Int) -> Int {
                return num1 - num2
        }

        let operation = (symbol == "+") ?  add : subtract
        return operation
}

let operation = operate(symbol: "+")
let result = operation(8, 3)
print("Result:", result)