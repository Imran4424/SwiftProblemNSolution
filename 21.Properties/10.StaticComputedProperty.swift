

/* 
        as we know, static variable works like global variable, it creates it's existence when the code runs
	destroys itself after the program finished

        static variable only belongs to the class, it does not belong to any object

        we can read and write static objects only with class
*/


class University {
        var currentStudents: Int = 35053

        // static property
        static var name: String = ""

        static var totalStudents: Int {
                // this line will show you compilation error
                // cause you can not use a not static property inside static property or function
                // currentStudents = currentStudents + 1
                return currentStudents
        }

        // non-static property
        var founded: Int = 0
}

// create an object of University class
var obj = University()

// assign value to static property
University.name = "University of Rajshahi"
print(University.name)

// assign value to non-static property
obj.founded = 1953
print(obj.founded)

// the following codes will gives compilation error
// in the following codes, we tried to use static variable with class object
// obj.name = "This is a test, if we can access static properties with objects"
// print(obj.name)
