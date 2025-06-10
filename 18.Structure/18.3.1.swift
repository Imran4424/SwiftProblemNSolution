
// 18.3. Write a program that shows the functionality of multiple constructor(init) in swift

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

        init() {
            name = ""
            roll = 0
            totalMarks = 0.0
        }

        // default init
        init(name: String, roll: Int, totalMarks: Double) {
                self.name = name
                self.roll = roll
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