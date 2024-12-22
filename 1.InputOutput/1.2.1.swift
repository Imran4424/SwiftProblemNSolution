// 1.2.1. Variable declaration in Swift (Both constant and non constant)

/* 
        For swift variable declaration there is two term
                1. let - declaring constant variable (value will not changed)
                2. var - declaring a non-constant variable / variable (value will change)
*/


// we are delaring a Int type constant variable
// let variableName: Variable Type
let year: Int

// we are delaring a Int type variable
// var variableName: Variable Type
var mark: Int

// Initialization
// let variableName: Variable Type = value
let birthYear: Int = 2001
// following code will generate error
// birthYear = 1994

// Initialization
// var variableName: Variable Type = value
var prithaAge: Int = 23

// we can change the value
// it will not show any error
// because this is a variable
prithaAge = 24


// Now the suprise
// If you initialize a variable during theri declaration
// You don't need to put data type explicitly

// this will be a Int type variable based on the initialization value
// we can make this constant by using let
// this is a python like feature
var englishMarks = 85

// this will be a Float or Double type variable based on the initialization value
// we can make this constant by using let
// this is a python like feature
var mathMarks = 99.98

/* 
        So, you don't need to mention the variable types explicitly while delaring a variable by initializing it

*/


/* 
        But, It is my recomendation to use explicit variable type declaration

        Because, 
        Complier can assign a different variable type based on the value which we can not know before hand.

        like below code can assign this variable to Float or Double
        var mathMarks = 99.98

        But we don't know which one exactly (We can only assume it will be swift (Most cases based on the compiler))

        This will be more tricky when we are developing apps for Apple platforms
        Because then we will have more data types than the fundamental one
*/

let pi: Float = 3.1416
var weight: Float = 63

let piDouble: Double = 3.1416
var weightDouble: Double = 63

let prithaFirstCharater: Character = "P"
// following code will give you error
// let prithaFirstCharater: Character = "Pr"
var imranFirstCharacter: Character = "I"

var examResult: Bool = false
examResult = true

let myName: String = "My name is Imran"
var myPassion: String = "I love programming"