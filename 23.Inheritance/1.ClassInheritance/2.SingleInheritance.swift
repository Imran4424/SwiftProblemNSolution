
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

class Student: Person {
        var studentID: Int
        var institution: String

        // this code will not compile
        // cause we are initializing super properties without making call to the super init
        // before assigning values from sub class init, we must call super init first
        init(name: String, age: Int, studentID: Int, institution: String) {
                // self keyword is for indicating object address
                // self.name indicates the object property
                // name indicates the passed parameter of init
                // same goes for age
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
	single inheritance is really simple 


	in single inheritance pattern there will be one Super class and One Sub Class class
*/