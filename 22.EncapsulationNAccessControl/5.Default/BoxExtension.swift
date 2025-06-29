
// this extension has no mention of access level which means it has default access level
// which is implicitly internal
extension Box {
        // these methods have no mention of access level which means it have default access level
        // which is implicitly internal
        func modifyProperties(length: Int, width: Int, height: Int) {
                // now the following codes will not give compilation error
                // since all the elements accessed here have default access level
                // means we can access them in same module
                // both read and write
                self.length = length
                self.width = width
                self.height = height
        }

        // these methods have no mention of access level which means it have default access level
        // which is implicitly internal
        func displayInfo() {
                /// now the following codes will not give compilation error
                // since all the elements accessed here have default access level
                // means we can access them in same module
                // both read and write
                print("Box length:", length)
                print("Box width:", width)
                print("Box height:", height)
                print("Box Area:", length * width)
                print("Box Volume", length * width * height)
        }
}