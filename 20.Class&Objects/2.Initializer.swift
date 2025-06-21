
// in swift
// there are 6 fundamental data types
// 1. Int 
// 2. Float 
// 3. Double
// 4. Character
// 5. String
// 6. Bool
// besides these, we can also declare user defined data type in swift using struct, enum and class

// struct and enum are value type user defined data type
// class is the reference type user defined data type

class Box 
{
        var length: Int = 0
        var width: Int = 0
        var height: Int = 0

        func Area() -> Int
        {
                return length * width
        }

        func Volume() -> Int
        {
                return length * width * height
        }
}

var redBox: Box = Box()

print("Area: \(redBox.Area()), Volume: \(redBox.Volume())")

redBox.length = 5
redBox.width = 3
redBox.height = 1

print("Area: \(redBox.Area()), Volume: \(redBox.Volume())")

/* 
        swift class needs an initializer, without an initializer the class will generate an error

        but in this case this code working just fine without initializer

        actually here, we are providing some default values within the class for the class member 
        variables(Initializing directly)

        var length: Int = 0
        var width: Int = 0
        var height: Int = 0

        that's why the code is working fine without any initializers
*/