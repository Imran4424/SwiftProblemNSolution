
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
class Teacher: Person, Employee {
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
        A protocol is a special type which defines the blueprint of properties, methods and other requirements 
        that suit a particular task or piece of functionality.

        The protocol can then be adopted by a class, structure, or enumeration to provide an actual implementation
        of those requirements. Any type that satisfies the requirements of a protocol is said to conform to that protocol.

        In a protocol, mostly we gonna see the defination of properties and methods. Properties will only have the 
        type definition not any particular values and Methods will only have the deifinition (blueprint) not the body.
*/