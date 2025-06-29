
extension Box {
        func modifyProperties(length: Int, width: Int, height: Int) {
                
        }

        func displayInfo() {
                // the following codes will give compilation error 
                // since all the elements accessed here is private
                // although this is the class extension and we should able to access the private values
                // but this extension is not in the same file as the defined type
                print("Box length: ", length)
                print("Box width: ", width)
                print("Box height: ", height)
        }
}