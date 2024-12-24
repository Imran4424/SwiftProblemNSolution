// 1.13. Demonstrate optional binding in Swift using guard let

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

/*
        We already learned what is optional binding using if let
        
        In this code we gonna learn optional binding using guard let
 
        Also learn the differences between if let and guard let
*/

// In if let/var situation
// we can not use the unwrapped optional values outside if block
// but there can be need to use the unwrapped optional values ouside the if block
// if that case guard let/var comes to rescue


// only issue is guard let mostly used inside function with breaking condition return
// we can also use it inside loop with break or continue
// we can also use it inside global space using throw or Fatal error

// throwing used for error handling
// but we do not know that yet


// so let's use FatalError
// which gonna stop the code run if it finds nil
// fatalError() is a function used to immediately terminate the program and generate crash

// since we are using guard let in global space
// and the goal is to learn the syntax
// we can do it for now

// binding optionals using guard let
guard let intValue = intOptional else {
    fatalError("intOptional is nil")
} // now unwrapped intValue is available in below lines

print("Optional Binding - ", intValue)


guard let intAnotherValue = intAnotherOptional else {
    fatalError("intAnotherOptional is nil")
} // now unwrapped intAnotherValue is available in below lines

print("Optional Binding - ", intAnotherValue)


// We can use bind multiple optionals at a time
// this is called multiple optional binding
// we need to use comma(,) for multiple optional binding
guard let intValueMulti = intOptional, let intAnotherValueMulti = intAnotherOptional else {
    fatalError("intOptional or intAnotherOptional is nil")
} // now unwrapped intValueMulti and  is intAnotherValueMulti available in below lines

print("Multiple optional binding")
print("Optional Binding - ", intValueMulti)
print("Optional Binding - ", intAnotherValueMulti)


// there's an update of Swift 5.*
// now we can use following syntax for optional binding
// we don't need to introduce new variables
guard let intOptional, let intAnotherOptional else {
    fatalError("intOptional or intAnotherOptional is nil")
} // now unwrapped intOptional and  is intAnotherOptional available in below lines

print("Multiple optional binding with updated syntax")
print("Optional Binding - ", intOptional)
print("Optional Binding - ", intAnotherOptional)
