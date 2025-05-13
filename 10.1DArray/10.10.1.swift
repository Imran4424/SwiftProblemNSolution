// 10.10. Write a program that read and sort an array in descending order

var array: [Int] = []

for _ in 0..<10 {
    // using random variables instead of console input
    array.append(Int.random(in: 0...100))
}

print("Unsorted Array:", array)

// sorting the array in decending order using sort function
array.sort(by: >)

print("Array in decending order:", array)

