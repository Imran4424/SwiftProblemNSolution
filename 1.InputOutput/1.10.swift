// 1.10. Write a program that read any uppercase character and display in lowercase

// Prompt the user to enter aa uppercase character
print("please enter a uppercase character: ")

if let input = readLine(), let character = input.first {
        // Get the Unicode scalar value of the character
        // optional value
        let unicodeScalarValue = character.unicodeScalars.first?.value

        if var asciiValue = unicodeScalarValue {
                asciiValue = asciiValue + 32

                if let lowercaseChar = UnicodeScalar(asciiValue) {
                        print("lowercase of input character is: \(lowercaseChar)" )
                }
        }
} else {
        print("Error!!!, please enter uppercase character")
}
