// 1.9. Write a program that read any lower case character and display in upper case

// Prompt the user to enter aa lowercase character
print("please enter a lowercase character: ")

if let input = readLine(), let character = input.first {
        let upercaseChar = character.toUpper

        print("uppercase of input character is: \(upercaseChar)" )
        
} else {
        print("Error!!!, please enter lower case character")
}
