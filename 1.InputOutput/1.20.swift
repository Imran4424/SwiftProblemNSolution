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

*/