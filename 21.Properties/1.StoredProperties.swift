
/* 
        stored properies are normal variables and constants

        in class

        stored properties need initializers or default values
*/

class Box 
{
        // these things are called stored properies
        var length: Int = 0
        var width: Int = 0
        var height: Int = 0

        // methods
        func Area() -> Int
        {
                return length * width
        }

        // methods
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