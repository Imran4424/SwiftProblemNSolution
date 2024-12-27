// 1.19. Write a program that read and display your full name

// Prompt the user to enter a string
print("Please enter your full name:")

// Read the input from the user
// optional binding - we will talk about this later
if let input = readLine() {
        print("Your entered name is:", input)
} else {
        print("Invalid input. Please enter a valid string")
}