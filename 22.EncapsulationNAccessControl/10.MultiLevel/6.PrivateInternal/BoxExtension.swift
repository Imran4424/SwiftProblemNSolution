
// the following code will give compilation error
// extension of private class can not be declared as public
// explicitly public
public extension Box {

        // since the class extension in public
        // the following code is also public implicity
        // but by using internal explicitly we restrict the access level from public to internal
        // we can do this type of modification from least restrictive to more restrictive access control
        internal func modifyProperties(length: Int, width: Int, height: Int) {
                self.length = length
                self.width = width
                self.height = height
        }

        // since the class extension in public
        // the following code is also public implicity
        // but by using internal explicitly we restrict the access level from public to internal
        // we can do this type of modification from least restrictive to more restrictive access control
        internal func displayInfo() {
                print("Box length:", length)
                print("Box width:", width)
                print("Box height:", height)
                print("Box Area:", length * width)
                print("Box Volume", length * width * height)
        }
}