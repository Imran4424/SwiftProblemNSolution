// 1.13. Demonstrate optional binding in Swift

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

// declaring int optional with ?
var intOptional: Int?

// declare int optional with !
var intAnotherOptional: Int!

// right now none of them will have any value
// both of them have nil
print(intOptional)
print(intAnotherOptional)


// now assing values to optional variables
intOptional = 5
intAnotherOptional = 5


// intOptional will show now - Optional(5)
// since this is an optional variable
print(intOptional)


// intAnotherOptional will show now - 5
// but why this is showing 5 and not showing Optional(5) like the other optional variable
// we will get to that later
print(intAnotherOptional)

/*
        As I said earlier, Optionals are actually wrapper of Swift data types (Both fundamentals and user defined)
        
        So, we need to unwrap the optional variables to find the actual value

        we can forefully unwrap a optional variable using ! symbol and we done that in previous code
 
        But forecfully unwraping the optionals can crush the App if the value is nil
*/

/*
        So, what we can do now that can offer 100% safety
 
        The answer is we can use optional binding to unwrap the value safely
*/

if let intValue = intOptional {
    print("Optional Binding - ", intValue)
} // intValue is not available outside if

if let intAnotherValue = intAnotherOptional {
    print("Optional Binding - ", intAnotherValue)
} // intAnotherValue is not available outside if

// We can use bind multiple optionals at a time
// this is called multiple optional binding
// we need to use comma(,) for multiple optional binding
if let intValue = intOptional, let intAnotherValue = intAnotherOptional {
    print("Multiple optional binding")
    print("Optional Binding - ", intValue)
    print("Optional Binding - ", intAnotherValue)
} // intValue and intAnotherValue is not available outside if

// there's an update of Swift 5.*
// now we can use following syntax for optional binding
// we don't need to introduce new variables
if let intOptional, let intAnotherOptional {
    print("Multiple optional binding with updated syntax")
    print("Optional Binding - ", intOptional)
    print("Optional Binding - ", intAnotherOptional)
} // unwrapped intOptional and intAnotherOptional is not available outside if

// what is happening here exactly
// we are introducing new variables
// but here we are using if let like previous case
// as we know let is used for declaring constant variable
// so the logic suggests that variable is introduced implicitly
// just we don't need to know it
// that's why unwrapped value is not available outside if either

// this is solely my analogy
// I can be wrong
// But I think implicit syntax look like this for above syntax
// if let intOptional = self?.intOptional, let intAnotherOptional = self.intAnotherOptional {
// and so on
