// polymorphism
// method overloading
// based on parameter count
// based on parameter type
// and based on default values

// since this class has no properties
// there's no need to provide any initializers
class Calculator {
        func add(x: Int = 0, y: Int = 0, z: Int = 0) -> Int {
                return x + y + z
        }

        func add(x: Double = 0.0, y: Double = 0.0, z: Double = 0.0) -> Double {
                return x + y + z
        }
}

let cal = Calculator()

print("Sum of two values:", cal.add(x: 5, y: 7))

print("Sum of two values:", cal.add(x: 5.7, y: 7.5))

print("Sum of three values:", cal.add(x: 12, y: 13, z: 15))

print("Sum of three values:", cal.add(x: 12.13, y: 13.15, z: 15.12))


/*  
        difference between function and method

        Function - independent function which is not bind to any other types(Struct or class)

        Methods - dependent functions which are bound to other types like struct or class are called Methods.

        in that sense, init is also special type of method
*/