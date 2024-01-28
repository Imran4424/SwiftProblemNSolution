// 1.6. Write a program that read and display any character

// Prompt the user to enter a character
print("Please enter a character:")

// Read the input from the user
if let input = readLine(), let character = input.first {
    // Display the entered character
    print("You entered: \(character)")
} else {
    // If the input is empty or contains more than one character, display an error message
    print("Invalid input. Please enter a single character.")
}
