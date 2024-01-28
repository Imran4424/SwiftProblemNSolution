// 1.8. Wrtie a program that read any character and display equivalent ASCII value

// Prompt the user to enter a character
print("Please enter a character:")

// Read the input from the user
if let input = readLine(), let character = input.first {
    // Get the Unicode scalar value of the character
    let unicodeScalarValue = character.unicodeScalars.first?.value
    
    if let asciiValue = unicodeScalarValue {
        // Display the equivalent ASCII value
        print("Equivalent ASCII value: \(asciiValue)")
    } else {
        // If unable to get Unicode scalar value, display an error message
        print("Error: Unable to determine the ASCII value.")
    }
} else {
    // If the input is empty or contains more than one character, display an error message
    print("Invalid input. Please enter a single character.")
}

