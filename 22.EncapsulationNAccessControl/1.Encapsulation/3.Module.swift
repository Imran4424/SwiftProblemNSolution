
// Swift’s access control model is based on the concept of modules, source files, and packages.


// -----------
// A module is a single unit of code distribution — 
// 
// a framework or application that’s built and shipped as a single unit and that can be imported by 
// another module with Swift’s import keyword.

// Each build target (such as an app bundle or framework) in Xcode is treated as a separate module in Swift.

// If you group together aspects of your app’s code as a stand-alone framework — perhaps to encapsulate 
// and reuse that code across multiple applications — then everything you define within that framework 
// will be part of a separate module when it’s imported and used within an app, or when it’s used within another framework.
// -----------



// the module is an application or a framework (library)

// If we create a project with classes A and B, they are part of the same module. 
// Any other class in the same project can inherit from those classes.

class A {
}

// here, class C is inheriting class B
// we will learn about inheritance in detail later
class B: A {
}

// let's assume that class A and class are in Module1


// let's see another example
// here foundation is a framework (for this case let's assume this is a single module framework)
// importing foundation framework for pow function
import Foundation

// promt for entering first number
print("Please enter the base number:", terminator: " ")

// using Nil-Coalescing Operator for both optionals
let base = Double(readLine() ?? "0.0") ?? 0.0

// promt for entering exponent number
print("Please enter the exponent number:", terminator: " ")

// using Nil-Coalescing Operator for both optionals
let exponent = Double(readLine() ?? "0.0") ?? 0.0

// this pow function is declared in Foundation framework
// for using it we need to import it
// otherwise it will give you error
let result = pow(base, exponent)

print("The result of enter number and exponent is:", result)