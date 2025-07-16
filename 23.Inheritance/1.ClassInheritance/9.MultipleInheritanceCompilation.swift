

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

// the following code will give compilation error
// because Teacher class is not properly conforming both protocols
class Teacher: Person, Employee {
        var institution: String

        init(name: String, age: Int, wage: Int, institution: String) {
                self.institution = institution
                // the following codes will give you compilation error
                // because protocol don't have any initializer
                // so we can not call super init
                super.init(name: name, age: age)
                super.init(wage: wage)
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