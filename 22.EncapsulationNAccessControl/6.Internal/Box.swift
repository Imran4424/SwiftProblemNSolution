
// internal access level means each element is accessible within the current module
// both read and write

// explicitly internal
internal class Box 
{
        // these things are called stored properies
        // explicitly internal
        internal var length: Int
        internal var width: Int
        internal var height: Int

        // explicit default initializer for class
        // explicitly internal
        internal init() {
                length = 0
                width = 0
                height = 0
        }

        // explicitly internal
        internal init(length: Int, width: Int, height: Int) {
                self.length = length
                self.width = width
                self.height = height
        }
}

// explicitly internal
internal extension Box {
        // explicitly internal
        internal func area() -> Int {
                return length * width
        }

        // explicitly internal
        internal func volume() -> Int {
                return length * width * height
        }
}

func displayInfo(of box: Box) {
        print("Box length: ", box.length)
        print("Box width: ", box.width)
        print("Box height: ", box.height)
        print("Box Area:", box.length * box.width)
        print("Box Volume", box.length * box.width * box.height)
}

var pritha = Box()

print("Area: \(pritha.area()), Volume: \(pritha.volume())")
print("")

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