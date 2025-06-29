
// extension can not be open
// specify the extension access control as public
// then make it's properties and methods open if you want to make them open
public extension Box {
        // explicitly open
        open func modifyProperties(length: Int, width: Int, height: Int) {
                self.length = length
                self.width = width
                self.height = height
        }

        // explicitly open
        open func displayInfo() {
                print("Box length:", length)
                print("Box width:", width)
                print("Box height:", height)
                print("Box Area:", length * width)
                print("Box Volume", length * width * height)
        }
}