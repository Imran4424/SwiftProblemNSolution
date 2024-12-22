// 1.12. Define a variable that can hold either a value or nil. Print the value of the variable

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

        we can forefully unwrap a optional variable using ! symbol
*/

// we are unwrapping
// now this will provide output - 5
print(intOptional!)


// intAnotherOptional will show now - 5
// now the question is 
// why the following optional variable show actual value without unwrapping
// Answer is
// When we declared intAnotherOptional optional variable, we used ! symbol
// Which creates an unwrap optional during the declaration
// That why it perfroms implicit unwrapping while we are using the value
// So, in this case, we don't need to unwrap it explicitly
print(intAnotherOptional)
// NB: Output can be different based on the compiler


/* 
        Now, the question is why we don't use ! always intead of ?

        Because, when we use ! for declaring optional variable
                 it is expected to have some value at certain point (It some cases which can be risky)
        
        But in case of optionals declared with ! symbol
                value can be present or absent in the variable at any moment (there is no expectation)

        So, it always safe to use ? for optional declaration

        But if we are sure declared optional will have value at some point before using it in program 
        then we can use ! for optional declaration
*/