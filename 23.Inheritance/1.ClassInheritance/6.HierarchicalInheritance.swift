
// In case of intheritance
// If you want the properties or methods to be inherited
// don't make them private
// internal is the best access modifier for the inter module inheritance

// Super class
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

// sub class 1
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
                print()
        }
}

// sub class 2
class Engineer: Person {
        var department: String

        init(name: String, age: Int, department: String) {
                self.department = department
                super.init(name: name, age: age)
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
        var speciality: String

        init(name: String, age: Int, speciality: String) {
                self.speciality = speciality
                super.init(name: name, age: age)
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
	This is Hierachical Inheritance

        In Hierachical Inheritance
        There will be one super class and multiple sub classes
*/

/*  
        In this Hierachical Inheritance
        There is one super class and three sub classes
*/