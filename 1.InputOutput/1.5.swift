// 1.5. Write a program that read and display a complex number


// Define a struct for representing complex numbers
struct ComplexNumber {
    var real: Double
    var imaginary: Double
    
    // Function to create a string representation of the complex number
    func description() -> String {
        if imaginary >= 0 {
            return "\(real) + \(imaginary)i"
        } else {
            return "\(real) - \(-imaginary)i"
        }
    }
}

// Prompt the user to enter the real and imaginary parts of the complex number
print("Please enter the real part of the complex number:")
if let realInput = readLine(), let realPart = Double(realInput) {
    print("Please enter the imaginary part of the complex number:")
    if let imagInput = readLine(), let imagPart = Double(imagInput) {
        // Create a ComplexNumber instance
        let complexNum = ComplexNumber(real: realPart, imaginary: imagPart)
        // Display the entered complex number
        print("You entered: \(complexNum.description())")
    } else {
        print("Invalid input for the imaginary part. Please enter a valid number.")
    }
} else {
    print("Invalid input for the real part. Please enter a valid number.")
}
