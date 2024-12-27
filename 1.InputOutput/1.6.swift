// 1.6. Write a program that read and display any character

// Prompt the user to enter a character
print("Please enter a character:")

// Read the input from the user
// optional binding - we will talk about this later
if let input = readLine(), let character: Character = input.first {
	// Display the entered number
	print("You entered: \(character)")
} else {
	print("Invalid input. Please enter a valid character.")
}

/* 
	Here, we are using

	Optionals
	Optionals chaining

	We are gonna cover these topics later in details
*/