
/* 
        stored properies are normal variables and constants

        in class

        stored properties need initializers or default values
*/

class Box 
{
        // these things are called stored properies
        var length: Int
        var width: Int
        var height: Int

        // default initializer for class
        init()
        {
                length = 0
                width = 0
                height = 0
        }

        func Area() -> Int
        {
                return length * width
        }

        func Volume() -> Int
        {
                return length * width * height
        }
}

var pritha = Box()

print("Area: \(pritha.Area()), Volume: \(pritha.Volume())")

pritha.length = 5
pritha.width = 3
pritha.height = 1


print("Area: \(pritha.Area()), Volume: \(pritha.Volume())")