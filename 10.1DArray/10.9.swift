// 10.9. Write a program that read and sort an array in ascending order

var array: [Int] = []

for _ in 0..<10 {
    // using random variables instead of console input
    array.append(Int.random(in: 0...100))
}

print("Unsorted Array:", array)

// sorting the array in ascending order using sort function
array.sort()

print("Array in ascending order:", array)
