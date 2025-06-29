
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
}

extension Box {
        func Area() -> Int {
                return length * width
        }

        func Volume() -> Int {
                return length * width * height
        }
}