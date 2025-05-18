// 14.1.3. Write a function that gets two integers and display Addition

// get - has parameters
// display addition - no return type

// here, 
// x is both parameter name and parameter label
// y is both parameter name and paramter label
func addition(x: Int, y: Int) {
        let sum = x + y

        print("Sum of the entered numbers is", sum)
}

// promt for entering first Interger
print("Please enter the first integer:", terminator: " ")

// using Nil-Coalescing Operator for both optionals
let x = Int(readLine() ?? "0") ?? 0

// promt for entering first Interger
print("Please enter the second integer:", terminator: " ")

// using Nil-Coalescing Operator for both optionals
let y = Int(readLine() ?? "0") ?? 0

// first x is the label(name) of the parameter of the function
// second x is the parameter name, which is being passed into the function
// both name can be same it will not conflict because of code scope functionality

// same thing goes for first and second y
addition(x: x, y: y)
