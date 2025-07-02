
// public access control
// public marked elements are acessible from anywhere
// even from another module or another framework

// but 
// for interitance cases
// public class, struct, enum and protocol
// can not be inherited by another module or another framework

// public methods can not be overridden by another module or another framework
// in terms polymorphism

// these two differences set aparts public from open

// explicitly public
public class Box 
{
        // these things are called stored properies
        // these are implicitly public
        // because the outer code block is public
        var length: Int
        var width: Int
        var height: Int

        // explicit default initializer for class
        // these are implicitly public
        // because the outer code block is public
        init() {
                length = 0
                width = 0
                height = 0
        }

        // these are implicitly public
        // because the outer code block is public
        init(length: Int, width: Int, height: Int) {
                self.length = length
                self.width = width
                self.height = height
        }
}

// explicitly public
public extension Box {
        // these are implicitly public
        // because the outer code block is public
        func area() -> Int {
                return length * width
        }

        // these are implicitly public
        // because the outer code block is public
        func volume() -> Int {
                return length * width * height
        }
}

// below codes are also implicitly internal

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