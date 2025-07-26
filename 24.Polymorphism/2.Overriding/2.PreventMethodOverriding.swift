



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

        // to prevent method overriding use final keyword
        final func displayInfo() {
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
        // since the super class method displayInfo marked final, it can not be overriden
        // it will show compilation error
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

        When you inherit super class method but super class method implementation don't fulfill your requirement

        You can always provide your own implementation for the inherited method in the sub class, 
        this operation is called as overriding super class method

        When overriding a super class method, don't forget to put "override" keyword before the sub class implementation
        otherwise it will give you compilation error
*/

/*  
        In this code,

        func displayInfo() is the method of Student which is the Super class for SchoolStudent class

        sub class SchoolStudent override func displayInfo() because original displayInfo() unable to fulfill it's requirement
*/

/* 
        method overriding is very simple

        you just need to provide the "override" keyword while providing the new implementation body in the sub class

        otherwise it will give compilation error      
*/

/* 
        final keyword

        final keyword can do lot more than preventing method overriding

        final keyword can prevent a class from inherited by other classes
*/