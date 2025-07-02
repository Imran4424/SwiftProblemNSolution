
// open access control
// just like public
// open marked elements are also acessible from anywhere
// even from another module or another framework

// plus
// for interitance cases
// open class, struct, enum and protocol
// can be inherited by another module or another framework

// open methods can be overridden by another module or another framework
// in terms polymorphism

// these plus two conditions are not applicable for publi access control
// these two differences set aparts public from open

// explicitly open
open class Box 
{
        // these things are called stored properies
        // these are implicitly open
        // because the outer code block is open
        var length: Int
        var width: Int
        var height: Int

        // explicit default initializer for class
        // these are implicitly open
        // because the outer code block is open
        init() {
                length = 0
                width = 0
                height = 0
        }

        // these are implicitly open
        // because the outer code block is open
        init(length: Int, width: Int, height: Int) {
                self.length = length
                self.width = width
                self.height = height
        }
}

// extension can not be open
// specify the extension access control as public
// then make it's properties and methods open if you want to make them open
public extension Box {
        // if we don't make it explicitly open
        // it will behave like public like since the extension is public
        // explicitly open
        open func area() -> Int {
                return length * width
        }

        // if we don't make it explicitly open
        // it will behave like public like since the extension is public
        // explicitly open
        open func volume() -> Int {
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