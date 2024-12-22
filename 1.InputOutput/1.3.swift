// 1.3. Write a program that read and display an integer number

// Prompt the user to enter an integer number
print("Please enter an integer number:")

// Read the input from the user
// optional chaining - we will talk about this later
if let number: Int = Int(readLine()!) {
        // Display the entered number
        print("You entered: \(number)")
} else {
        // If the input cannot be converted to an integer, display an error message
        print("Invalid input. Please enter a valid integer number.")
}

/* 
        Here, we are using

        Optionals
        Optional Bindings
        Optionals chaining

        We are gonna cover these topics later in details
*/