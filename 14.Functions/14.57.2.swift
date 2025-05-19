// 14.57. Swift Nested functions

// In Swift, a function can exist inside the body of another function. 
// This is called a nested function.

// outer function
func addNumbers() {
        print("Addition")

        // inner function
        func display(num1: Int, num2: Int) {
                print("5 + 10 =", num1 + num2)
        }

        // calling inner function with two values
        display(num1: 5, num2: 10)
}

// calling outer function
addNumbers()