// 1.20. Demonstrate how to access optional variable using Nil-Coalescing Operator

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
        We already learned about multiple ways how to access a optional variable's value

        1. Force-Unwrapping
        2. Optional Binding using if let or if var
        3. Optional Binding using guard let or guard var
        4. Multiple Optional Binding
        5. Optional Chaining

        But there's another way we can access optional values, using an operator
*/

/*
        Yes, we can access optional values using an operator called Nil-Coalescing Operator

        ?? - Nil-Coalescing Operator

        signature syntax for Nil-Coalescing Operator

        optional-variable ?? default-value
*/

// declaring int optional with ?
var intOptional: Int?

// accessing a optional variable with Nil-Coalescing Operator
// Nil-Coalescing Operator checks whether an optional contains a value or not
// if value present then it returns the actual value from optional variable
// But if the value is not present then it returns the default value
print("Accessing optional using Nil-Coalescing Operator:", intOptional ?? 0)
// this statement will produce 0 since intOptional is nil

// now there is some criteria about providing the default value
// like for integer based on the post requirement we can provide 0 (for most case) or 1 (for multipication case) as default value
// same goes for float and Double
// like for string we can provide empty string ""
// for boolean it will depend upon the program condition (What are the requirements)

// For user defined types programmer will decide the default value for the Nil-Coalescing Operator


intOptional = 5

// accessing a optional variable with Nil-Coalescing Operator
// Nil-Coalescing Operator checks whether an optional contains a value or not
// if value present then it returns the actual value from optional variable
// But if the value is not present then it returns the default value
print("Accessing optional using Nil-Coalescing Operator:", intOptional ?? 0)
// this statement will produce 5 since intOptional is not nil


// Among all of techniques we learn for accessing value of optional variable
// Nil-Coalescing Operator is both safe and shorter one (except for force unwrapping which is shortest but not safe)
// But main challenge is 
// providing appropriate default value for the optional (which can be a tricky one)