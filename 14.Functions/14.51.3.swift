// 14.51. Demonstrate the inout behaviour of function parameters in swift

func changeValue(x: inout Int, y: inout Int) {
        // the following line will not give compilation error
        // why?
        // cause inout keyword makes the parameter reference type (C++ pointer)
        x = 5

        // the following line will not give compilation error
        // why?
        // cause inout keyword makes the parameter reference type (C++ pointer)
        y = 3
}



var imran = 0
var pritha = 0

// the following line will not give compilation error
// cause we are sending variable address now as per requirement
changeValue(x: &imran, y: &pritha)

print("Sum of the entered numbers is", imran + pritha)
