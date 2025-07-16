



// In case of intheritance
// If you want the properties or methods to be inherited
// don't make them private
// internal is the best access modifier for the inter module inheritance

// person protocol
protocol PersonProtocol {
        var name: String { get set }
        var age: Int { get set }
}

class Person: PersonProtocol {
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

// Employee protocol
protocol EmployeeProtocol {
        var wage: Int { get set }
        func displayInfo()
}

// Multiple Inheritance through protcols
// Conforming protocol
// and inheriting class

// while inheriting both class and protocol
// class name must come first
// following code will give compilation error

class Employee: EmployeeProtocol, Person {
        var wage: Int

        init(name: String, age: Int, wage: Int) {
                self.wage = wage
                super.init(name: name, age: age)
        }

        func displayInfo() {
                print("------Teacher------")
                print("Name:", name)
                print("Age:", age)
                print("Wage:", wage)
        }
}

class Teacher: Employee {
        
        var institution: String

        init(name: String, age: Int, wage: Int, institution: String) {
                self.institution = institution
                super.init(name: name, age: age, wage: wage)
        }

        override func displayInfo() {
                print("------Teacher------")
                print("Name:", name)
                print("Age:", age)
                print("Wage:", wage)
                print("Institution:", institution)
        }
}

var imran = Teacher(name: "SHAH MD. IMRAN HOSSAIN", age: 27, wage: 20000, institution: "Kennesaw State University")
imran.displayInfo()