
// 18.7. Write a program and explain the difference between encapsulation and Abstraction

// init overloading is
// there will be multiple init inside any struct or class
// for init overloading
// the init methods will only differentiate with 
// 1. parameter count and 
// 2. parameter type
// 
// this is universal for both struct and class

// overloading is part of Polymorphism
// And Polymorphism is one of the basic principles of Object Oriented Programming (OOP)


// naming convention
// for struct and class 
// always use camel case naming style
// Student, StudentAddress, CoupleMarriageInfo

// in this struct 
// there is a init method
// so implicit init method will not work in this case
// so we gonna declare the implicit method explicitly when we are declaring custom init
// we can call this default init (default init is basically duplication of implicit init)


// Encapsulation can happen in two layers
// first layer is hiding data and code implementation inside a body (struct body, class body, function body)
// and user can not edit any data from outer world

// there is some exceptions in data hiding in encapsulation
// we can easily hide the functions or computed properties with encapsulation
// but we can not hide stored properties with first layer of encapsulation

// to solve this we need second layer of encapsulation which is also known as access control
// we will learn about it next
struct Student {
        // stored properties
        var name: String
        var roll: Int
        var totalMarks: Double

        // first init with no parameters
        init() {
            name = ""
            roll = 0
            totalMarks = 0.0
        }

        // second init with one parameters
        init(name: String) {
                self.name = name
                roll = 0
                totalMarks = 0.0
        }

        // third init with two parameters
        init(name: String, roll: Int) {
                self.name = name
                self.roll = roll
                totalMarks = 0.0
        }

        // fourth init with two parameters but different types than third one
        init(roll: Int, totalMarks: Double) {
                name = ""
                self.roll = roll
                self.totalMarks = totalMarks
        }

        // fifth init with three parameters
        // default init
        init(name: String, roll: Int, totalMarks: Double) {
                self.name = name
                self.roll = roll
                self.totalMarks = totalMarks
        }

        // for updating properties using method
        // use mutating keyword before struct method with which we are updating the stored properties
        mutating func updateMarks(totalMarks: Double) {
            self.totalMarks = totalMarks
        }

        func displayInformation() {
                print("Student Information")
                print("Name:", name)
                print("Roll", roll)
                print("Total Marks", totalMarks)
        }
}

var pritha: Student = Student()
// for example
// we are editing the stored properties directly below
pritha.name = "Pritha Saha"
pritha.roll = 14
pritha.totalMarks = 95.59

// we are using abstraction
// we are calling a method display information
// but we don't know how display information method works
// we just use it for our purposes
pritha.displayInformation()

// the following statement will not give you compilation error anymore since mutating keyword applied
pritha.updateMarks(totalMarks: 97.79)

pritha.displayInformation()

// Encapsulation
// What is Encapsulation?
// Encapsulation is Data Hiding

// Abstraction
// What is abstraction?
// Abstraction is implementation hiding


// for detail understanding the difference between Encapsulation and Abstraction
// go to the following link
// https://github.com/Imran4424/C-Plus-Plus-Object-Oriented/blob/master/AbstractionVsEncapsulation.cpp