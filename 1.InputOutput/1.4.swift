// 1.4. Write a program that read and display floating point number


// Prompt the user to enter a floating-point number
print("Please enter a floating-point number:")

// Read the input from the user
// optional chaining - we will talk about this later
if let input: Float = Double(readLine()!) {
	// Display the entered number
	print("You entered: \(input)")
} else {
	// If the input cannot be converted to a floating-point number, display an error message
	print("Invalid input. Please enter a valid floating-point number.")
}

/* 
	Here, we are using

	Optionals
	Optionals chaining

	We are gonna cover these topics later in details
*/