// 14.51. Demonstrate the inout behaviour of function parameters in swift

func changeValue(x: inout Int, y: inout Int) {
        // the following line will not give compilation error
        // why?
        // cause inout keyword makes the parameter reference type
        x = 5

        // the following line will not give compilation error
        // why?
        // cause inout keyword makes the parameter reference type
        y = 3
}



let imran = 0
let pritha = 0

// the following line will give compilation error
// we can not send constant(immutable) variable as inout function parameter because that value may change
changeValue(x: imran, y: pritha)

print("Sum of the entered numbers is", imran + pritha)
