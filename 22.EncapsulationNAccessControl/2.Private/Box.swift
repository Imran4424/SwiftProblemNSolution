
class Box 
{
        // these things are called stored properies
        private var length: Int
        private var width: Int
        private var height: Int

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

        func setLength(length: Int) {
                self.length = length
        }

        func getLength() -> Int {
                return length
        }

        func setWidth(width: Int) {
                self.width = width
        }

        func getWidth() -> Int {
                return width
        }

        func setHeight(height: Int) {
                self.height = height
        }

        func getHeight() -> Int {
                return height
        }
}

extension Box {
        func Area() -> Int {
                return length * width
        }

        func Volume() -> Int {
                return length * width * height
        }
}

func displayInfo(of box: Box) {
        // the following codes will give compilation error 
        // since all the elements accessed here is private
        // print("Box length: ", box.length)
        // print("Box width: ", box.width)
        // print("Box height: ", box.height)
}

var pritha = Box()

print("Area: \(pritha.Area()), Volume: \(pritha.Volume())")

// the following codes will give compilation error 
// since all the elements accessed here is private
// pritha.length = 5
// pritha.width = 3
// pritha.height = 1

pritha.setLength(length: 5)
pritha.setWidth(width: 5)
pritha.setHeight(height: 5)

displayInfo(of: pritha)

print("Area: \(pritha.Area()), Volume: \(pritha.Volume())")

pritha.modifyProperties(length: 25, width: 15, height: 11)
pritha.displayInfo()

print("Area: \(pritha.Area()), Volume: \(pritha.Volume())")