


class Person {
        var name: String
        var age: Int

        init(name: String, age: Int) {
                // self keyword is for indicating object address
                // self.name indicates the object property
                // name indicates the passed parameter of init
                // same goes for age
                self.name = name
                self.age = age
        }
}

// here
// Student is working as sub class for Person
class Student: Person {
        var studentID: Int
        var institution: String

        init(name: String, age: Int, studentID: Int, institution: String) {
                self.studentID = studentID
                self.institution = institution
                super.init(name: name, age: age)
        }

        func displayInfo() {
                print("------Student------")
                print("Name:", name)
                print("Age:", age)
                print("Student ID:", studentID)
                print("Institution:", institution)
        }
}

// here
// Student is working as super class for SchoolStudent
class SchoolStudent: Student {
        var currentLevelGrade: String

        init(name: String, age: Int, studentID: Int, institution: String, currentLevelGrade: String) {
                self.currentLevelGrade = currentLevelGrade
                // super always call the immediate super class properties and methods
                super.init(name: name, age: age, studentID: studentID, institution: institution)
        }

        // this is called method overriding
        // this is part of polymorphism
        // which is a fundamental OOP concept
        override func displayInfo() {
                print("------School Student------")
                print("Name:", name)
                print("Age:", age)
                print("Student ID:", studentID)
                print("Institution:", institution)
                print("Current Grade Level:", currentLevelGrade)
        }
}

var pritha = Student(name: "Pritha Saha", age: 20, studentID: 1917, institution: "Mac Masters")
pritha.displayInfo()

var sazim = SchoolStudent(
        name: "Khondokar Sazim Mahmud", 
        age: 15, 
        studentID: 33, 
        institution: "Cantonment Public School and College, Rangpur", 
        currentLevelGrade: "Tenth Grade"
)

sazim.displayInfo()

/*  
        Method Overiding is pretty simple

        When you inherit super class method but super class method implementation don't fulfill

*/