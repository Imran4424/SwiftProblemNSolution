// 1.18. Write a program that read and display your name

// Prompt the user to enter a character
print("Please enter your name:")

// Read the input from the user
// optional binding - we will talk about this later
if let input = readLine() {
        print("Your entered name is:", input)
} else {
        print("Invalid input. Please enter a valid string")
}