

/* 
N.B: 
        this code runs after satisfying lots of restrictions and it is not usable in real world
        result can vary compiler to compiler
*/


// explicitly private
private class Box 
{

        internal var length: Int
        internal var width: Int
        internal var height: Int

        internal init() {
                length = 0
                width = 0
                height = 0
        }

        internal init(length: Int, width: Int, height: Int) {
                self.length = length
                self.width = width
                self.height = height
        }
}

private extension Box {
        func area() -> Int {
                return length * width
        }

        func volume() -> Int {
                return length * width * height
        }
}

private func displayInfo(of box: Box) {
        print("Box length: ", box.length)
        print("Box width: ", box.width)
        print("Box height: ", box.height)
        print("Box Area:", box.length * box.width)
        print("Box Volume", box.length * box.width * box.height)
}

private var pritha = Box()

print("Area: \(pritha.area()), Volume: \(pritha.volume())")
print("")

pritha.length = 5
pritha.width = 3
pritha.height = 2

print("Area: \(pritha.area()), Volume: \(pritha.volume())")
print("")

displayInfo(of: pritha)
print("")