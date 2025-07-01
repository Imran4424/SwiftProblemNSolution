
// extension not in same source file can not access private elements
// this extension is not in the same source file as defined type

// explicitly public
public extension Box {

        // since the class in public
        // the following code is also public implicity
        // but by using internal explicitly we restrict the access level from public to internal
        // we can do this type of modification from least restrictive to more restrictive access control
        internal func modifyProperties(length: Int, width: Int, height: Int) {
                // the following codes will not give compilation error 
                // since all the elements accessed here is internal(set)
                self.length = length
                self.width = width
                self.height = height
        }

        // since the class in public
        // the following code is also public implicity
        func displayInfo() {
                // the following codes will not give compilation error 
                // since all the elements accessed here is internal(set)
                // print("Box length:", length)
                // print("Box width:", width)
                // print("Box height:", height)
                // print("Box Area:", length * width)
                // print("Box Volume", length * width * height)

                print("Box length:", getLength())
                print("Box width:", getWidth())
                print("Box height:", getHeight())
                print("Box Area:", area())
                print("Box Volume", volume())
        }
}