
// Unless otherwise specified, the default access level is internal

// internal access level means each element is accessible within the current module
// both read and write

// this class has no mention of access level which means it has default access level
// which is implicitly internal
class Box 
{
        // these things are called stored properies
        // these properies have no mention of access level which means it have default access level
        // which is implicitly internal
        var length: Int
        var width: Int
        var height: Int

        // explicit default initializer for class
        // these initializers have no mention of access level which means it have default access level
        // which is implicitly internal
        init() {
                length = 0
                width = 0
                height = 0
        }

        // these initializers have no mention of access level which means it have default access level
        // which is implicitly internal
        init(length: Int, width: Int, height: Int) {
                self.length = length
                self.width = width
                self.height = height
        }
}

// this extension has no mention of access level which means it has default access level
// which is implicitly internal
extension Box {
        // these methods have no mention of access level which means it have default access level
        // which is implicitly internal
        func area() -> Int {
                return length * width
        }

        // these methods have no mention of access level which means it have default access level
        // which is implicitly internal
        func volume() -> Int {
                return length * width * height
        }
}

func displayInfo(of box: Box) {
        // now the following codes will not give compilation error
        // since all the elements accessed here have default access level
        // means we can access them in same module
        // both read and write
        print("Box length: ", box.length)
        print("Box width: ", box.width)
        print("Box height: ", box.height)
        print("Box Area:", box.length * box.width)
        print("Box Volume", box.length * box.width * box.height)
}

var pritha = Box()

print("Area: \(pritha.area()), Volume: \(pritha.volume())")
print("")


// now the following codes will not give compilation error
// since all the elements accessed here have default access level
// means we can access them in same module
// both read and write
pritha.length = 5
pritha.width = 3
pritha.height = 1

print("Area: \(pritha.area()), Volume: \(pritha.volume())")
print("")

pritha.modifyProperties(length: 5, width: 5, height: 5)

displayInfo(of: pritha)
print("")

pritha.modifyProperties(length: 25, width: 15, height: 11)
pritha.displayInfo()