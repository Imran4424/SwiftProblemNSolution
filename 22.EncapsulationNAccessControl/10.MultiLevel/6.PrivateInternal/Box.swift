
// in this module, we are gonna learn about what happens if we change access level
// from more restrictive to least restrictive



// explicitly private
private class Box 
{
        // since the class is private so by default the all the statements inside this code also will be private
        // but by using internal explicitly, we are trying to lower the access level of properties restriction to internal
        // we can not do this type of modification 
        // from more restrictive to least restrictive access control
        // this will give compilation error
        internal var length: Int
        internal var width: Int
        internal var height: Int

        // but by using internal explicitly, we are trying to lower the access level restriction to internal
        // we can not do this type of modification 
        // from more restrictive to least restrictive access control
        // this will give compilation error
        internal init() {
                length = 0
                width = 0
                height = 0
        }

        // but by using internal explicitly, we are trying to lower the access level restriction to internal
        // we can not do this type of modification 
        // from more restrictive to least restrictive access control
        // this will give compilation error
        internal init(length: Int, width: Int, height: Int) {
                self.length = length
                self.width = width
                self.height = height
        }
}

// the following code will give compilation error
// extension of private class can not be declared as public
// explicitly public
public extension Box {

        // since the class extension in public
        // the following code is also public implicity
        func area() -> Int {
                return length * width
        }

        // since the class extension in public
        // the following code is also public implicity
        func volume() -> Int {
                return length * width * height
        }
}

// the following code will give compilation error 
// function must be declared private or fileprivate because its parameter uses a private type
func displayInfo(of box: Box) {
        // the following codes will not give compilation error 
        // since all the elements accessed here is internal(set)
        print("Box length: ", box.length)
        print("Box width: ", box.width)
        print("Box height: ", box.height)
        print("Box Area:", box.length * box.width)
        print("Box Volume", box.length * box.width * box.height)
}

var pritha = Box()

print("Area: \(pritha.area()), Volume: \(pritha.volume())")
print("")


// the following codes will give compilation error 
pritha.length = 5
pritha.width = 3
pritha.height = 1

print("Area: \(pritha.area()), Volume: \(pritha.volume())")
print("")

displayInfo(of: pritha)
print("")

pritha.modifyProperties(length: 25, width: 15, height: 11)
pritha.displayInfo()