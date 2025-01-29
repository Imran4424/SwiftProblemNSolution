// 10.1. Write a program that read and display an array

// don't declare an array as constant
// always declare an array as non-constant variable

var array: [Double] = []

// Another way to delare empty array is
// var array = [Double]()
// var array: Double = [Double]()

// promt for entering an Interger
print("Please enter the size of the array:", terminator: " ")

let arraySize = Int(readLine() ?? "0") ?? 0

print("Please enter values of the array")

// when we are not using the iterative value of range
for _ in 1...arraySize {
        let input = Double(readLine() ?? "0") ?? 0
        array.append(input)
}

print("entered values are:", terminator: " ")


for value in array {
        print(value, terminator: " ")
}

print("")
