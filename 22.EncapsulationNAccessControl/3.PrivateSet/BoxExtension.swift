
extension Box {
        func modifyProperties(length: Int, width: Int, height: Int) {
                // the following codes will give compilation error 
                // since all the elements accessed here is private
                // although this is the class extension and we should able to access the private values
                // but this extension is not in the same file as the defined type
                // self.length = length
                // self.width = width
                // self.height = height

                setLength(length: length)
                setWidth(width: width)
                setHeight(height: height)
        }

        func displayInfo() {
                // now the following codes will not give compilation error 
                // since all the elements accessed here is private(set)
                // means we can set them (write them or modify them)
                // but we can access them
                print("Box length:", length)
                print("Box width:", width)
                print("Box height:", height)
                print("Box Area:", length * width)
                print("Box Volume", length * width * height)
        }
}