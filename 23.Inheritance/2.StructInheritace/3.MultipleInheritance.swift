
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

// Employee protocol
protocol Employee {
        var wage: Int { get set }
        func displayInfo()
}

// Multiple Inheritance through protcols
// Conforming multiple protocols
struct Teacher: Person, Employee {
        var name: String
        var age: Int
        var wage: Int
        var institution: String

        init(name: String, age: Int, wage: Int, institution: String) {
                self.name = name
                self.age = age
                self.wage = wage
                self.institution = institution
        }

        func displayInfo() {
                print("------Teacher------")
                print("Name:", name)
                print("Age:", age)
                print("Wage:", wage)
                print("Institution:", institution)
        }
}

var imran = Teacher(name: "SHAH MD. IMRAN HOSSAIN", age: 27, wage: 20000, institution: "Kennesaw State University")
imran.displayInfo()

/*
	This is Multiple Inheritance for struct

        In Hierachical Inheritance
        There will be multiple protocols and one structs which confroms all the protcol
*/