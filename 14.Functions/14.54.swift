// 14.54. Demonstrate multiple return type in swift

func compute(number: Int) -> (Int, Int, Int) {

        let square = number * number

        let cube = square * number

        // returning three values
        // given number
        // squre of given number
        // cube of given number
        return (number, square, cube)
}

var result = compute(number: 5)

print("Number:", result.0)
print("Square:", result.1)
print("Cube:", result.2)