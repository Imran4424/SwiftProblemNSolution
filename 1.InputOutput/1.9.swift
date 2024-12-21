// 1.9. Write a program that read any lower case character and display in upper case

// Prompt the user to enter aa lowercase character
print("please enter a lowercase character: ")

if let input = readLine(), let character = input.first {
        // Get the Unicode scalar value of the character
        // optional value
        let unicodeScalarValue = character.unicodeScalars.first?.value

        if var asciiValue = unicodeScalarValue {
                asciiValue = asciiValue - 32

                if let uppercaseChar = UnicodeScalar(asciiValue) {
                        print("uppercase of input character is: \(uppercaseChar)" )
                }
        }
} else {
        print("Error!!!, please enter lower case character")
}

/* 
	Here, we are using

	Optionals
	Optionals chaining

	We are gonna cover these topics later in details
*/