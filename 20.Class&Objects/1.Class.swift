
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
        var length: Int
        var width: Int
        var height: Int

        func Area() -> Int
        {
                return length * width
        }

        func Volume() -> Int
        {
                return length * width * height
        }
}

var redBox: Box = Box(length: 0, width: 0, height: 0)

print("Area: \(redBox.Area()), Volume: \(redBox.Volume())")

redBox.length = 5
redBox.width = 3
redBox.height = 1

print("Area: \(redBox.Area()), Volume: \(redBox.Volume())")

/* 
        swift class needs an initializer, without an initializer the class will generate an error
*/

/*
        in case of struct we saw even if we don't provide a initializer

        compiler uses an implicit initializer

        but this is not the case for class
        in simple words class don't have an implicit initializer (implicit init)
*/