
// 18.1. Write a program that read and display any student's name, roll, and total mark using structure

// in c++
// there are 5 fundamental data types
// 1. int 
// 2. float 
// 3. double
// 4. character
// 5. bool
// besides these, we can also declare user defined data type in c++ using struct and class

// likewise
// in swift
// there are 6 fundamental data types
// 1. Int 
// 2. Float 
// 3. Double
// 4. Character
// 5. String
// 6. Bool
// besides these, we can also declare user defined data type in swift using struct and class

// naming convention
// for struct and class 
// always use camel case naming style
// Student, StudentAddress, CoupleMarriageInfo

// in this struct 
// there is no init method
// so implicit init method is in play
struct Student {
        var name: String
        var roll: Int
        var totalMarks: Double

        // this is the implicit init method (compiler provided init)
        // init(name: String, roll: Int, totalMarks: Double) {
        //         self.name = name
        //         self.roll = roll
        //         self.totalMarks = totalMarks
        // }

        func displayInformation() {
                print("Student Information")
                print("Name:", name)
                print("Roll", roll)
                print("Total Marks", totalMarks)
        }
}

// the following line will give compilation error
// var pritha: Student = Student()

// here
// Student is using implicit constructor
var pritha: Student = Student(name: "", roll: 0, totalMarks: 0.0)
pritha.name = "Pritha Saha"
pritha.roll = 14
pritha.totalMarks = 95.59

pritha.displayInformation()

// here
// Student is using implicit constructor
let imran = Student(name: "SHAH MD IMRAN HOSSAIN", roll: 13, totalMarks: 99.99)
imran.displayInformation()

// the following line will give compilation error
// imran.name = "Shah Md Imran Hossain"
// because when we are declaring an struct variable let(constant)
// all of struct's comoonents will be let(constant) too

imran.displayInformation()


// one funny thing is
// swift also implemented it's fundamental data types as sturcts
// (Int, Float, Double, Character, String, Bool)
// Why is that?
// we will learn it later