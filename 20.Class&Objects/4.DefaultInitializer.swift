
// A class is considered as a blueprint of objects.

// let's consider an example
// Car model is - Hyundai - Venue2023
// let's think this car is an object

// The car company Hyundai defined a class called Venue2023
// and produce lots of cars of same model with the class defination
// with some properties changes like colors, windshield type, type type etc

// from that we can understand that
// class is unique and it has only one declaration

// objects of that class can be infinite

// class is the logical definitions of objects (it has no physical existence)

// objects are the physical implementations of class logics

// default initializer for class

class Box 
{
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