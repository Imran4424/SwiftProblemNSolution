// 14.57. Swift Nested functions

// In Swift, a function can exist inside the body of another function. 
// This is called a nested function.

// outer function
func greetMessage() {
        
        // inner function
        func displayName() {
                print("Good Morning Abraham!")
        }

        // calling inner function
        displayName()
}

// calling outer function
greetMessage()