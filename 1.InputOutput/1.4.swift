// 1.4. Write a program that read and display floating point number


// Prompt the user to enter a floating-point number
print("Please enter a floating-point number:")

// Read the input from the user
if let input = readLine(), let number = Double(input) {
    // Display the entered number
    print("You entered: \(number)")
} else {
    // If the input cannot be converted to a floating-point number, display an error message
    print("Invalid input. Please enter a valid floating-point number.")
}