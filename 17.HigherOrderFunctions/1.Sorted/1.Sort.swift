// sort() function is not higher order function
// sorted() is higher order function

// To demonstrate the difference between sort() and sorted() we are starting with sort

// In sort() we use in place sorting algorithm (most probably quick-sort)

var array: [Int] = []

for _ in 0..<10 {
        // using random variables instead of console input
        array.append(Int.random(in: 0...100))
}

print("Unsorted Array:", array)

// sorting the array in ascending order using sort function
array.sort()

print("Array in ascending order:", array)

// shuffle the array elements
array.shuffle()
print("Shuffled Array:", array)

// sorting the array in ascending order using sort function
array.sort()

// reverse the array for decending order
array.reverse()

print("Array in decending order:", array)

// shuffle the array elements
array.shuffle()
print("Shuffled Array:", array)

// sorting the array in decending order using sort function
array.sort(by: >)

print("Array in decending order:", array)