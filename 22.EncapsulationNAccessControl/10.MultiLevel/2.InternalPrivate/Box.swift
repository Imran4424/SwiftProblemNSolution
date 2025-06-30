
// in this module, we are gonna learn about private multi level acess control in a single file or module

// when a class is in internal access level 
//  that means all of its components are also internal implicitly

// explicitly internal
internal class Box 
{
        // explicitly private
        // since the class is internal so by default the following would have been internal
        // but by using private explicitly, we restrict the access level of properties to private
        // we can do this type of modification from least restrictive to more restrictive access control
        private var length: Int
        private var width: Int
        private var height: Int

        // default initializer for class
        // since the class in internal
        // the following code is also internal implicity
        init() {
                length = 0
                width = 0
                height = 0
        }

        // since the class in internal
        // the following code is also internal implicity
        init(length: Int, width: Int, height: Int) {
                self.length = length
                self.width = width
                self.height = height
        }

        // setters for length
        // since the class in internal
        // the following code is also internal implicity
        func setLength(length: Int) {
                self.length = length
        }

        // getters for length
        // since the class in internal
        // the following code is also internal implicity
        func getLength() -> Int {
                return length
        }

        // setters for width
        // since the class in internal
        // the following code is also internal implicity
        func setWidth(width: Int) {
                self.width = width
        }

        // getters for width
        // since the class in internal
        // the following code is also internal implicity
        func getWidth() -> Int {
                return width
        }

        // setters for height
        // since the class in internal
        // the following code is also internal implicity
        func setHeight(height: Int) {
                self.height = height
        }

        // getters for height
        // since the class in internal
        // the following code is also internal implicity
        func getHeight() -> Int {
                return height
        }
}

// extension in same source file can access private elements
// this extension is in the same source file as defined type

// this class has no mention of access level which means it has default access level
// which is implicitly internal
extension Box {

        // since the class in internal
        // the following code is also internal implicity
        func area() -> Int {
                return length * width
        }

        // since the class in internal
        // the following code is also internal implicity
        func volume() -> Int {
                return length * width * height
        }
}

func displayInfo(of box: Box) {
        // the following codes will give compilation error 
        // since all the elements accessed here is private
        // print("Box length: ", box.length)
        // print("Box width: ", box.width)
        // print("Box height: ", box.height)
        // print("Box Area:", box.length * box.width)
        // print("Box Volume", box.length * box.width * box.height)

        print("Box length: ", box.getLength())
        print("Box width: ", box.getWidth())
        print("Box height: ", box.getHeight())
        print("Box Area:", box.area())
        print("Box Volume", box.volume())
}

var pritha = Box()

print("Area: \(pritha.area()), Volume: \(pritha.volume())")
print("")


// the following codes will give compilation error 
// since all the elements accessed here are private
// pritha.length = 5
// pritha.width = 3
// pritha.height = 1

print("Area: \(pritha.area()), Volume: \(pritha.volume())")
print("")

pritha.setLength(length: 5)
pritha.setWidth(width: 5)
pritha.setHeight(height: 5)

displayInfo(of: pritha)
print("")

pritha.modifyProperties(length: 25, width: 15, height: 11)
pritha.displayInfo()