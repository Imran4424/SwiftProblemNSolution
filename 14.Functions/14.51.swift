// 14.51. Demonstrate the inout behaviour of function parameters in swift

func changeValue(x: inout Int, y: inout Int) {
        // the following line will not give compilation error
        // why?
        // cause inout keyword makes the parameter variable
        x = 5

        // the following line will not give compilation error
        // why?
        // cause inout keyword makes the parameter variable
        y = 3

        return x + y
}



let imran = 0

let pritha = 0


let sakib = addition(x: imran, y: pritha)

print("Sum of the entered numbers is", sakib)