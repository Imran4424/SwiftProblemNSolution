
// In case of intheritance
// If you want the properties or methods to be inherited
// don't make them private
// internal is the best access modifier for the inter module inheritance

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

        func displayInfo() {
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
        // we will learn about it in detail later
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
        This is multi-level inheritance

        Here,
        Person is the super class for Student
        Student is the sub class of the Person, but super class for SchoolStudent
        SchoolStudent is the sub class of the Student

        There is an another common term of relationship for multi-level inheritance, Grandparent, parent, child

        Here, in this case
        Person is Parent of Student, Grandparent of SchoolStudent
        Student is Child of Person, Parent of SchoolStudent
        SchoolStudent is child of Student, Grandchild of Person

        Funny right
        Since, multi-level inheritance can go further, this relation term can also further.
        for example: great great grandparent to great great grandchild 
*/

/* 
        As you can see,

        in class level inheritance, even the parent class can have independent object

        Here, 
        pritha is the object of Student class which act as parent of ScholStudent
        sazim is the object of SchoolStudent, which had no child class of Multi-level inheritance

        Even, Person class which had no parent can create objects too
*/

/* 
        init execution order in multi-level inheritance

        to understand this better, let's think about School Student Object

        For creating SchoolStudent object

        1. First call SchoolStudent init() ----->
        2. Initialize SchoolStudent properties
        3. Then call super.init() which is Student init ----->
        4. Initialize Student properties
        5. Then call super.init() which is person init ----->
        6. Initialize Person properties
        7. Return the call to caller which is Student.init() <-----
        8. Return the call to caller which is SchoolStudent.init() <-----
        9. Return the created object to the caller which is SchoolStudent object <-----
*/