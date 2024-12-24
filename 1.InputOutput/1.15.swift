// 1.15. Demonstrate optional chaining in Swift

/*
        Swift Language has six fundamentals Data types

                1. Int
                2. Float
                3. Double
                4. Character
                5. Bool
                6. String

        But there is another data type, but this not exacty data type more like a wrapper of all fundamental
        or user defined data type

        This wrapper data type is called Optionals

        Optionals are special type of data types which may contain a value or not (value absent or null)
*/

/*
        We can simply declare a data type as optional by simply appending either of these symbols (? or !)

        ? - If we declare optionals using this symbol, that means this optional can have either a value or nil
        ! - If we declare optionals using this symbol, that means even if this optional primarily have nil
            but it is guaranteed that in future it will have a value
*/

/*
        Optional chaining
 
        Optional chaining in Swift is a concise way to work with optionals by performing a series of calls, property accesses,
        or subscripting attempts without having to unwrap each optional manually. If any link in the chain is nil, the entire
        chain returns nil, and subsequent calls or accesses are safely skipped

        optional chaining examples:
        
                optionalValue?.property
                optionalValue?.method()
                optionalValue?[index]
*/

// let's see some example of optional chaining

// the following code is from 1.8
// which use the optional chaining for the first time

// Prompt the user to enter a character
print("Please enter a character:")

// Read the input from the user
if let input = readLine(), let character = input.first {
	// Get the Unicode scalar value of the character
	// here, we are using optional chaining
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
