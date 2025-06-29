
// explicitly open
open extension Box {
        // these are implicitly open
        // because the outer code block is open
        func modifyProperties(length: Int, width: Int, height: Int) {
                self.length = length
                self.width = width
                self.height = height
        }

        // these are implicitly open
        // because the outer code block is open
        func displayInfo() {
                print("Box length:", length)
                print("Box width:", width)
                print("Box height:", height)
                print("Box Area:", length * width)
                print("Box Volume", length * width * height)
        }
}