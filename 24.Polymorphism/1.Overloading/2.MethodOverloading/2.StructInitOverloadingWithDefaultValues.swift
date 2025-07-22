

// polymorphism
// overloading
// struct init overloading 

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

        // init overloading with default values
        // default values works for parameter count alternative
        init(name: String = "", roll: Int = 0, totalMarks: Double = 0.0) {
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