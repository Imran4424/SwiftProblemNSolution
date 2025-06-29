
class Box 
{
        // these things are called stored properies
        private(set) var length: Int
        private(set) var width: Int
        private(set) var height: Int

        // default initializer for class
        init() {
                length = 0
                width = 0
                height = 0
        }

        init(length: Int, width: Int, height: Int) {
                self.length = length
                self.width = width
                self.height = height
        }

        // setters for length
        func setLength(length: Int) {
                self.length = length
        }

        // getters for length
        func getLength() -> Int {
                return length
        }

        // setters for width
        func setWidth(width: Int) {
                self.width = width
        }

        // getters for width
        func getWidth() -> Int {
                return width
        }

        // setters for height
        func setHeight(height: Int) {
                self.height = height
        }

        // getters for height
        func getHeight() -> Int {
                return height
        }
}

extension Box {
        func area() -> Int {
                return length * width
        }

        func volume() -> Int {
                return length * width * height
        }
}

func displayInfo(of box: Box) {
        // now the following codes will not give compilation error
        // since all the elements accessed here is private(set)
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
// since all the elements accessed here is private
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