
// person protocol
protocol Person {
        var name: String { get set }
        var age: Int { get set }
}

// sub class 1
class Student: Person {
        var name: String
        var age: Int
        var studentID: Int
        var institution: String

        init(name: String, age: Int, studentID: Int, institution: String) {
                self.name = name
                self.age = age
                self.studentID = studentID
                self.institution = institution
        }

        func displayInfo() {
                print("------Student------")
                print("Name:", name)
                print("Age:", age)
                print("Student ID:", studentID)
                print("Institution:", institution)
                print()
        }
}

// sub class 2
class Engineer: Person {
        var name: String
        var age: Int
        var department: String

        init(name: String, age: Int, department: String) {
                self.name = name
                self.age = age
                self.department = department
        }

        func displayInfo() {
                print("------Engineer------")
                print("Name:", name)
                print("Age:", age)
                print("Department:", department)
                print()
        }
}

// sub class 3
class Doctor: Person {
        var name: String
        var age: Int
        var speciality: String

        init(name: String, age: Int, speciality: String) {
                self.name = name
                self.age = age
                self.speciality = speciality
        }

        func displayInfo() {
                print("------Doctor------")
                print("Name:", name)
                print("Age:", age)
                print("Speciality:", speciality)
                print()
        }
}

var pritha = Student(name: "Pritha Saha", age: 20, studentID: 1917, institution: "Mac Masters")
pritha.displayInfo()

var imran = Engineer(name: "Shah Md. Imran Hossain", age: 27, department: "Computer Science")
imran.displayInfo()

var soudha = Doctor(name: "Shira Jahan Soudha", age: 27, speciality: "Endocrinology & Metabolism")
soudha.displayInfo()

/*
	This is Hierachical Inheritance for struct

        In Hierachical Inheritance
        There will be one protocol and multiple structs which confrom the protcol
*/

/*  
        In this Hierachical Inheritance
        There is one protocol and three structs

        Person - super class

        Student - sub class one
        Engineer - sub class two
        Doctor - sub class three
*/