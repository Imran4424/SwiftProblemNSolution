
// polymorphism 

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
pritha.name = "Pritha Saha"
pritha.roll = 14
pritha.totalMarks = 95.59

pritha.displayInformation()

pritha.updateMarks(totalMarks: 97.79)

pritha.displayInformation()


// one funny thing is
// swift also implemented it's fundamental data types as sturcts
// (Int, Float, Double, Character, String, Bool)
// Why is that?
// we will learn it later