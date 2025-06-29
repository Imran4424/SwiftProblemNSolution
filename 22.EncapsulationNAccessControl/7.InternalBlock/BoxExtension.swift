
// explicitly internal
internal extension Box {
        // these are implicitly internal
        // because the outer code block is internal
        func modifyProperties(length: Int, width: Int, height: Int) {
                self.length = length
                self.width = width
                self.height = height
        }

        // these are implicitly internal
        // because the outer code block is internal
        func displayInfo() {
                print("Box length:", length)
                print("Box width:", width)
                print("Box height:", height)
                print("Box Area:", length * width)
                print("Box Volume", length * width * height)
        }
}