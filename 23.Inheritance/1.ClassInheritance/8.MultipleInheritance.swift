
// In case of intheritance
// If you want the properties or methods to be inherited
// don't make them private
// internal is the best access modifier for the inter module inheritance

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