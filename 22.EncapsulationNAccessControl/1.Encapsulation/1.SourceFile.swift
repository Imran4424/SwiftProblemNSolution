
// Swift’s access control model is based on the concept of modules, source files, and packages.

// A source file is a single Swift source code file within a module (in effect, a single file within an app or framework). 
// Although it’s common to define individual types in separate source files, 
// 
// a single source file can contain definitions for multiple types, functions, and so on.

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


// it is recomended not to write more than 2000 lines of code in a single source file