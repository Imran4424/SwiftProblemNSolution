
// extension not in same source file can not access private elements
// this extension is not in the same source file as defined type

// this class has no mention of access level which means it has default access level
// which is implicitly internal
extension Box {

        // since the class in internal
        // the following code is also internal implicity
        func modifyProperties(length: Int, width: Int, height: Int) {
                // the following codes will give compilation error 
                // since all the elements accessed here is private
                // although this is the class extension and we should able to access the private values
                // but this extension is not in the same file as the defined type
                // we can not access them
                // self.length = length
                // self.width = width
                // self.height = height

                setLength(length: length)
                setWidth(width: width)
                setHeight(height: height)
        }

        // since the class in internal
        // the following code is also internal implicity
        func displayInfo() {
                // the following codes will give compilation error 
                // since all the elements accessed here is private
                // although this is the class extension and we should able to access the private values
                // but this extension is not in the same file as the defined type
                // we can not access them
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