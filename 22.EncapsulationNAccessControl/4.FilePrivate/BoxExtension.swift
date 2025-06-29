// extension not in same source file can not access fileprivate elements
// this extension is not in the same source file as defined type
extension Box {
        func modifyProperties(length: Int, width: Int, height: Int) {
                // the following codes will give compilation error 
                // because all the elements accessed here is fileprivate
                // although this is the class extension and we should able to access the fileprivate values
                // but since this extension is not in the same file as the defined type
                // we can not access them
                // self.length = length
                // self.width = width
                // self.height = height

                setLength(length: length)
                setWidth(width: width)
                setHeight(height: height)
        }

        func displayInfo() {
                // the following codes will give compilation error 
                // because all the elements accessed here is fileprivate
                // although this is the class extension and we should able to access the fileprivate values
                // but since this extension is not in the same file as the defined type
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