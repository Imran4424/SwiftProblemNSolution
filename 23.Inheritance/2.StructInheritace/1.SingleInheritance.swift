
// in this series we are gonna learn about struct inheritance
// the persons who have OOP knowledge from other languages like C++, Java
// they can be surprised about hearing the term because other language don't support struct inheritance

// Swift is the first language to bring Protocol Oriented Paradigm
// and
// one of the best features of Protocol Oriented Programming(POP) is
// it enables the inheritance functionality of Any types (not just for classes)
// Class, Struct (structure), Enum (enumeration ) all can use protocol based inheritance


// Following OOP principles
// we are trying to implement Single Inheritance in struct (similar to class manner)

// Super struct
struct Person {
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

// sub struct
// but the following code will give compilation error
// because struct only supports protocol based inheritance
// so, inheritance from other than protocol (such as struct or class(which is super unlikely since they are not same type)) 
// will result in compilation error
//
// error message: inheritance from non-protocol type 'Person'
struct Student: Person {
        var studentID: Int
        var institution: String

        init(name: String, age: Int, studentID: Int, institution: String) {
                self.studentID = studentID
                self.institution = institution
                // super is related to class inheritance
                // so it will also give compilation error
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

var pritha = Student(name: "Pritha Saha", age: 20, studentID: 1917, institution: "Mac Masters")
pritha.displayInfo()


/* 
        In case of struct inheritance

        struct does not support 
*/