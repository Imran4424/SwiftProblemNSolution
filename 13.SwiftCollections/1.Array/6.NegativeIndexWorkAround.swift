// Demonstrate the workaround of accidental use of negative index in swift

var array: [Int] = [1, 2, 3, 4, 5, 6]

print(array)

// accessing array elements with index
// like c++, in swift array index start with 0

print(array[1])

let index = -2

// now, let's access a negative index
// print(array[index])
// what will happen
// the app will crush
// this will show fatal error

// to avoid crushing we can use a conditional logic

if index >= 0 {
        print(array[index])
} else {
        print("provided index is negative")
}