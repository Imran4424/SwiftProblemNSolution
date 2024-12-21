// 1.5. Write a program that read and display double number

// Double represents a 64-bit floating-point number.

// Prompt the user enter a double number
print("Please enter a double number:")

// Read the input from the user
// optional chaining - we will talk about this later
if let input: Double = Double(readLine()!) {
	// Display the entered number
	print("You entered: \(input)")
} else {
	print("Invalid input. Please enter a valid double number.")
}

/* 
	Here, we are using

	Optionals
	Optionals chaining

	We are gonna cover these topics later in details
*/