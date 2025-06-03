
// 18.1. Write a program that read and display any student's name, roll, and total mark using structure

struct Student {
        var name: String
        var roll: Int
        var totalMarks: Double

        func displayInformation() {
                print("Student Information")
                print("Name:", name)
                print("Roll", roll)
                print("Total Marks", totalMarks)
        }
}

var pritha: Student = Student(name: "", roll: 0, totalMarks: 0.0)
pritha.name = "Pritha Saha"
pritha.roll = 14
pritha.totalMarks = 95.59

pritha.displayInformation()

let imran = Student(name: "SHAH MD IMRAN HOSSAIN", roll: 13, totalMarks: 99.99)
imran.displayInformation()

// the following line will give compilation error
// imran.name = "Shah Md Imran Hossain"
imran.displayInformation()