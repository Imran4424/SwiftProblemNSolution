
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

class Box 
{
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

print("Area of red box: \(redBox.Area()), Volume: \(redBox.Volume())")

redBox.length = 5
redBox.width = 3
redBox.height = 1

print("Area of red box: \(redBox.Area()), Volume: \(redBox.Volume())")

// this is a reference type declaration
var blueBox = redBox
blueBox.length = 11
blueBox.width = 6
blueBox.height = 4

print("Area of blue box: \(blueBox.Area()), Volume: \(blueBox.Volume())")

// after chaning the blue box properties
// red box properties is also changed since class is a reference type
// and blue box is pointing to red box reference
print("Area of red box: \(redBox.Area()), Volume: \(redBox.Volume())")

// upon creation green box is not depend upon another object
// so changes on green box properties will not affect other objects
var greenBox = Box()
greenBox.length = 7
greenBox.width = 7
greenBox.height = 7

print("Area of green box: \(greenBox.Area()), Volume: \(greenBox.Volume())")

print("Area of blue box: \(blueBox.Area()), Volume: \(blueBox.Volume())")

print("Area of red box: \(redBox.Area()), Volume: \(redBox.Volume())")


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