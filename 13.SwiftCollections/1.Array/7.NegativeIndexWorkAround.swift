// Demonstrate the workaround of accidental use of negative index in swift with safe index label

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

print(array[safe: index])

extension Collection {
        // Returns the element at the specified index if it is within bounds, otherwise nil.
        subscript(safe index: Index) -> Element? {
                indices.contains(index) ? self[index] : nil
        }
}

// NB: compile this code with xcode