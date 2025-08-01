
// in this series we are gonna learn about struct inheritance
// the persons who have OOP knowledge from other languages like C++, Java
// they can be surprised about hearing the term because other language don't support struct inheritance

// Swift is the first language to bring Protocol Oriented Paradigm
// and
// one of the best features of Protocol Oriented Programming(POP) is
// it enables the inheritance functionality of Any types (not just for classes)
// Class, Struct (structure), Enum (enumeration ) all can use protocol based inheritance

// person protocol
protocol Person {
        var name: String { get set }
        var age: Int { get set }
}

// struct one
struct Student: Person {
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

// struct two
struct Engineer: Person {
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

// struct three
struct Doctor: Person {
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

        In Hierachical Inheritance for struct
        There will be one protocol and multiple structs which confrom the protcol
*/

/*  
        In this Hierachical Inheritance
        There is one protocol and three structs

        Person - protocol

        Student - struct one
        Engineer - struct two
        Doctor - struct three
*/