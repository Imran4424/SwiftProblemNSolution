
// in this series we are gonna learn about struct inheritance
// the persons who have OOP knowledge from other languages like C++, Java
// they can be surprised about hearing the term because other language don't support struct inheritance

// Swift is the first language to bring Protocol Oriented Paradigm
// and
// one of the best features of Protocol Oriented Programming(POP) is
// it enables the inheritance functionality of Any types (not just for classes)
// Class, Struct (structure), Enum (enumeration ) all can use protocol based inheritance


// Person Protocol
protocol Person {
        var name: String {get set}
        var age: Int {get set}
}

// struct that confroms Person protocol
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
        }
}

var pritha = Student(name: "Pritha Saha", age: 20, studentID: 1917, institution: "Mac Masters")
pritha.displayInfo()


/* 
        In case of struct inheritance
        struct does not support other type of inheritance other than protocol based inheritance

        In struct single inheritance

        There will be one base protocol and one struct which confrom the protcol
*/

/*
        struct only supports 

        - single inheritance
        - multiple inheritance
*/