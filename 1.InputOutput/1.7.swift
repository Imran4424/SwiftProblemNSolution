// 1.7. Write a program that read ASCII value and display equivalent character

// Prompt the user to enter an ASCII value
print("Please enter an ASCII value:")

// Read the input from the user
if let asciiValue: Int = Int(readLine()!) {
    // Convert the ASCII value to a character
    if let character = UnicodeScalar(asciiValue) {
        // Display the equivalent character
        print("Equivalent character: \(character)")
    } else {
        // If the ASCII value does not correspond to a valid character, display an error message
        print("Invalid ASCII value. Please enter a valid ASCII value.")
    }
} else {
    // If the input cannot be converted to an integer, or is empty, display an error message
    print("Invalid input. Please enter a valid ASCII value.")
}

/* 
	Here, we are using

	Optionals
	Optionals chaining

	We are gonna cover these topics later in details
*/