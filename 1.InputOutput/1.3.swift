// 1.3. Write a program that read and display an integer number

// Prompt the user to enter an integer number
print("Please enter an integer number:")

// Read the input from the user
if let number = Int(readLine()!) {
    // Display the entered number
    print("You entered: \(number)")
} else {
    // If the input cannot be converted to an integer, display an error message
    print("Invalid input. Please enter a valid integer number.")
}